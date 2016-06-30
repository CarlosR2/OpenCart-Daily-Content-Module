<?php
class ControllerModuleDailyContent extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/daily_content');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('daily_content', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_description'] = $this->language->get('entry_description');
		$data['entry_status'] = $this->language->get('entry_status');



		$data['text_monday'] = $this->language->get('text_monday');
		$data['text_tuesday'] = $this->language->get('text_tuesday');
		$data['text_wednesday'] = $this->language->get('text_wednesday');
		$data['text_thursday'] = $this->language->get('text_thursday');
		$data['text_friday'] = $this->language->get('text_friday');
		$data['text_saturday'] = $this->language->get('text_saturday');
		$data['text_sunday'] = $this->language->get('text_sunday');

		
		$data['text_well_box'] = $this->language->get('text_well_box');
		

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/daily_content', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/daily_content', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/daily_content', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/daily_content', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}




		if (isset($this->request->post['module_description_monday'])) {
			$data['module_description_monday'] = $this->request->post['module_description_monday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_monday'])) {
			$data['module_description_monday'] = $module_info['module_description_monday'];
		} else {
			$data['module_description_monday'] = '';
		}
		if (isset($this->request->post['module_description_tuesday'])) {
			$data['module_description_tuesday'] = $this->request->post['module_description_tuesday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_tuesday'])) {
			$data['module_description_tuesday'] = $module_info['module_description_tuesday'];
		} else {
			$data['module_description_tuesday'] = '';
		}
		if (isset($this->request->post['module_description_wednesday'])) {
			$data['module_description_wednesday'] = $this->request->post['module_description_wednesday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_wednesday'])) {
			$data['module_description_wednesday'] = $module_info['module_description_wednesday'];
		} else {
			$data['module_description_wednesday'] = '';
		}

		if (isset($this->request->post['module_description_thursday'])) {
			$data['module_description_thursday'] = $this->request->post['module_description_thursday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_thursday'])) {
			$data['module_description_thursday'] = $module_info['module_description_thursday'];
		} else {
			$data['module_description_thursday'] = '';
		}

		if (isset($this->request->post['module_description_friday'])) {
			$data['module_description_friday'] = $this->request->post['module_description_friday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_friday'])) {
			$data['module_description_friday'] = $module_info['module_description_friday'];
		} else {
			$data['module_description_friday'] = '';
		}

		if (isset($this->request->post['module_description_saturday'])) {
			$data['module_description_saturday'] = $this->request->post['module_description_saturday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_saturday'])) {
			$data['module_description_saturday'] = $module_info['module_description_saturday'];
		} else {
			$data['module_description_saturday'] = '';
		}

		if (isset($this->request->post['module_description_sunday'])) {
			$data['module_description_sunday'] = $this->request->post['module_description_sunday'];
		} elseif (!empty($module_info) && isset($module_info['module_description_sunday'])) {
			$data['module_description_sunday'] = $module_info['module_description_sunday'];
		} else {
			$data['module_description_sunday'] = '';
		}








		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}

		

		if (isset($this->request->post['well_box'])) {
			$data['well_box'] = $this->request->post['well_box'];
		} elseif (!empty($module_info) && isset($module_info['well_box'])) {
			$data['well_box'] = $module_info['well_box'];
		} else {
			$data['well_box'] = '';
		}

		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/daily_content.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/daily_content')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		return !$this->error;
	}
}