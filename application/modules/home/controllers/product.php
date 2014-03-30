<?php 
class Product extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        parent::list_cate();
        parent::info_company();
        parent::load_clip();
        parent::load_header();
        $this->load->library('session');
        $this->load->model('productmodel');
                $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
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
        $this->data['list_clip'] = $this->productmodel->load_random_clip($id);
        $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->data['product_detail']=$detail_product;
        $this->data['main_content']='product/detail_product';
         $this->data['image']=$this->_create_captcha();
        $this->load->view('home/layout_detail',$this->data);
    }
    public function list_product()
    {
        $this->load->model('catemodel');
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(3);
       
        $config['per_page'] = 10;
        $config['total_rows'] = $this->productmodel->count_list_product_id_cate();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->productmodel->list_product_id_cate($config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->data['image']=$this->_create_captcha();
        //$this->data['main_content']='product/detail_product';
       $this->load->view('home/layout_list',$this->data);
    }
    public function add_to_cart()
    {
       if($this->input->is_ajax_request())
       {
            $id_product = $this->input->post('productid');
            $quantity = $this->input->post('quantity');
            $id_ref = base64_decode($this->input->post('id_ref'));
            $product_detail = $this->productmodel->product_detail($id_product);
            $ip_user = $_SERVER["REMOTE_ADDR"];
            if(!empty($product_detail))
            {
                $product_sale_off_check = $this->productmodel->get_sale_off_product($id_product);
                if(!empty($product_sale_off_check))
                {
                    $price = $product_detail - (($product_sale_off_check[0]['percent']*$product_detail[0]['cost'])/100);
                }
                else
                {
                    $price = $product_detail[0]['cost'];
                }
                if($id_ref!=0)
                {
                    $comission = (($price*$product_detail[0]['comission'])/100)*$quantity;
                }
                else
                {
                    $comission = 0;
                }
                $cart_detail = $this->productmodel->check_cart($ip_user,$id_product);
                $data_save = array(
                'id_user'=>$this->session->userdata('user_id'),
                'id_product'=>$id_product,
                'quantity'=>$quantity,
                'price'=>$price,
                'commissions'=>$comission,
                'ip_user'=>$ip_user,
                'id_ref'=>$id_ref,
                'create_date'=>strtotime('now')
                );
                 if(empty($cart_detail))
                 {
                    $id = $this->productmodel->insert_cart($data_save);
                    if($id>0)
                    {
                        $data = array('msg'=>TRUE);
                    }
                 }
                 else
                 {
                    $this->productmodel->update_cart($cart_detail[0]['id'],$data_save);
                    $data = array('msg'=>TRUE);
                 }
            }
            echo json_encode($data);
       }
    }
    public function ajax_show_cart()
    {
        if($this->input->is_ajax_request())
        {
            $ip_user = $_SERVER["REMOTE_ADDR"];
            $cart_list = $this->productmodel->load_cart($ip_user);
            $this->data['list_cart']=$cart_list;
            $this->load->view('product/ajax_show_cart',$this->data);
        }
        
        
    }
    public function delete_from_cart()
    {
      if($this->input->is_ajax_request())
      {
            $id_product = $this->input->post('productid');
            $ip_user = $_SERVER["REMOTE_ADDR"];
            $cart_list = $this->productmodel->delete_from_cart($ip_user,$id_product);
            $data = array('msg'=>TRUE);
            echo json_encode($data);
            
      }  
    }
     public function delete_cart()
    {
      if($this->input->is_ajax_request())
      {
            $id_product = $this->input->post('productid');
            $ip_user = $_SERVER["REMOTE_ADDR"];
            $cart_list = $this->productmodel->delete_cart($ip_user);
            $data = array('msg'=>TRUE);
            echo json_encode($data);
      }  
    }
    public function check_out()
    {
        if($this->input->is_ajax_request())
        {
            $full_name = $this->input->post('realname');
            $address = $this->input->post('address');
            $phone = $this->input->post('phone');
            $email = $this->input->post('email');
            $yahoo = $this->input->post('yahoo');
            $ip_user = $_SERVER["REMOTE_ADDR"];
            $data_insert = array('full_name'=>$full_name,
            'address'=>$address,
            'phone'=>$phone,
            'email'=>$email,
            'yahoo'=>$yahoo,
            'create_date'=>strtotime('now'),
            'id_ref'=>0
             );
            $id = $this->productmodel->insert_order($data_insert);
            if($id>0)
            {
                $cart = $this->productmodel->load_cart($ip_user);
                foreach($cart as $crt)
                {
                    $data_order_detail = array(
                    'id_user'=>$crt['id_user'],
                    'id_product'=>$crt['id_product'],
                    'quantity'=>$crt['quantity'],
                    'price'=>$crt['price'],
                    'commissions'=>$crt['commissions'],
                    'ip_user'=>$crt['ip_user'],
                    'id_ref'=>$crt['id_ref'],
                    'order_id'=>$id,
                    'status_money'=>0,
                    'create_date'=>strtotime('now')
                    );
                   
                    $this->productmodel->insert_order_detail($data_order_detail);
                    $data_order_detail = array();
                }
            }
        }
        
    }
    public function faq_list()
    {
         $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->load->model('faq');
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(3);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->faq->count_faq();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->faq->list_faq($config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->data['image']=$this->_create_captcha();
        $this->load->view('home/layout_faq',$this->data);
    }
    public function detail_faq($id)
    {
        $this->load->model('faq');
        $this->data['detail'] = $this->faq->faq_detail($id);
        $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
        $this->data['main_content']='product/detail_faq';
        $this->data['image']=$this->_create_captcha();
        $this->load->view('home/layout_detail',$this->data);
    }
    public function send_faq()
    {
        $this->load->model('faq');
        if($this->input->post())
        {
            $title = $this->input->post('title');
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $content = stripslashes($this->input->post('content'));
            $data_insert = array(
                'title'=>$title,
                'name'=>$name,
                'email'=>$email,
                'question'=>$content,
                'status'=>0,
                'create_date'=>strtotime('now')
            );
            $id = $this->faq->insert_faq($data_insert);
            if($id>0)
            {
                redirect('/hoi-dap');
            }
        }
        else
        {
            $this->data['list_product_sale']=$this->productmodel->get_list_product_sale_off();
            $this->data['main_content']='product/faq_send';
            $this->load->view('home/layout_detail',$this->data);
        }
    }
    private function _create_captcha() {
        $this->load->helper('captcha');
        $options = array('img_path' => PATH_FOLDER . ROT_DIR . '/captcha/', 'img_url' => base_url() . "captcha/", 'img_width' => '150', 'img_height' => '40', 'expiration' => 7200);
        $cap = create_captcha($options);
        $image = $cap['image'];
        $this->session->set_userdata('captchaword', $cap['word']);
        return $image;
    }

    public function check_captcha($string) {

        if ($string == $this->session->userdata('captchaword')) {
            return TRUE;
        } else {
            $this->form_validation->set_message('check_captcha', 'Wrong captcha code');
            return FALSE;
        }
    }
    public function check_captcha_ajax()
    {
        $captcha = $this->input->post('captcha');
        if($this->check_captcha($captcha))
        {
            $data = array('error'=>'0');
        }
        else
        {
            $data = array('error'=>'1');
        }
        echo json_encode($data);
    }
    public function create_captcha_ajax() {
        $this->load->helper('captcha');
        $options = array('img_path' => PATH_FOLDER . ROT_DIR . '/captcha/', 'img_url' => base_url() . "captcha/", 'img_width' => '150', 'img_height' => '40', 'expiration' => 7200);
        $cap = create_captcha($options);
        $image = $cap['image'];
        $this->session->set_userdata('captchaword', $cap['word']);
        $array = array('error'=>0,'img'=>$image);
        echo json_encode($array);
    }
}
?>