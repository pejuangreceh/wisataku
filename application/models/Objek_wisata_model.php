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
    public function update($id,$data)
    {   
        // $tanggal = date('Y-m-d');
        $this->db->where('id', $id);
        $insert_id = $this->db->update('objek_wisata', $data);
        return $insert_id;
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
        $this->db->insert($this->_table, $data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function find($id)
    {
        if(!$id){
            return;
        }
        $query = $this->db->get_where($this->_table, ['id'=>$id]);
        return $query->row();
    }
    
    public function get_last_id(){
		$this->db->select_max('id');
        $query = $this->db->get('objek_wisata');
        return $query->row();
    }


    public function extractData($data)
    {
        $output = array();
        foreach($data as $dt){
            $id = $dt['id_objek_wisata'];
            $query = $this->db->get_where($this->_table, ['id'=>$id]);
            $row = $query->row();
            $output[] = array('nama_tempat'=>$row->nama_tempat, 'alamat'=>$row->alamat, 'deskripsi'=>$row->deskripsi, 'koordinat'=>$row->koordinat, 'id'=>$row->id, 'prioritas'=>$dt['prioritas']);
        }
        return $output;
    }
}

?>