<?php
class ControllerModuleDailyContent extends Controller {
	public function index($setting) {
		
		$day =date('N');

		switch ($day) {
			case 1:
				$day = 'monday';
				break;
			case 2:
				$day = 'tuesday';
				break;
			case 3:
				$day = 'wednesday';
				break;
			case 4:
				$day = 'thursday';
				break;
			case 5:
				$day = 'friday';
				break;
			case 6:
				$day = 'saturday';
				break;
			case 7:
				$day = 'sunday';
				break;
			default:
				$day ='monday';
				break;
		}

		
		$data['well_box'] = $setting['well_box'];
		if((isset($setting['module_description_'.$day][$this->config->get('config_language_id')]))){

		
			$data['heading_title'] = html_entity_decode($setting['module_description_'.$day][$this->config->get('config_language_id')]['title'], ENT_QUOTES, 'UTF-8');
			$data['daily_content'] = html_entity_decode($setting['module_description_'.$day][$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/daily_content.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/daily_content.tpl', $data);
			} else {
				return $this->load->view('default/template/module/daily_content.tpl', $data);
			}
		}

	}
}