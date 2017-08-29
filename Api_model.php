<?php 
class Api_model extends CI_Model {
    function __construct(){
        $this->load->library('curl');
        date_default_timezone_set("UTC");   
    }

    function getEmployees($id,$status=1){
        if($id!='')
           $this->db->where('id', $id);
        $this->db->where('status', $status);
        $query = $this->db->get('tbl_employee');
        return $query->result_array();
    }
    function getEmployee($id,$status=1){
        if($id!='')
           $this->db->where('id', $id);
        $this->db->where('status', $status);
        $query = $this->db->get('tbl_employee');
        return $query->row();
    }

    function searchEmployee($str,$status=1){
        
        $this->db->like('firstName',$str);
        $this->db->or_like('lastName',$str);
        $this->db->or_like('department',$str);
        $this->db->or_like('email',$str);
        
           //$this->db->where('name', $str);
        $this->db->where('status', $status);
        $query = $this->db->get('tbl_employee');
                $sql = $this->db->last_query();
        return $query->result_array();
    }

    function getReportee($id='',$status=1){
         if($id!='')
           $this->db->where('managerId', $id);
        $this->db->where('status', $status);
        $query = $this->db->get('tbl_employee');

        return $query->result_array();
    } 


      
          
}