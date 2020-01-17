<?php  
	namespace Apps\Libs\Admins;
	use Apps\Libs\Database\Database;


	class Admin extends Database {
		

		// Admin  Registration 
		public function adminTomiHoiyaJao($name, $uname, $email, $hash_pass) {
			$sql ="INSERT INTO users (user_name, user_uname, user_email, user_pass, status) VALUES ('$name','$uname','$email','$hash_pass','inactive')";
			$data = parent::connection() -> query($sql);

			if( $data ){
				return true;
			}
		}


		// User name check 
		public function tomiKiAgeThakaeAchooo($uname){
			$sql ="SELECT * FROM users WHERE user_uname='$uname'";
			$data = parent::connection() -> query($sql);

			$username_count  = $data -> num_rows;

			if($username_count > 0){
				return false;
			}else{
				return true;
			}
		}

		// Email Check
		public function emailCheck($email){
			$sql ="SELECT * FROM users WHERE user_email='$email'";
			$data = parent::connection() -> query($sql);

			$useremail_count  = $data -> num_rows;

			if($useremail_count > 0){
				return false;
			}else{
				return true;
			}
		}


		// Admin Login 
		public function userLogin($uname_email, $pass){
			$sql ="SELECT * FROM users WHERE user_uname='$uname_email' OR user_email='$uname_email' ";
			$data = parent::connection() -> query($sql);
			$login_user_data = $data -> fetch_assoc();
			$useremail_count  = $data -> num_rows;

			if($useremail_count == 1){
					
				if( password_verify(  $pass , $login_user_data['user_pass'] ) ){
					$_SESSION['user_id'] = $login_user_data['user_id'];
					$_SESSION['user_name'] = $login_user_data['user_name'];
					header("location:dashboard.php");
				}else{
					return "<p class='alert alert-danger'>Wrong Password  !<button class='close' data-dismiss='alert'>&times;</button></p>";
				}

			}else{
				return "<p class='alert alert-danger'>Username or Email is incorrect  !<button class='close' data-dismiss='alert'>&times;</button></p>";
			}
		}





	}








?>