<?php
class Auth extends CI_Controller
{
	public function index()
	{
		show_404();
	}

	public function login()
	{	
		// echo 'salah';
		$this->load->model('auth_model');
		$this->load->library('form_validation');

		// $rules = $this->auth_model->rules();
		// $this->form_validation->set_rules($rules);

		// if($this->form_validation->run() == FALSE){
		// 	return $this->load->view('login_form');
		// }
		$this->load->view('login_form');
		if ($this->session->userdata('name')) {
			redirect('admin');
		}else{
			$username = $this->input->post('username');
		$password = $this->input->post('password');
		$result     = $this->auth_model->login_user($username, $password);
		// var_dump($result);
		if($result){
			$sess = array(
                'id'  => $result[0]['id'],
                'name'      => $result[0]['name'],
                'username'  => $result[0]['username'],
                'email'      => $result[0]['email'],
                'role'        => $result[0]['role'],
                'logged_in' => TRUE
            );
            $this->session->set_userdata($sess);
			redirect('admin');
		} 
		}
		
		
		

		

	}
	public function cek_login(){

	}
	public function user()
	{
		$this->load->model('auth_model');
		$this->auth_model->loginUser();
		redirect('admin');
	}

	public function logout()
	{
		// $this->load->model('auth_model');
		// $this->auth_model->logout();
		session_destroy();
		redirect(site_url('auth/login'));
	}
	public function register(){
		$this->load->model('auth_model');
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
        if($this->input->method()==='post'){
			// $this->form_validation->set_rules('name', 'name', 'required|is_unique[tbadmin.name]', array('is_unique' => 'Nama telah digunakan'));
			$this->form_validation->set_rules('username', 'username', 'required|is_unique[tbadmin.username]', array('is_unique' => 'Username telah digunakan'));
			$this->form_validation->set_rules('email', 'email', 'required|is_unique[tbadmin.email]', array('is_unique' => 'Email telah digunakan'));
			if ($this->form_validation->run() == TRUE)
            {
			$input = [
                'name' => $this->input->post('name'),                
                'username' => $this->input->post('username'),                
                'email' => $this->input->post('email'),                
                'password' => $this->input->post('password'),                
                'role' => 0,                
			];
			$saved = $this->auth_model->insert($input);
			if($saved){
				$this->session->set_flashdata('message', 'Anda berhasil register');
				return redirect('auth/login');
				}
            }
		}
		$this->load->view('register_form');
	}
}
?>