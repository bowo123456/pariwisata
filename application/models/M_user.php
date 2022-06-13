<?php

class M_user extends CI_Model{

  var $tabel = 'tb_user';
  function tampil_data(){
		return $this->db->get('tb_user');
  }


  function get_user_byid($id) {
    $this->db->from($this->tabel);
    $this->db->where('id', $id);

    $query = $this->db->get();

    if ($query->num_rows() == 1) {
        return $query->result();
    }
    }

    function input_user($data,$table){
    $this->db->insert($table,$data);
    }

    function edit_data($where,$table){
        return $this->db->get_where($table,$where);
     }
   
    function get_update($where,$data,$table){
        $this->db->where($where);
        $this->db->update($this->tabel, $data);
        return TRUE;
     }

     function hapus_data($where,$table){
        $this->db->where($where);
        $this->db->delete($table);
      }


}
