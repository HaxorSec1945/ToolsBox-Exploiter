<html>
	<body onLoad="type_text()" ; bgColor=#FFFFFFF">
<form method="post">
Dork: <input type="text" name="dork" value="inurl:/wp-content/themes/u-design" size="50" height="10">
<input type="submit" value="scan">
</form>
</html>
<?php
// IndoXploit
// Mr. Error 404 - shor7cut - tu5b0l3d - UstadCage_48 - sohai sec7or - cyber_taregh - ./MrJ - Mr. Xenophobic - bunglon_ijo - k3c0t - jackwild3r - wisnu404 - magelang6etar - Falcon-G21 - Rieqyns13
class indoxploit {
	public $dork;
	public function google($dork, $page) {
		$kunAPI = "AIzaSyDYG1FME1N7meBZLcywY7VojMHmtUAUIzY";
		$dork = urlencode($dork);
    	$url = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&hl=iw&rsz=8&q={$dork}&key=$kunAPI&start={$page}";
    	$output = json_decode($this->http_getx($url, true), true);
    	if($output) {
    		return $output;
    	} else {
    		return false;
    	}
	}
	public function http_getx($url, $safemode = false) {
		if($safemode === true) sleep(1);
        $im = curl_init($url);
        curl_setopt($im, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($im, CURLOPT_CONNECTTIMEOUT, 10);
        curl_setopt($im, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($im, CURLOPT_HEADER, 0);
        return curl_exec($im);
        curl_close();
	}
	public function buffer() {
		ob_flush();
		flush();
	}
	
}
$dorker = new indoxploit;
$dork = $dorker->dork = $_POST['dork'];
if(isset($dork)) {
	$data = $dorker->google($dork, "0");
	$dorker->buffer();
	if($data) {
		foreach($data['responseData']['cursor']['pages'] as $key => $data_page) {
			$data = $dorker->google($dork, $data_page['start']);
			foreach($data['responseData']['results'] as $key => $load_data) {
				if($_SESSION[$load_data['visibleUrl']]) {
				} else {
					$_SESSION[$load_data['visibleUrl']] = "1";
					$url = "http://".$load_data['visibleUrl']."/";
					echo $url."<br>";
				$dorker->buffer();
				}
			}
		}
	$dorker->buffer();
	} else {
		echo "google captcha.";
	}
}
