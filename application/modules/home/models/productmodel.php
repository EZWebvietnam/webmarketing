<?php 
class Productmodel extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function load_top_clip()
    {
        $sql ="SELECT * FROM clip_marketing INNER JOIN product ON product.id_product = clip_marketing.id_product ORDER BY rand() LIMIT 1";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function load_top_right()
    {
        $sql ="SELECT * FROM clip_marketing INNER JOIN product ON product.id_product = clip_marketing.id_product ORDER BY rand() LIMIT 6";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function list_product_home()
    {
        $sql ="SELECT * FROM product INNER JOIN cate_product ON cate_product.id_cate = product.id_cate";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function product_detail($id)
    {
        $id = intval($id);
         $sql ="SELECT * FROM product INNER JOIN cate_product ON cate_product.id_cate = product.id_cate WHERE id_product = $id";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function list_product_id_cate($id,$number,$offset)
    {
        $id = intval($id);
        $number = intval($number);
        $offset = intval($offset);
        $sql ="SELECT * FROM product INNER JOIN cate_product ON cate_product.id_cate = product.id_cate WHERE product.id_cate = $id LIMIT $offset,$number";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function count_list_product_id_cate($id)
    {
        $id = intval($id);
        $sql ="SELECT * FROM product INNER JOIN cate_product ON cate_product.id_cate = product.id_cate WHERE product.id_cate = $id";
        $query = $this->db->query($sql);
        return count($query->result_array());
    }
    public function get_sale_off_product($id)
    {
        $id = intval($id);
        $sql ="SELECT * FROM sale_off WHERE id_product = $id AND exp_date >= now();";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function get_list_product_sale_off()
    {
         $sql ="SELECT * FROM sale_off INNER JOIN product ON sale_off.id_product = product.id_product INNER JOIN cate_product ON cate_product.id_cate = product.id_cate  ORDER BY rand() LIMIT 2";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
?>