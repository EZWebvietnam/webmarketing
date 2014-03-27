<?php
class News extends MY_Controller
{
    public function __construct() {
        parent::__construct();
         parent::list_cate();
         parent::info_company();
         parent::load_clip();
         parent::load_header();
        $this->load->library('session');
        $this->load->model('newshomemodel');
                $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
    }
    public function list_news()
    {
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(3);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->newshomemodel->count_new();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->newshomemodel->list_new($config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->load->model('productmodel');
       $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->load->view('home/layout_list_new',$this->data);
    }
    public function detail($id)
    {
        $this->load->model('productmodel');
        $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        if(empty($id))
        {
            show_404();exit;
        }
        if(!is_numeric($id))
        {
            show_404();
            exit;
        }
        $this->data['detail']=$this->newshomemodel->detail($id);
        if(empty($this->data['detail']))
        {
            show_404();exit;
        }
        $this->data['main_content']='new/detail_new';
        $this->load->view('home/layout_detail',$this->data);
    }
}
?>