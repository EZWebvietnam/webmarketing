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
        $this->data['list_product_ref']=$this->productctvmodel->load_product_ref($this->session->userdata('user_id'));
        
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
}
?>