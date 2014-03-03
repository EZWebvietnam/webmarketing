<?php 
class Productctv extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('productctvmodel');
    }
    public function index()
    {
        $this->load->view('ctv/index_layout_ctv');
    }
}
?>