<?php
class Android extends CI_Controller{
    public function test()
    {
        $this->load->view('admin/debug.php');
    }
    public function login()
    {
        $this->load->model('data_user_model');
        if($this->input->method()==='post'){
			$dataLogin = [
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
            ];
            if($this->data_user_model->check($dataLogin))echo "Login Berhasil";
            else echo "Login Gagal";
            return;
        }
        return;
    }
    public function register()
    {
        $this->load->model('data_user_model');
        if($this->input->method()==='post'){
			$dataRegister = [
                'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
            ];
            $this->data_user_model->insert($dataRegister);
        }
        echo "Register Berhasil";
        return;
    }
}
?>