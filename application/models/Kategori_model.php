<?php

class Kategori_model extends CI_Model{
    private $_table = 'tbkategori';

    public function get()
    {
        $query = $this->db->get($this->_table);
        return $query->result();
    }
    public function update($data)
    {
        if(!isset($data['id'])){
            return;
        }
        $tanggal = date('Y-m-d');
        return $this->db->update($this->_table, $data, ['id'=>$data['id'], 'last_modified'=>$tanggal]);
    }
    public function delete($id=null)
    {
        if(!$id){
            return;
        }
        return $this->db->delete($this->_table, ['id'=>$id]);
    }
    public function insert($data)
    {
        return $this->db->insert($this->_table, $data);
    }
    public function find($id)
    {
        if(!$id){
            return;
        }
        $query = $this->db->get_where($this->_table, ['id'=>$id]);
        return $query->row();
    }
    public function getLastId()
    {
        $this->db->from($this->_table);
        $this->db->order_by("id", "desc");
        $query = $this->db->get(); 
        return $query->row()->id;
    }
}

?>