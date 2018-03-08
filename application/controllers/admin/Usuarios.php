<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {

	public function __construct(){
		parent::__construct();
	}

	public function index()
	{
		// Dados a serem enviados ao Cabeçalho
		$dados['titulo'] = 'Painel de Controle';
		$dados['subtitulo'] = 'Home';
		

		$this->load->view('backend/template/html-header', $dados);
		$this->load->view('backend/template/template');
		$this->load->view('backend/home');
		$this->load->view('backend/template/html-footer');
	}

	public function pag_login(){
		// Dados a serem enviados ao Cabeçalho
		$dados['titulo'] = 'Painel de Controle';
		$dados['subtitulo'] = 'Entrar no Sistema';
		

		$this->load->view('backend/template/html-header', $dados);
		$this->load->view('backend/login');
		$this->load->view('backend/template/html-footer');
	}

	public function login(){	                
		$this->load->library('form_validation');
		$this->form_validation->set_rules('txt-user','Usuário', 
			'required|min_length[3]');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('txt-senha','Senha', 
			'required|min_length[3]');
		if ($this->form_validation->run() == FALSE){
			$this->pag_login();
		}else{
				$usuario=$this->input->get('txt_user');
				$senha=$this->input->get('txt_senha');
				$this->db->where('user', $usuario);
				$this->db->where('senha', $senha);
                                //verificar dados para alimentar variável.
				$userlogado=$this->db->get('usuario')->result();
				if (count($userlogado == 1)){
					$dadosSessao['userlogado']= $userlogado[0];
					$dadosSessao['logado']= TRUE;
					$this->session->set_userdata($dadosSessao);
					redirect(base_url('admin'));
				}else{
					$dadosSessao['userlogado']= NULL;
					$dadosSessao['logado']= FALSE;
					$this->session->set_userdata($dadosSessao);
					redirect(base_url('admin/login'));
				}
                        }
                
		}
		public function logout(){
			$dadosSessao['userlogado']= NULL;
			$dadosSessao['logado']= FALSE;
			$this->session->set_userdata($dadosSessao);
			redirect(base_url('admin/login'));
		}
	}