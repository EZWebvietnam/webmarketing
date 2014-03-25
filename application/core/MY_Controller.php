<?php

class MY_Controller extends CI_Controller
{
    protected $data;
    public function __construct()
    {
        parent::__construct();
        $this->data = array();

    }
    public function list_cate()
    {
        $this->load->model('catemodel');
        $this->data['list_cate']=$this->catemodel->load_cate();
    }
    public function info_company()
    {
        $this->load->model('faq');
        $this->data['info_company'] = $this->faq->info_com();
    }
}
?>

