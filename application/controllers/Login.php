<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('m_login');

	}

	public function index()
	{
		$data['title'] = 'Halaman Login';
		$this->load->view('backend/login');
	}

	function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' =>md5($password)
			);
		$cek = $this->m_login->cek_login("tb_admin",$where)->num_rows();
		if($cek > 0){

			$data_session = array(
				'nama' => $username,
				'status' => "login"
				);

			$this->session->set_userdata($data_session);

			//redirect(base_url("home_admin"));
			echo " selamat Datang di Halaman Admin ";

		}else{
			echo "Username dan password salah !";
		}
	}
}
