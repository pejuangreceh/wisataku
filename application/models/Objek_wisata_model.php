<?php

class Objek_wisata_model extends CI_Model{
    private $_table = 'objek_wisata';

    public function get()
    {
        $this->db->select('objek_wisata.id, nama_tempat, alamat, koordinat, deskripsi, tbkategori.nama_kategori, id_kategori, tbkategori.last_modified, tbkategori.created_at');
        $this->db->join('tbkategori', 'tbkategori.id = objek_wisata.id_kategori');
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
    public function extractData($data)
    {
        $output = array();
        foreach($data as $dt){
            $id = $dt['id_objek_wisata'];
            $query = $this->db->get_where($this->_table, ['id'=>$id]);
            $row = $query->row();
            $output[] = array("nama_tempat"=>$row->nama_tempat, "alamat"=>$row->alamat, "deskripsi"=>$row->deskripsi, "koordinat"=>$row->koordinat, "id"=>$row->id, "prioritas"=>$dt['prioritas']);
        }
        return $output;
    }
}

?>