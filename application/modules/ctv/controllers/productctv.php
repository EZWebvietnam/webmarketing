<?php 
class Productctv extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->model('productctvmodel');
    }
    public function index()
    {
        $this->load->view('ctv/index_layout_ctv');
    }
    public function ajax_get_product()
    {
        $id_user = $this->session->userdata('user_id');
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        if($this->input->post('page_no'))
        {
        $page = $this->input->post('page_no');
        }
        else
        {
            $page = 1;
        }
        $config['per_page'] = 10;
        $config['total_rows'] = $this->productctvmodel->count_list_product($id_user);
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->productctvmodel->list_product($id_user,$config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list_product_ref']=$array_sv;   
        $this->load->view('ajax_get_product',$this->data);
    }
    public function delete($id)
    {
        $this->productctvmodel->delete($id);
        $array = array('error'=>0,'msg'=>"Xóa thành công");
        echo json_encode($array);
    }
    public function deletes()
    {
       
        $array = $this->input->post('ar_id');
        foreach($array as $k=>$v)
        {
            $this->productctvmodel->delete($v);
        }
       $array = array('error'=>0,'msg'=>"Xóa thành công");
        echo json_encode($array);
    }
    public function add_product()
    {
        if($this->input->post())
        {
            $data_insert = array('id_user'=>$this->session->userdata('user_id'),'id_product'=>$this->input->post('product'),'create_date'=>strtotime('now'));
            $id = $this->productctvmodel->insert($data_insert);
            if($id>0)
            {
                $array = array('error'=>0,'msg'=>'Thêm thành công');
            }
            else
            {
                $array = array('error'=>1,'msg'=>'Thêm thất bại');
            }
            echo json_encode($array);
        }
        else
        {
            $product_user = $this->productctvmodel->get_product_user($this->session->userdata('user_id'));
            $array_p = array();
            foreach($product_user as $pro)
            {
                $array_p[]=$pro['id_product'];
            }
            $array_p = implode(',',$array_p);
            $product = $this->productctvmodel->get_product($array_p);
            $this->data['product']=$product;
            $this->load->view('ajax_add_product',$this->data);
        }
    }
}
?>