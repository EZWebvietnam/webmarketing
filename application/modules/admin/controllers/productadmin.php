<?php

class Productadmin extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('productmodel');
    }

    public function index() {
        $this->load->view('admin/index_layout_ctv');
    }

    public function list_product() {
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        if ($this->input->post('page_no')) {
            $page = $this->input->post('page_no');
        } else {
            $page = 1;
        }
        $config['per_page'] = 10;
        $config['total_rows'] = $this->productmodel->count_product();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
        $num_pages = ceil($config['total_rows'] / $config['per_page']);
        $array_sv = $this->productmodel->list_product($config['per_page'], $page1);
        $this->data['total_page'] = $num_pages;
        $this->data['offset'] = $page1;
        $this->data['page'] = $page;
        $this->data['total'] = $config['total_rows'];
        $this->data['list_product'] = $array_sv;
        $this->load->view('ajax_admin_get_product', $this->data);
    }

    public function delete($id) {
        $this->productmodel->delete_product($id);
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }

    public function deletes() {

        $array = $this->input->post('ar_id');
        foreach ($array as $k => $v) {
            $this->productmodel->delete_product($v);
        }
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }

    public function view($id = null) {
        if (empty($id)) {
            show_404();
            exit;
        }
        $detail = $this->productmodel->view_product($id);
        if (empty($detail)) {
            show_404();
            exit;
        }
        $this->data['detail_product']=$detail;
        $this->load->view('ajax_admin_view_product',$this->data);
    }
    public function add()
    {
        if($this->input->post())
        {
            $this->load->library('upload');
            $image_upload_folder = $_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'file/uploads/product';
            if (!file_exists($image_upload_folder)) {
                mkdir($image_upload_folder, DIR_WRITE_MODE, true);
            }
            $this->upload_config = array(
                'upload_path' => $image_upload_folder,
                'allowed_types' => 'png|jpg|jpeg|bmp|tiff',
                'max_size' => 2048,
                'remove_space' => true,
                'encrypt_name' => true,
                );
            $this->upload->initialize($this->upload_config);
            if (!$this->upload->do_upload()) {
                $data['error_file'] = $this->upload->display_errors();
                $file = '';
            } else {
                $file_info = $this->upload->data();
            }
            print_r($_FILES);exit;
            if (!empty($file_info)) {
                $file = $file_info['file_name'];
            }
            else
            {
                $file='';
            }
            $data_save = array(
                'title'=>$this->input->post('title'),
                'exp_date'=>$this->input->post('exp_date'),
                'id_cate'=>$this->input->post('category'),
                'cost'=>$this->input->post('cost'),
                'description'=>stripslashes($this->input->post('description')),
                'content'=>stripslashes($this->input->post('content')),
                'comission'=>$this->input->post('hoa_hong'),
                'img'=>$file
            );
            $id =$this->productmodel->add_product($data_save);
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
            $this->load->model('categorymodel');
            $this->data['list_cate'] = $this->categorymodel->list_category();
            $this->load->view('ajax_admin_add_product',$this->data);
        }
    }

}
