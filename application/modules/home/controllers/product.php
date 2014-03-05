<?php 
class Product extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        parent::list_cate();
        $this->load->model('productmodel');
    }
    public function detail($id = null)
    {
        $id = explode('-',$id);
        $id = $id[0];
        if(empty($id))
        {
            show_404();
            exit;
        }
        if(!is_numeric($id))
        {
            show_404();
            exit;
        }
        $detail_product = $this->productmodel->product_detail($id);
        if(empty($detail_product))
        {
            show_404();
            exit;
        }
        $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->data['product_detail']=$detail_product;
        $this->data['main_content']='product/detail_product';
        $this->load->view('home/layout_detail',$this->data);
    }
    public function list_product($id)
    {
        $id = explode('-',$id);
        $id = $id[0];
        if(empty($id))
        {
            show_404();
            exit;
        }
        if(!is_numeric($id))
        {
            show_404();
            exit;
        }
        $this->load->model('catemodel');
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(3);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->productmodel->count_list_product_id_cate($id);
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->productmodel->list_product_id_cate($id,$config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->data['cate_detail']=$this->catemodel->cate_detail($id);
        //$this->data['main_content']='product/detail_product';
        $this->load->view('home/layout_list',$this->data);
    }
    public function add_to_cart()
    {
        print_r($this->input->post());exit;
    }
}
?>