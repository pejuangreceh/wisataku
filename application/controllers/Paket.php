<?php
class Paket extends CI_Controller{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
		if(!$this->auth_model->current_user()){
			redirect('auth/login');
		}
	}
    public function index()
    {
        $this->load->model('auth_model');
		$data['isUser'] = $this->auth_model->current_user();
        $this->load->model('objek_wisata_model');
        $data['objek_wisata'] = $this->objek_wisata_model->get();
        $this->load->view('admin/master_objek_wisata.php', $data);
    }


	public function master_prioritas()
    {
        $this->load->model('prioritas_model');
		$this->load->model('kategori_model');
		$this->load->model('auth_model');
		$data['isUser'] = $this->auth_model->current_user();
        $data['prioritas'] = $this->prioritas_model->get();
		$data['kategori'] = $this->kategori_model->get();
        $this->load->view('admin/master_prioritas.php', $data);
    }
    public function delete_prioritas($id)
    {
        $this->load->model('prioritas_model');
        if(!$id){
			show_404();
		}
		$deleted = $this->prioritas_model->delete($id);
		if($deleted){
			$this->session->set_flashdata('message', 'Data prioritas Sudah Terhapus');
			return redirect('admin/master_prioritas');
		}
    }
    public function update_prioritas($id=null)
    {
        $this->load->model('prioritas_model');
        $data['prioritas'] = $this->prioritas_model->find($id);
		if(!$data['prioritas'] || !$id){
			show_404();
		}
		if($this->input->method()==='post'){
			$prioritas = [
				'id' => $id,
				'nilai' => $this->input->post('nilai'),
			];
			$updated = $this->prioritas_model->update($prioritas);

			if($updated){
				$this->session->set_flashdata('message', 'Data prioritas Berhasil Dirubah');
				return redirect('admin/master_prioritas');
			}
		}
		$this->load->view('admin/update_prioritas.php', $data);
    }




	public function pembobotan_objek_wisata($id)
	{
		$this->load->model('detail_lokasi_model');
		$data['detail'] = $this->detail_lokasi_model->find($id);
		$data['id_wisata'] = $id;
		$this->load->view('admin/pembobotan.php', $data);
	}
	public function insert_detail()
	{
		$this->load->model('detail_lokasi_model');
        if($this->input->method()==='post'){
			$jenis = [
				//'id' => $id,
				'id_objek_wisata' => $this->input->post('id_objek_wisata'),
				'penginapan' => $this->input->post('penginapan'),
				'biaya' => $this->input->post('biaya'),
				'tempat_ibadah' => $this->input->post('tempat_ibadah'),
				'warung' => $this->input->post('warung'),
				'souvenir' => $this->input->post('souvenir'),
				'toilet' => $this->input->post('toilet'),
				'permainan' => $this->input->post('permainan'),
				'tempat_makan' => $this->input->post('tempat_makan'),
				'tempat_parkir' => $this->input->post('tempat_parkir'),
			];
			$saved = $this->detail_lokasi_model->insert($jenis);
			if($saved){
				$this->session->set_flashdata('message', 'Data detail_lokasi Telah Dipasangkan');
				return redirect('admin/master_objek_wisata');
			}
		}
		$this->load->view('admin/insert_detail_lokasi.php');
	}
	public function update_detail($id=null)
    {
        $this->load->model('detail_lokasi_model');
		if($this->input->method()==='post'){
			$detail = [
				'id' => $id,
				'id_objek_wisata' => $this->input->post('id_objek_wisata'),
				'penginapan' => $this->input->post('penginapan'),
				'biaya' => $this->input->post('biaya'),
				'tempat_ibadah' => $this->input->post('tempat_ibadah'),
				'warung' => $this->input->post('warung'),
				'souvenir' => $this->input->post('souvenir'),
				'toilet' => $this->input->post('toilet'),
				'permainan' => $this->input->post('permainan'),
				'tempat_makan' => $this->input->post('tempat_makan'),
				'tempat_parkir' => $this->input->post('tempat_parkir'),
			];
			$updated = $this->detail_lokasi_model->update($detail);
			if($updated){
				$this->session->set_flashdata('message', 'Data detail Berhasil Dirubah');
				return redirect('admin/master_objek_wisata');
			}
		}
		return 'not found';
    }


    public function master_kategori()
    {
        $this->load->model('kategori_model');
		$this->load->model('auth_model');
		$data['isUser'] = $this->auth_model->current_user();
        $data['kategori'] = $this->kategori_model->get();
        $this->load->view('admin/master_kategori.php', $data);
    }
    public function insert_kategori()
    {
        $this->load->model('kategori_model');
		$this->load->model('prioritas_model');
        if($this->input->method()==='post'){
			//$id = uniqid('', true);
			$jenis = [
				//'id' => $id,
                'nama_kategori' => $this->input->post('kategori'),                
			];
			$saved = $this->kategori_model->insert($jenis);

			$lastId = $this->kategori_model->getLastId();
			$prior = [
				'jenis_prioritas' => 'kategori',
				'id_jenis' => $lastId,
				'keterangan' => $this->input->post('kategori'),
				'nilai' => 0,
			];
			$saved = $this->prioritas_model->insert($prior);

			if($saved){
				$this->session->set_flashdata('message', 'Data kategori Telah Ditambah');
				return redirect('admin/master_kategori');
			}
		}
		$this->load->view('admin/insert_kategori.php');
    }
    public function delete_kategori($id)
    {
        $this->load->model('kategori_model');
		$this->load->model('prioritas_model');
        if(!$id){
			show_404();
		}
		$deleted = $this->kategori_model->delete($id);
		$this->prioritas_model->delete_id_kategori($id);
		if($deleted){
			$this->session->set_flashdata('message', 'Data kategori Sudah Terhapus');
			return redirect('admin/master_kategori');
		}
    }
    public function update_kategori($id=null)
    {
        $this->load->model('kategori_model');
		$this->load->model('prioritas_model');
        $data['kategori'] = $this->kategori_model->find($id);
		if(!$data['kategori'] || !$id){
			show_404();
		}
		if($this->input->method()==='post'){
			$kategori = [
				'id' => $id,
				'nama_kategori' => $this->input->post('kategori'),
			];
			$updated = $this->kategori_model->update($kategori);


			$prioritas = [
				'id_jenis' => $id,
				'keterangan' => $this->input->post('kategori'),
			];
			$this->prioritas_model->update_id_kategori($prioritas);

			if($updated){
				$this->session->set_flashdata('message', 'Data kategori Berhasil Dirubah');
				return redirect('admin/master_kategori');
			}
		}
		$this->load->view('admin/update_kategori.php', $data);
    }


    public function master_objek_wisata()
    {
		$this->load->model('auth_model');
		$data['isUser'] = $this->auth_model->current_user();
        $this->load->model('objek_wisata_model');
        $data['objek_wisata'] = $this->objek_wisata_model->get();
        $this->load->view('admin/master_objek_wisata.php', $data);
    }
    public function show_coordinate($id)
    {
        $this->load->model('objek_wisata_model');
        $data['objek_wisata'] = $this->objek_wisata_model->find($id);
        return $this->load->view('admin/show_coordinate.php', $data);
    }
    public function update_objek_wisata($id=null)
    {
        $this->load->model('objek_wisata_model');
		$this->load->model('kategori_model');
		$data['kategori'] = $this->kategori_model->get();
        $data['objek_wisata'] = $this->objek_wisata_model->find($id);
		
		if(!$data['objek_wisata'] || !$id){
			show_404();
		}
		if($this->input->method()==='post'){
			$objek_wisata = [
				'id' => $id,
				'nama_tempat' => $this->input->post('nama_tempat'),
                'alamat' => $this->input->post('alamat'),
                'koordinat' => $this->input->post('koordinat'),
                'deskripsi' => $this->input->post('deskripsi'),
				'id_kategori' => $this->input->post('id_kategori'),
			];
			$updated = $this->objek_wisata_model->update($objek_wisata);
			if($updated){
				$this->session->set_flashdata('message', 'Data objek_wisata Berhasil Dirubah');
				return redirect('admin/master_objek_wisata');
			}
		}
		$this->load->view('admin/update_objek_wisata.php', $data);
    }
    public function delete_objek_wisata($id)
    {
        $this->load->model('objek_wisata_model');
        if(!$id){
			show_404();
		}
		$deleted = $this->objek_wisata_model->delete($id);
		if($deleted){
			$this->session->set_flashdata('message', 'Data objek_wisata Sudah Terhapus');
			return redirect('admin/master_objek_wisata');
		}
    }
    public function insert_objek_wisata()
    {
        $this->load->model('objek_wisata_model');
		$this->load->model('kategori_model');
		$data['kategori'] = $this->kategori_model->get();
        if($this->input->method()==='post'){
			//$id = uniqid('', true);
			$jenis = [
				//'id' => $id,
                'nama_tempat' => $this->input->post('nama_tempat'),
                'alamat' => $this->input->post('alamat'),
                'koordinat' => $this->input->post('koordinat'),
                'deskripsi' => $this->input->post('deskripsi'),
				'id_kategori' => $this->input->post('id_kategori'),
                
			];
			$saved = $this->objek_wisata_model->insert($jenis);
			if($saved){
				$this->session->set_flashdata('message', 'Data objek_wisata Telah Ditambah');
				return redirect('admin/master_objek_wisata');
			}
		}
		$this->load->view('admin/insert_objek_wisata.php', $data);
    }
}
?>