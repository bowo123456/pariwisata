<?php

class User extends CI_Controller{

	function __construct(){
		parent::__construct();
		$this->load->model('m_user');
        $this->load->helper('url');
        if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}

	}

  function index(){
		$data['user'] = $this->m_user->tampil_data()->result();
		$data['title'] = 'Halaman user';
    	$this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_user',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');

	}

	
	//Proses untuk Jenis user
	function tambah(){
		$data['title'] = 'Halaman user';
    	$this->load->view('backend/header-admin',$data);
		$this->load->view('backend/main-header');
		$this->load->view('backend/main-sidebar');
		$this->load->view('backend/v_user_input',$data);
		$this->load->view('backend/footer-copyright');
		$this->load->view('backend/control-sidebar');
		$this->load->view('backend/footer-admin');


	}

	function tambah_aksi(){
        
		$nama = $this->input->post('nama');
		$email = $this->input->post('email');
		$password = $this->input->post('password');
		$no_telp = $this->input->post('no_telp');
		$id_level = $this->input->post('id_level');

        $data = array(
		'nama' => $nama,
		'email' =>$email,
		'password' =>$password,
		'no_telp'=>$no_telp,
		'id_level'=>$id_level
        );
        
        $this->m_user->input_user($data,'tb_user');
        redirect('user');
        }

        
        
    function hapus($id){
        $where = array('id' => $id);
        $this->m_user->hapus_data($where,'tb_user');
        redirect('user');
        }
        
    function edit($id){
         $where = array('id' => $id);
        
         $data['user'] = $this->m_user->edit_data($where,'tb_user')->result();
         $data['title']='Halaman Edit Jenis user';
         $this->load->view('backend/header-admin',$data);
         $this->load->view('backend/main-header');
         $this->load->view('backend/main-sidebar');
         $this->load->view('backend/v_user_edit',$data);
         $this->load->view('backend/footer-copyright');
         $this->load->view('backend/control-sidebar');
        $this->load->view('backend/footer-admin');
        }
        
		function edit_aksi(){
			$id = $this->input->post('id');
			$nama = $this->input->post('nama');
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$no_telp = $this->input->post('no_telp');
			$id_level = $this->input->post('id_level');
	
			$data = array(
				'nama' => $nama,
				'email' => $email,
				'password' => $password,
				'no_telp' => $no_telp,
				'id_level' => $id_level
				);
			
			$where = array(
			'id' => $id);
			
			$this->m_user->get_update($where,$data,'tb_user');
			redirect('user');
			}
	

	




	



	



}
