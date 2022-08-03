<?php

class Paket_wisata_model extends CI_Model{
    private $_table = 'tbpaket';

    public function get()
    {
        $this->db->select('p.*,GROUP_CONCAT(o.nama_tempat SEPARATOR ",") as nama_tempat');
        $this->db->from('tbpaket p');
        $this->db->join('tbdetailpaket d', 'd.id_paket=p.id', 'left');
        $this->db->join('objek_wisata o', 'o.id=d.id_objek', 'left');
        $this->db->group_by('p.id');
        return $query = $this->db->get()->result();
        
    }
    public function get_paket($id)
    {
        $this->db->where('id', $id);
        $this->db->select('*');
        // $this->db->join('tbkategori', 'tbkategori.id = objek_wisata.id_kategori');
        $query = $this->db->get($this->_table);
        return $query->row();
    }
    public function get_objek($id)
    {
        $this->db->where('id_paket', $id);
        $this->db->select('d.*,o.nama_tempat,o.alamat,o.koordinat');
        $this->db->from('tbdetailpaket d');
        $this->db->join('objek_wisata o', 'o.id=d.id_objek', 'left');
        return $query = $this->db->get()->result();

    }

    public function update($id,$data)
    {   
        // $tanggal = date('Y-m-d');
        $this->db->where('id', $id);
        $this->db->update('tbpaket', $data);
        return  $id;
    }
    public function delete($id=null)
    {
        if(!$id){
            return;
        }
        return $this->db->delete($this->_table, ['id'=>$id]);
    }
    public function delete_detail($id=null)
    {
        if(!$id){
            return;
        }
        return $this->db->delete('tbdetailpaket', ['id_paket'=>$id]);
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
        $query = $this->db->get('tbpaket');
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