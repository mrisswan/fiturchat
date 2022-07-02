<?php

if (isset($_SESSION)) {
	$image = $_SESSION['image'];
	$name = $data[0]['user_fname'] . " " . $data[0]['user_lname'];
}
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/message/messagestyle.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
	<link rel="stylesheet" href="../assets/css/message/loading-bar.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<title>Freework</title>
</head>

<body>
	<?php echo validation_errors('text_chat'); ?>
	<?php echo form_open('message/sendmessage', [], ['receiver_message_id' => '']); ?>
	<section id="main" class="bg-dark">
		<div id="chat_user_list">
			<div id="headerchat">
				<ul id="header-icon">
					<li>
						<ion-icon name="settings"></ion-icon>
					</li>
					<li>Kotak Pesan</li>
					<li>
						Semua
						<ion-icon name="chevron-down-outline"></ion-icon>
					</li>
				</ul>
			</div>
			<div id="user_list" class="py-3">
			</div>
		</div>
		<div id="chatbox">
			<!-- <div id="data_container" class="">
				<div id="bg_image"></div>
				<h2 class="mt-0">Hi There! Welcome To</h2>
				<h2>Real-Time Chat Application</h2>
				<p class="text-center my-2">Connect to your device via Internet. Remember that you <br> must have a stable Internet Connection for a<br> greater experience.</p>
			</div> -->
			<div class="chatting_section" id="chat_area" style="display: none">
				<div id="header" class="py-2">
					<div id="name_details" class="pt-2">
						<div id="chat_profile_image" class="mx-2" style="background-size: 100% 100%">
							<div id="online"></div>
						</div>
						<div id="name_last_seen">
							<h6 class="m-0 pt-2"></h6>
							<p class="m-0 py-1"></p>
						</div>
					</div>
					<div id="icons" class="px-4 pt-2">
						<!-- <div id="send_mail">
							<a href="" id="mail_link"><i class="fas fa-envelope text-dark"></i></a>
						</div> -->
						<!-- <div id="details_btn" class="ml-3">
							<i class="fas fa-info-circle text-dark"></i>
						</div> -->
					</div>
				</div>
				<div id="chat_message_area">
				</div>
				<div id="messageBar" class="py-4 px-4">
					<div id="textBox_attachment_emoji_container">
						<div id="text_box_message">
							<input type="text" name="text_chat" value="<?php echo set_value('text_chat'); ?>" maxlength="200" id="messageText" class="form-control" placeholder="Type your message" required>
						</div>
						<div id="text_counter">
							<p id="count_text" class="m-0 p-0"></p>
						</div>
					</div>
					<div id="sendButtonContainer">
						<button class="btn" type="submit" id="send_message">
							<span class="material-icons">send</span>
						</button>
					</div>
				</div>
			</div>
		</div>

		<!-- <div id="details_of_user">
			<div id="user_details_container_avtar" style="background-size: 100% 100%"></div>
			<h5 class="text-justify" id="details_of_name"></h5>
			<p class="text-justify" id="details_of_bio"></p>
			<div id="user_details_container_details">
				<p class="text-justify" id="details_of_created"></p>
				<p class="text-justify" id="details_of_birthday"></p>
				<p class="text-justify" id="details_of_mobile"><span></p>
				<p class="text-justify" id="details_of_email"><span></p>
				<p class="text-justify" id="details_of_location"><span></p>
			</div>
			<button class="btn btn-danger" id="btn_block">Block User</button>
		</div> -->
		<div id="information_list">
			<!-- <div id="owner_profile_details">
				<div id="owner_avtar" style="background-image: url('../upload/<?php echo $image; ?>'); background-size: 100% 100%">
					<div>
						<div id="online"></div>
					</div>
				</div>
				<div id="owner_profile_text" class="">
					<h6 id="owner_profile_name" class="m-0 p-0"><?php echo $name; ?></h6>
					<div id="bio">
						<p id="owner_profile_bio" class="m-0 p-0"></p>
						<i class="fas fa-edit" id="edit_icon"></i>
					</div>
					<a class="text-decoration-none" href="" id="logout" style="color:#e86663;"><i class="fa fa-power-off"></i> Logout</a>
				</div>
			</div> -->
			<div id="headerchat">
				<div class="header-right">
					Status Order
				</div>
			</div>
			<!-- <div id="search_box_container" class="py-3">
				<input type="text" name="txt_search" class="form-control" autocomplete="off" placeholder="Search User" id="search">
			</div> -->
			<!-- <hr /> -->
			<!-- <div id="user_list" class="py-3">
				</div> -->
			<div class="Procces">
				<ul class="inherit">
					<li>Order dibuat
						<ul class="Procces2">
							<li>3 Jan 2022 Chat dimulai</li>
						</ul>
					</li>
					<li>Pembayaran
						<ul class="Procces2">
							<li>3 Jan 2022 Chat dimulai</li>
						</ul>
					</li>
					<li>Bekerja
						<ul class="Procces2">
							<li>3 Jan 2022 Chat dimulai</li>
						</ul>
					</li>
					<li>Tinjauan
						<ul class="Procces2">
							<li>3 Jan 2022 Chat dimulai</li>
						</ul>
					</li>
					<li>Selesai
						<ul class="Procces2">
							<li>3 Jan 2022 Chat dimulai</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="status-order">
				<button type="button" class="btn btn-danger" class="align-middle">checkout</button>
				<!-- class="align-self-center mr-3" -->
				<br>
				<button type="button" class="btn btn-info">checkout</button>
			</div>
			<div class="profil_chat">
				<div class="block">
					<div class="imgbx">
						<span><img src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rachel.jpeg" class="userimg" alt=""></span>
						<!-- <img src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rachel.jpeg" alt="" class="userimg"> -->
					</div>
					<div class="">
						<!-- details -->
						<div class="">
							<!-- listHead -->
							<h5>User 1</h5>
						</div>
						<div class="message_p">
							<p>hello, how to register in freework<, hello, how to register in freework<, hello, how to register in freework</p>
									<button type="button" class="btn btn-outline-primary">Profil</button>
						</div>
					</div>
				</div>
			</div>
			<div class="status-beli">
				<div class="block-beli">
					<div class="imgbx-beli">
						<span><img src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rachel.jpeg" class="userimg" alt=""></span>
						<!-- <img src="https://www.clarity-enhanced.net/wp-content/uploads/2020/06/rachel.jpeg" alt="" class="userimg"> -->
					</div>
					<div class="">
						<!-- details -->
						<div class="def">
							<p>Uang anda akan dilindungi oleh Freework hingga pekerjaanmu selesai.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div id="update_container">
		<div style="background-color:#F5F6FA;" class="p-3 d-flex justify-content-between align-items-center">
			<h5 id="update_container_title" class="m-0 p-0">Update Profile</h5>
			<i class="fas fa-times"></i>
		</div>
		<form class="" id="form_details" autocomplete="off">
			<div class="form-group">
				<label>Date Of Birth</label>
				<input type="text" name="txt_dob" id="dob" class="form-control" placeholder="dd-mm-yyyy">
			</div>
			<div class="form-group">
				<label>Contact Number</label>
				<input type="text" maxlength="10" name="txt_phone" placeholder="Write your mobile number" id="phone_num" class="form-control">
			</div>
			<div class="form-group">
				<label>Address</label>
				<input type="text" name="txt_addr" id="address" placeholder="Write your address" class="form-control">
			</div>
			<div class="form-group">
				<label>Bio</label>
				<textarea name="bio" class="" id="update_bio" placeholder="Write your bio here.."></textarea>
			</div>
			<button class="btn btn-block" id="update_btn" style="border-radius:0px;">
				<span>Save Changes</span>
			</button>
		</form>
	</div>

	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.1/gsap.min.js"></script>
	<script type="text/javascript" src="../assets/js/message/main.js"></script>
</body>

</html>