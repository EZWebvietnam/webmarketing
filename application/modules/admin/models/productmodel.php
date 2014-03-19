<?php
class Productmodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function list_product()
    {
        $sql ="SELECT * FROM product";
    }
}
?>

