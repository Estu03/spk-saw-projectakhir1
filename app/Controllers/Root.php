<?php
namespace App\Controllers;
use CodeIgniter\Config\Services;
class Root extends BaseController{
	public function index(){
		//if(session()->get('admin')){
			return redirect()->to(base_url('admin'));
		//}else{
		//	return view('situs/landing');
		//	}
	}
}
?>