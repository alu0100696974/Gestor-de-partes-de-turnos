<?php
    class InvoicesController extends AppController {
		   public $components = array('RequestHandler');
        //in your Invoices controller you could set additional configs, or override the global ones:
        public function view($id = null) {
            $this->Invoice->id = $id;
            /*if (!$this->Invoice->exists()) {
                throw new NotFoundException(__('Invalid invoice'));
            }*/
            $this->pdfConfig = array(
                'orientation' => 'portrait',
				'download'=>true,
                'filename' => 'Invoice_' . $id
            );
           // $this->set('invoice', $this->Invoice->read(null, $id));
        }
		
		
    }
?>