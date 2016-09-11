<?php
class ControllerInformationTrabaja extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('information/trabaja');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->request->post['email']);
			$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
			$mail->setText(print_r($this->request->post,true));

		$m = $this->request->post;
			$text= "<table>";
		
			if(isset($m['name'])){
				$text.='<tr><td>'.$this->language->get('entry_name').'</td><td>'.$m['name'].'</td></tr>';
			}
			if(isset($m['last'])){
				$text.='<tr><td>'.$this->language->get('entry_last').'</td><td>'.$m['last'].'</td></tr>';
			}
			if(isset($m['country_id'])){
				$this->load->model('localisation/country');
				$c= $this->model_localisation_country->getCountry($m['country_id']);
				$text.='<tr><td>'.$this->language->get('entry_country').'</td><td>'.$c['name'].'</td></tr>';
			}
			if(isset($m['zone_id'])){
				$this->load->model('localisation/zone');
				$z= $this->model_localisation_zone->getZone($m['zone_id']);
				$text.='<tr><td>'.$this->language->get('entry_zone').'</td><td>'.$z['name'].'</td></tr>';
			}
			if(isset($m['email'])){
				$text.='<tr><td>'.$this->language->get('entry_email').'</td><td>'.$m['email'].'</td></tr>';
			}
			if(isset($m['phone'])){
				$text.='<tr><td>'.$this->language->get('entry_phone').'</td><td>'.$m['phone'].'</td></tr>';
			}
			if(isset($m['enquiry'])){
				$text.='<tr><td>'.$this->language->get('entry_enquiry').'</td><td>'.$m['enquiry'].'</td></tr>';
			}

			/* Formacion acedemica */
			if(isset($m['formacion_id'])){
				$text.='<tr><td>'.$this->language->get('entry_formacion').'</td><td>'.$m['formacion_id'].'</td></tr>';
			}

			/* Puesto */
			if(isset($m['puesto_id'])){
				$text.='<tr><td>'.$this->language->get('entry_puesto').'</td><td>'.$m['puesto_id'].'</td></tr>';
			}

			/* Intereses */
			if(isset($m['interes_id'])){
				$text.='<tr><td>'.$this->language->get('entry_intereses').'</td><td>';
				$text.='<ul>';
				foreach ($m['interes_id'] as $value) {
					$text.="<li>$value</li>";
				}
				$text.='</ul>';
				$text.='</td></tr>';
			}
			$text.='</table>';
			$mail->setHtml($text);

//**************
			if($this->request->post['file']){
		      $this->load->model('tool/upload');
		      $upload_info = $this->model_tool_upload->getUploadByCode($this->request->post['file']);
		      $phyname = DIR_UPLOAD.$upload_info['filename'];
		      $temp_name = DIR_UPLOAD.$upload_info['name'];
		      copy($phyname,$temp_name);
		      $mail->AddAttachment($temp_name);
		    }

		    



			$mail->send();
			if(isset($temp_name)){
		     unlink( $temp_name );
		    }


			//$this->response->redirect($this->url->link('information/trabaja/success'));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/trabaja')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_location'] = $this->language->get('text_location');

		$data['intereses'] = $this->language->get('intereses');
		$data['text_intereses'] = $this->language->get('text_intereses');

		$data['puestos'] = $this->language->get('puestos');
		
		$data['text_puesto'] = $this->language->get('text_puesto');

		$data['formaciones'] = $this->language->get('formaciones');
		$data['entry_formacion'] = $this->language->get('entry_formacion');

		$data['text_store'] = $this->language->get('text_store');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_telephone'] = $this->language->get('text_telephone');
		$data['text_fax'] = $this->language->get('text_fax');
		$data['text_open'] = $this->language->get('text_open');
		$data['text_comment'] = $this->language->get('text_comment');
		$data['text_select'] = $this->language->get('text_select');

		$data['text_file'] = $this->language->get('text_file');

		$data['entry_file'] = $this->language->get('entry_file');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_last'] = $this->language->get('entry_last');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_enquiry'] = $this->language->get('entry_enquiry');
		$data['entry_country'] = $this->language->get('entry_country');
		$data['entry_zone'] = $this->language->get('entry_zone');
		$data['entry_phone'] = $this->language->get('entry_phone');

		$data['button_map'] = $this->language->get('button_map');

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['last'])) {
			$data['error_last'] = $this->error['last'];
		} else {
			$data['error_last'] = '';
		}


		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}


		if (isset($this->error['phone'])) {
			$data['error_phone'] = $this->error['phone'];
		} else {
			$data['error_phone'] = '';
		}

		if (isset($this->error['enquiry'])) {
			$data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$data['error_enquiry'] = '';
		}

		if (isset($this->error['country'])) {
			$data['error_country'] = $this->error['country'];
		} else {
			$data['error_country'] = '';
		}

		if (isset($this->error['zone'])) {
			$data['error_zone'] = $this->error['zone'];
		} else {
			$data['error_zone'] = '';
		}

		if (isset($this->error['intereses'])) {
			$data['error_intereses'] = $this->error['intereses'];
		} else {
			$data['error_intereses'] = '';
		}

		if (isset($this->error['formacion'])) {
			$data['error_formacion'] = $this->error['formacion'];
		} else {
			$data['error_formacion'] = '';
		}

		if (isset($this->error['puesto'])) {
			$data['error_puesto'] = $this->error['puesto'];
		} else {
			$data['error_puesto'] = '';
		}

		$data['button_submit'] = $this->language->get('button_submit');

		$data['action'] = $this->url->link('information/trabaja', '', true);

		$this->load->model('tool/image');

		if ($this->config->get('config_image')) {
			$data['image'] = $this->model_tool_image->resize($this->config->get('config_image'), $this->config->get($this->config->get('config_theme') . '_image_location_width'), $this->config->get($this->config->get('config_theme') . '_image_location_height'));
		} else {
			$data['image'] = false;
		}

		$data['store'] = $this->config->get('config_name');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['geocode'] = $this->config->get('config_geocode');
		$data['geocode_hl'] = $this->config->get('config_language');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');

		$data['locations'] = array();

		$this->load->model('localisation/location');

		foreach((array)$this->config->get('config_location') as $location_id) {
			$location_info = $this->model_localisation_location->getLocation($location_id);

			if ($location_info) {
				if ($location_info['image']) {
					$image = $this->model_tool_image->resize($location_info['image'], $this->config->get($this->config->get('config_theme') . '_image_location_width'), $this->config->get($this->config->get('config_theme') . '_image_location_height'));
				} else {
					$image = false;
				}

				$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'geocode'     => $location_info['geocode'],
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment']
				);
			}
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} else {
			$data['name'] = $this->customer->getFirstName();
		}

	if (isset($this->request->post['last'])) {
			$data['last'] = $this->request->post['last'];
		} else {
			$data['last'] = $this->customer->getLastName();
		}
		
		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['phone'])) {
			$data['phone'] = $this->request->post['phone'];
		} else {
			$data['phone'] = $this->customer->getTelephone();
		}

		if (isset($this->request->post['enquiry'])) {
			$data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$data['enquiry'] = '';
		}


		$this->load->model('localisation/country');

		$data['countries'] = $this->model_localisation_country->getCountries();

		// Captcha
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'), $this->error);
		} else {
			$data['captcha'] = '';
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/trabaja', $data));
	}

	protected function validate() {
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
			$this->error['enquiry'] = $this->language->get('error_enquiry');
		}

		// Captcha
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

			if ($captcha) {
				$this->error['captcha'] = $captcha;
			}
		}

		return !$this->error;
	}

	public function success() {
		$this->load->language('information/trabaja');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/trabaja')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_message'] = $this->language->get('text_success');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		//$this->response->setOutput($this->load->view('common/success', $data));
	}
}
