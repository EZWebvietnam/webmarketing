<?php 
class Productctvmodel extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function load_product_ref($id)
    {
        $id = intval($id);
        $sql="SELECT *,user_product.id as user_product_id FROM user_product INNER JOIN product ON user_product.id_product = product.id_product INNER JOIN users ON users.id = user_product.id_user WHERE user_product.id_user = $id";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function delete($id)
    {
        $this->db->delete('user_product',array('id'=>$id));
    }
}
?>