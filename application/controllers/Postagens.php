<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Postagens extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$this->load->model('categorias_model','modelcategorias');
		$this->categorias = $this->modelcategorias->listar_categorias();
	}

	public function index($id, $slog=null)
	{
		$dados['categorias'] = $this->categorias;
		$this->load->model('publicacoes_model', 'modelpublicacoes');
		$dados['postagem'] = $this->modelpublicacoes->publicacao($id);

		// Dados a serem enviados ao Cabeçalho
		$dados['titulo'] = 'Publicação';
		$dados['subtitulo'] = '';
		$dados['subtitulodb'] = $this->modelpublicacoes->listar_titulo($id);

		$this->load->view('Frontend/template/html-header', $dados);
		$this->load->view('Frontend/template/header');
		$this->load->view('Frontend/publicacao');
		$this->load->view('Frontend/template/aside');
		$this->load->view('Frontend/template/footer');
		$this->load->view('Frontend/template/html-footer');
	}
}
