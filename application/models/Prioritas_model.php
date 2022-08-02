<?php

class Prioritas_model extends CI_Model{
    private $_table = 'tbprioritas';

    public function get()
    {
        $query = $this->db->get($this->_table);
        return $query->result();
    }
    public function update($id,$data)
    {
        // if(!isset($data['id'])){
        //     return;
        // }
        $this->db->where('id', $id);
        return $this->db->update('tbprioritas', $data);
    }
    public function update_id_kategori($id,$data)
    {
        // if(!isset($data['id'])){
        //     return 1;
        // }
        $this->db->where('id', $id);
        return $this->db->update('tbkategori', $data);
    }   
    public function delete($id=null)
    {
        if(!$id){
            return;
        }
        return $this->db->delete($this->_table, ['id'=>$id]);
    }
    public function delete_id_kategori($id=null)
    {
        if(!$id){
            return;
        }
        return $this->db->delete($this->_table, ['id_jenis'=>$id]);
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
    public function calculate($data)
    {
        return 0;
    }

    public function byKeterangan($keterangan)
    {
        $query = $this->db->get_where($this->_table, ['keterangan'=>$keterangan]);
        $row = $query->row();
        return $row->nilai;
    }
}

?>