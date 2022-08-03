<?php
class Paket extends CI_Controller{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
        $this->load->model('paket_wisata_model');
        $this->load->model('objek_wisata_model');
		if (!($this->session->userdata('username'))) {
			redirect('auth/login');
		}
	}
    public function index()
    {
        $this->load->model('auth_model');
        $this->load->model('paket_wisata_model');
        $data['paket_wisata'] = $this->paket_wisata_model->get();
        $this->load->view('paket/master_paket_wisata.php', $data);
    }
	public function insert_paket_wisata()
    {
        $this->load->model('paket_wisata_model');
		$data['last_id'] = $this->paket_wisata_model->get_last_id();
		$last_id = $this->paket_wisata_model->get_last_id();
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$data['objek_wisata'] = $this->objek_wisata_model->get();
        if($this->input->method()==='post'){
			$this->form_validation->set_rules('nama_paket', 'paket', 'required|is_unique[tbpaket.nama_paket]', array('is_unique' => 'Nama Paket telah ada'));

			if ($this->form_validation->run() == TRUE)
                {
					//$id = uniqid('', true);
			$id_objek = $_POST['id_objek'];
			$jumlah = count($id_objek);
			$jenis = [
				//'id' => $id,
                'nama_paket' => $this->input->post('nama_paket'),                
                'harga' => $this->input->post('harga'),
				'jumlah_titik' => $jumlah,             
                'deskripsi' => $this->input->post('deskripsi'),
				'created_at' => date('Y-m-d'),
				'last_modified' => date('Y-m-d'),                
			];
			if($last_id->id != NULL){
				$this->db->query("ALTER TABLE tbpaket AUTO_INCREMENT = $last_id->id");
			}else{
				$this->db->query("ALTER TABLE tbpaket AUTO_INCREMENT = 1");
			}
			$saved = $this->paket_wisata_model->insert($jenis);
			if ($saved) {
				$result = array();
				for ($i = 0; $i < $jumlah; $i++) {
					$result = array(
						'id_paket' => $saved,
						'id_objek' => $_POST['id_objek'][$i],
						'created_at' => date('Y-m-d'),
						'last_modified' => date('Y-m-d'),  
					);
					$this->db->insert('tbdetailpaket', $result);
				}
			}
			if($saved){
				$this->session->set_flashdata('message', 'Data kategori Telah Ditambah');
				return redirect('paket/');
			}
                }
		}
		$this->load->view('paket/insert_paket_wisata',$data);
	}
	public function delete_paket_wisata($id){
		$this->load->model('paket_wisata_model');
        if(!$id){
			show_404();
		}
		$deleted = $this->paket_wisata_model->delete($id);
		$deleted_detail = $this->paket_wisata_model->delete_detail($id);
		if($deleted && $deleted_detail){
			$this->session->set_flashdata('message', 'Data paket_wisata Sudah Terhapus');
			return redirect('paket/');
		}
	}
	public function update_paket_wisata($id = NULL){
		$this->load->model('paket_wisata_model');
        $data['data_objek_wisata'] = $this->paket_wisata_model->get_objek($id);
        $data['paket_wisata'] = $this->paket_wisata_model->get_paket($id);
		$data['objek_wisata'] = $this->objek_wisata_model->get();
		$data['id'] = $id;
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		if($this->input->method()==='post'){
			$this->form_validation->set_rules('nama_paket', 'paket', 'required|is_unique[tbpaket.nama_paket]', array('is_unique' => 'Nama Paket telah ada'));

			if ($this->form_validation->run() == TRUE)
                {
					//$id = uniqid('', true);
			$id_objek = $_POST['id_objek'];
			$jumlah = count($id_objek);
			$jenis = [
				//'id' => $id,
                'nama_paket' => $this->input->post('nama_paket'),                
                'harga' => $this->input->post('harga'),
				'jumlah_titik' => $jumlah,             
                'deskripsi' => $this->input->post('deskripsi'),
				'last_modified' => date('Y-m-d'),                
			];
			
			$updated = $this->paket_wisata_model->update($id,$jenis);
			if ($updated) {
				$deleted_detail = $this->paket_wisata_model->delete_detail($id);
				$result = array();
				if ($deleted_detail) {
					for ($i = 0; $i < $jumlah; $i++) {
						$result = array(
							'id_paket' => $updated,
							'id_objek' => $_POST['id_objek'][$i],
							'created_at' => date('Y-m-d'),
							'last_modified' => date('Y-m-d'),  
						);
						$this->db->insert('tbdetailpaket', $result);
					}
				}
			}
			if($updated){
				$this->session->set_flashdata('message', 'Data kategori Telah Ditambah');
				return redirect('paket/');
			}
                }
		}
		$this->load->view('paket/update_paket_wisata.php', $data);
	}
	public function detail_paket_wisata($id = NULL){
		$this->load->model('paket_wisata_model');
        $data['data_objek_wisata'] = $this->paket_wisata_model->get_objek($id);
        $data['paket_wisata'] = $this->paket_wisata_model->get_paket($id);
		$data['objek_wisata'] = $this->objek_wisata_model->get();
		$data['id'] = $id;
		$this->load->view('paket/detail_paket_wisata.php', $data);
	}
}
?>