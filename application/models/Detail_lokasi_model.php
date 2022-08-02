<?php

class Detail_lokasi_model extends CI_Model{
    private $_table = 'detail_lokasi';

    public function get()
    {
        $query = $this->db->get($this->_table);
        return $query->result();
    }
    public function getWithWisata()
    {
        $this->db->select('penginapan ,biaya ,tempat_ibadah ,warung ,souvenir ,toilet ,permainan ,tempat_makan ,tempat_parkir, objek_wisata.id_kategori, objek_wisata.id');
        $this->db->join('objek_wisata', 'detail_lokasi.id_objek_wisata = objek_wisata.id');
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
        $query = $this->db->get_where($this->_table, ['id_objek_wisata'=>$id]);
        return $query->row();
    }
}

?>