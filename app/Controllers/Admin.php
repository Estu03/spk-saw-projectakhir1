<?php
namespace App\Controllers;
use CodeIgniter\Config\Services;
class Admin extends BaseController{
	public function index(){
		return view('admin/landing');
	}
}
?>