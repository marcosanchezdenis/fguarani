<?php
class ControllerModuleBigTeaser extends Controller {
	public function index($setting) {
		static $module = 0;		

		$this->load->model('design/banner');
		$this->load->model('tool/image');
		$this->load->language('module/big_teaser');


		$data['text_titulo'] = $this->language->get('text_titulo');
		$data['content'] = $this->language->get('content');

		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		//$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');


		$data['module'] = $module++;

		return $this->load->view('module/big_teaser', $data);
	}
}
