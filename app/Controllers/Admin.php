<?php 
namespace App\Controllers;
use CodeIgniter\HTTP\IncomingRequest;

class Admin extends BaseController
{
	public function index()
	{
		
		//echo "this is a sample message from admin controller";
		return view('pages/login');
		//echo "<br />";
		//echo tbl_products();
	}

	//--------------------------------------------------------------------
	
	public function validate_login_details() {
		
		$request = service('request');
		$login_details = $request->getPost();
		
		$email = $login_details['txt_email'] ? $login_details['txt_email'] : "";
		//$password = isset($login_details['txt_password']) ? md5($login_details['txt_password']) : "";
		$password = isset($login_details['txt_password']) ? : "";
		
		if($email == "online@gmail.com" && $password == "123456") {
			echo "We have successfully logged in";
		}
		else {
			echo "we have some error";
		}
		
	}
}
