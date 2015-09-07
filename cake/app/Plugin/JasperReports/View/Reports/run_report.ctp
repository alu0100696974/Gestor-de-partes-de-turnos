
<form action="executeReport">
    <input type="hidden" name="uri" value="<?php echo $currentUri ?>">
    <?php
    $parametersCount = 0;
    $resources = $reportUnit['resources'];

// Find the datasource uri...
    $dsUri = '';
    for ($i = 0; $i < count($resources); ++$i) {
        $rd = $resources[$i];

        if ($rd['type'] == TYPE_DATASOURCE) {
            $dsUri = $rd['properties'][PROP_REFERENCE_URI]['value'];  //getReferenceUri();
        } else if ($rd['type'] == TYPE_DATASOURCE_JDBC ||
                $rd['type'] == TYPE_DATASOURCE_JNDI ||
                $rd['type'] == TYPE_DATASOURCE_BEAN) {
            $dsUri = $rd['uri'];
        }
    }


    for ($i = 0; $i < count($resources); ++$i) {
        $rd = $resources[$i];

        if ($rd['type'] == TYPE_INPUT_CONTROL) {
            $parametersCount++;
            ?>
            <tr><td><?php echo $rd['label']; ?></td><td>
                    <?php
                    $controlType = $rd['properties'][PROP_INPUTCONTROL_TYPE]['value'];

                    if ($controlType == IC_TYPE_BOOLEAN) {
                        ?>
                        <input type="checkbox" value="true" name="<?php echo "PARAM_" . $rd['name']; ?>">
                        <?php
                    } else if ($controlType == IC_TYPE_SINGLE_VALUE) {
                        ?>
                        <input type="text" name="<?php echo "PARAM_" . $rd['name']; ?>">
                        <?php
                    } else if ($controlType == IC_TYPE_SINGLE_SELECT_LIST_OF_VALUES) {
                        ?>
                        <select name="<?php echo "PARAM_" . $rd['name']; ?>">
                            <?php
                            $listOfValues = array();
                            foreach ($rd['resources'] AS $lov) {
                                if ($lov['type'] == TYPE_LOV) {
                                    $listOfValues = $lov;
                                    break;
                                }
                            }

                            //  LOV->properties { [PROP_LOV]->properties { [0]{name,value}, [1]{name,value}... } }
                            //  name = key
                            //  value = label

                            foreach ($listOfValues['properties'][PROP_LOV]['properties'] AS $lovItem) {
                                ?>
                                <option value="<?php echo htmlspecialchars($lovItem['name']); ?>"><?php echo htmlspecialchars($lovItem['value']); ?></option>
                                <?php
                            }
                            ?>
                        </select>

                        <?php
                    } else if ($controlType == IC_TYPE_SINGLE_SELECT_QUERY) {
                        ?>
                        <select name="<?php echo "PARAM_" . $rd['name']; ?>">
                            <?php
                            // Get the list of entries....

                            $result = ws_get($rd['uri'], array(IC_GET_QUERY_DATA => $dsUri));

                            $rds = getResourceDescriptors($result);
                            $rd = $rds[0];

                            $datarows = $rd['properties'][PROP_QUERY_DATA]['properties'];

                            foreach ($datarows AS $datarow) {
                                $row_value = $datarow['value'];
                                $row_label = "";
                                $k = 0;
                                foreach ($datarow['properties'] AS $datacolumn) {
                                    if ($k > 0)
                                        $row_label .= "   |   ";
                                    $row_label .= $datacolumn['value'];
                                    $k++;
                                }
                                ?>
                                <option value="<?php echo htmlspecialchars($row_value); ?>"><?php echo htmlspecialchars($row_label); ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </td><td><?php echo $rd['description']; ?></td></tr>
                <?php
            }
        }
    }
    ?>
</table>
<br>
Export format: <select name="format">
    <option value="HTML">HTML</option>
    <option value="PDF">PDF</option>
    <option value="XLS">XLS</option>
</select>



<input type="submit" value="Run the report">
</form>
<br>
