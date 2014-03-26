<?php 
class Home extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        parent::list_cate();
        parent::info_company();
        parent::load_clip();
        parent::load_header();
        $this->load->model('productmodel');
        $this->load->helper(array('form','url'));
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
    }
    public function index()
    {
        $this->data['clip_top']=$this->productmodel->load_top_clip();
        $this->data['list_clip_right']=$this->productmodel->load_top_right();
        $this->data['list_product']=$this->productmodel->list_product_home();
        $this->data['main_content']='home_view/home';
        $this->load->view('home/layout_home',$this->data);
    }
    public function contact()
    {
        if($this->input->post())
        {
            $full_name = $this->input->post('full_name');
            $email = $this->input->post('email');
            $content = $this->input->post('noi_dung');
            if($full_name!='' && $email !='' && $content!='')
            {
                $data_save = array();
                $data_save = array('full_name'=>$full_name,'email'=>$email,'noi_dung'=>$content);
                $this->load->model('faq');
                $id = $this->faq->insert_contact($data_save);
                if($id>0)
                {
                    redirect('..'.ROT_DIR);
                }
            }
        }
        else
        {
            $this->load->model('productmodel');
            $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
            $this->data['main_content']='home_view/contact';
            $this->load->view('home/layout_detail',$this->data);
        }
    }
    public function check_email()
    {
        $this->load->model('users');
        $email = $this->input->post('email');
        $result = $this->users->get_user_by_email($email);
        if(empty($result))
        {
            $data = array('error'=>1);
        }
        else
        {
            $data = array('error'=>0);
        }
        echo json_encode($data);
    }
}
?>