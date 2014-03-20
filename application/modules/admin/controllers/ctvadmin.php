<?php
class Ctvadmin extends MY_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->model('ctvmodel');
    }
    public function list_ctv()
    {
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        if ($this->input->post('page_no')) {
            $page = $this->input->post('page_no');
        } else {
            $page = 1;
        }
        $config['per_page'] = 10;
        $config['total_rows'] = $this->ctvmodel->count_ctv();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
        $num_pages = ceil($config['total_rows'] / $config['per_page']);
        $array_sv = $this->ctvmodel->load_ctv($config['per_page'], $page1);
        $this->data['total_page'] = $num_pages;
        $this->data['offset'] = $page1;
        $this->data['page'] = $page;
        $this->data['total'] = $config['total_rows'];
        $this->data['list_ctv'] = $array_sv;
        $this->load->view('ctv/ajax_admin_get_ctv', $this->data);
    }
    public function view($id)
    {
        if(empty($id))
        {
            show_404();
            exit;
        }
        $detail = $this->ctvmodel->detail_ctv($id);
        if(empty($detail))
        {
            show_404();
            exit;
        }
        $this->data['detail_ctv']=$detail;
        $this->load->view('ctv/ajax_admin_view_ctv',$this->data);
    }
    public function delete($id)
    {
        if(empty($id))
        {
            show_404();
            exit;
        }
        $detail = $this->ctvmodel->detail_ctv($id);
        if(empty($detail))
        {
            show_404();
            exit;
        }
        $this->ctvmodel->delete_ctv($id);
        $this->load->model('productmodel');
        $this->productmodel->delete_user_product_2($id);
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }
    public function deletes()
    {
        $this->load->model('productmodel');
        $array = $this->input->post('ar_id');
        foreach ($array as $k => $v) {
            $this->ctvmodel->delete_ctv($v);
            $this->productmodel->delete_user_product_2($v);
        }
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }
}
?>

