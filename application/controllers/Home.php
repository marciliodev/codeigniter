<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('categorias_model','modelcategorias');
		$this->categorias = $this->modelcategorias->listar_categorias();
	}

	public function index()
	{
		$dados['categorias'] = $this->categorias;
		$this->load->model('publicacoes_model', 'modelpublicacoes');
		$dados['postagem'] = $this->modelpublicacoes->destaques_home();

		// Dados a serem enviados ao Cabeçalho
		$dados['titulo'] = 'Página Inicial';
		$dados['subtitulo'] = 'Postagens Recentes';
		
		$this->load->view('Frontend/template/html-header', $dados);
		$this->load->view('Frontend/template/header');
		$this->load->view('Frontend/home');
		$this->load->view('Frontend/template/aside');
		$this->load->view('Frontend/template/footer');
		$this->load->view('Frontend/template/html-footer');
	}
}
