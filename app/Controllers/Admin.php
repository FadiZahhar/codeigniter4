<?php namespace App\Controllers;

class Admin extends BaseController
{
	public function index()
	{
		
		echo "this is a sample message from admin controller";
		//return view('welcome_message');
		echo "<br />";
		echo tbl_products();
	}

	//--------------------------------------------------------------------

}
