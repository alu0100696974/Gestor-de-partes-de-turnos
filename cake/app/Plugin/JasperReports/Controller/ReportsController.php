<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ReportsController
 *
 * @author Harindra
 */
class ReportsController extends JasperReportsAppController {

    //put your code here
    public $components = array('JasperReports.JasperClient');

    public function index() {

    }

    public function runReport(/* $reportURI */) {
        $this->layout = 'lec_in_charge';
        $reportURI = "/reports/samples/Department";
        $this->set('currentUri', $reportURI);
        $RU = $this->JasperClient->runReport($reportURI);
        $this->set('reportUnit', $RU);
    }

    public function executeReport() {
        ob_start();
        $pdf = $this->JasperClient->executeReport();
        $this->set('pdf', $pdf);
        ob_flush();
    }

}
?>
