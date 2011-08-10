<?php 

class BbcodeHelper extends Helper {


	function mail_protect($mailaddress) {
		$protected_mail = "";
		$arr = unpack("C*", $mailaddress);
		foreach ($arr as $entry) {
			$protected_mail .= sprintf("%%%X", $entry);
		}
		return $protected_mail;
	}
	
	
	function unhtmlspecialchars($input) {
		$input = preg_replace("/&gt;/i", ">", $input);
		$input = preg_replace("/&lt;/i", "<", $input);
		$input = preg_replace("/&quot;/i", "\"", $input);
		$input = preg_replace("/&amp;/i", "&", $input);
	
		return $input;
	}


	function htmlnl($text){
		preg_match_all('/<(table|form|li|ul|ol|tr|td|dl|dt|dd|dir|menu|th|thead|caption|colgroup|col|tbody|tfoot|div|span*)[^>]*>(.*?)<\/\1>/si',$text,$matches,PREG_SET_ORDER);
		foreach($matches as $match){
			if(stristr($match[0],'class="quote"') === false && 
				 stristr($match[0],'class="code"') === false && 
				 stristr($match[0],'align=') === false &&
				 stristr($match[0],'size=') === false && 
				 stristr($match[0],'color=') === false){
				$new_str = str_replace(array("\r\n", "\n", "\r"),array("", "", ""),$match[0]);
				$text = str_replace($match[0],$new_str,$text);
			}
		}
		return $text;
	}


	function fixJavaEvents($string){
		return str_replace(array('onabort=', 'onblur=', 'onchange=', 'onclick=', 'ondblclick=', 'onerror=', 'onfocus=', 'onkeydown=', 'onkeypress=', 'onkeyup=', 'onload=', 'onmousedown=', 'onmousemove=', 'onmouseout=', 'onmouseover=', 'onmouseup=', 'onreset=', 'onresize=', 'onselect=', 'onsubmit=', 'onunload=', ' '),'',$string);
	}
	
	
	function imgreplace($content) {
	
		$picsize_l = 800; // This is max width of image size to be shown
		$picsize_h = 600; // This is max height of image size to be shown
		$autoresize = 2;
	
		if($autoresize>0) {
			preg_match_all("#(\[img\])(.*?)(png|gif|jpeg|jpg)(\[\/img\])#i", $content, $imgtags, PREG_SET_ORDER);
			$i=0;
			foreach($imgtags as $teil) {
				$teil[2] .= $teil[3];
				$i++;
				if($autoresize == 1) {
					$picinfo = getimagesize($teil[2]);
					switch($picinfo[2]) {
						case 1: $format = "gif"; break;
						case 2: $format = "jpeg"; break;
						case 3: $format = "png"; break;
					}
					if(!$picsize_l) $size_l = "9999"; else $size_l=$picsize_l;
					if(!$picsize_h) $size_h = "9999"; else $size_h=$picsize_h;
					if($picinfo[0] > $size_l OR $picinfo[1] > $size_h) 
					$content = str_ireplace('[img]'.$teil[2].'[/img]', '[url='.$teil[2].']<img src="'.$this->fixJavaEvents($teil[2]).'" border="0" width="'.$picsize_l.'" alt="'.$teil[2].'" /><br />([i]Auto Resize: '.$picinfo[1].'x'.$picinfo[0].'px, '.$format.'[/i])[/url]', $content);
					elseif($picinfo[0] > (2*$size_l) OR $picinfo[1] > (2*$size_h)) $content = str_ireplace('[img]'.$teil[2].'[/img]', '[url='.$teil[2].'][b]Large Picture[/b]<br />('.$picinfo[1].'x'.$picinfo[0].'px, '.$format.')[/url]', $content);
					else $content = preg_replace('#\[img\]'.preg_quote($teil[2],"#").'\[/img\]#si', '<img src="'.$this->fixJavaEvents($teil[2]).'" border="0" alt="'.$teil[2].'" />', $content, 1);
				}
				else {
					$n = str_replace('.', '', microtime(1)).'_'.$i;
					$n = str_replace(' ', '', $n);
					$content = preg_replace('#\[img\]'.preg_quote($teil[2],"#").'\[/img\]#si', '<img src="'.$this->fixJavaEvents($teil[2]).'" id="ws_image_'.$n.'" border="0" onload="checkSize(\''.$n.'\', '.$picsize_l.', '.$picsize_h.')" alt="'.$this->fixJavaEvents($teil[2]).'" style="max-width: '.($picsize_l+1).'px; max-height: '.($picsize_h+1).'px;" /><div id="ws_imagediv_'.$n.'" style="display:none;">[url='.$this->fixJavaEvents($teil[2]).'][i]Auto Resize: Show Original)[/i][/url]</div>', $content, 1);
				}
			}
		}
		else $content = preg_replace("#\[img\](.*?)(png|gif|jpeg|jpg)\[/img\]#sie", "'<img src=\"'.fixJavaEvents('\\1\\2').'\" border=\"0\" alt=\"'.fixJavaEvents('\\1\\2').'\" />'", $content);
	
		return $content;
	}


	function tubereplace($content) {
	
		$content = str_ireplace("http://www.youtube.com/watch?v=", "", $content);
		$search1 = stripos($content, "&");
		$search2 = stripos($content, "[/youtube]");  
		if ($search1 != FALSE) {
			$junk = substr($content, $search1, $search2 - $search1);
			$content = str_replace($junk, "", $content);
		}
				$content = preg_replace("#\[youtube\](.*?)\[/youtube\]#si", '<iframe width="560" height="349" src="http://www.youtube.com/embed/\\1" frameborder="0" allowfullscreen></iframe>', $content);
	
		return $content;
	}
	

function quotereplace($content) {
  
	$content = str_ireplace('[quote]', '[quote]', $content);
	$content = str_ireplace('[/quote]', '[/quote]', $content);
	$wrote = "wrote";
	$content = preg_replace("#\[quote=(.*?)\]#si", "[quote][b]\\1 ".$wrote.":[/b][br][hr]",$content);

	//prepare: how often start- and end-tag occurrs
	$starttags = substr_count($content, '[quote]');
	$endtags = substr_count($content, '[/quote]');

	$overflow=abs($starttags-$endtags);

	for($i=0;$i<$overflow;$i++) {
		if($starttags>$endtags) $content=$content.'[/quote]';
		elseif($endtags>$starttags) $content='[quote]'.$content;
	}

	$content = preg_replace("#\[quote\]#s", '<div class="quote">', $content, 10);  // Need to adjust width and height of div to suit design
	$content = preg_replace("#\[/quote\]#s", '</div>', $content, 10);

	//remove overflowed quote-tags

	$content = str_replace('[quote]','',$content);
	$content = str_replace('[/quote]','',$content);

	return $content;

}


	function cut_middle($str, $max = 75 ){
	 	$strlen = mb_strlen($str);
		if( $strlen>$max ){
			$part1 = mb_substr($str,0,$strlen/2);
			$part2 = mb_substr($str,$strlen/2);
			$part1 = mb_substr($part1,0,($max/2)-3)."...";
			$part2 = mb_substr($part2,-($max/2));
			$str = $part1.$part2;
		}
		return $str;
	}
	
	
	function urlreplace($content){	
	 	$starttags = substr_count(strtolower($content), strtolower('[url'));
		$endtags = substr_count(strtolower($content), strtolower('[/url]'));
		$overflow=abs($starttags-$endtags);
		for($i=0;$i<$overflow;$i++) {
			if($starttags>$endtags) $content=$content.'[/url]';
			elseif($endtags>$starttags) $content='[url]'.$content;
		}
		$content = preg_replace("#\[url\](.*?)\[/url\]#i","[url=\\1]\\1[/url]",$content);
		preg_match_all("/\[url=(\[(.*?)\])\]/si",$content,$erg,PREG_SET_ORDER);
		foreach($erg as $match){
			preg_match("/\[(.*?)\](.*?)\[(.*?)\]/si",$match[1],$new_erg);
			$match_rep = str_replace($match[1],$new_erg[2],$match[0]);
			$content = str_replace($match[0],$match_rep,$content);
		}
		$content = preg_replace("#\[url=(.*?)\]#ie","'<a href=\"'.bbcodehelper::fixJavaEvents('\\1').'\" target=\"_blank\">'",$content);
		$content = preg_replace("#\<a href='www(.*?)' target='_blank'>#i","<a href='http://www\\1' target='_blank'>",$content);
		$content = str_ireplace("[/url]","</a>",$content);
		return $content;
	}
	
	
	function linkreplace($link){
		if( ord($link[1])==39 || ord($link[1])==62 ) return $link[0];
		else{
			$backup = "";
			$backup_end = "";
			if(mb_substr($link[0],-1,1) == "]"){
				$backup = mb_substr($link[0],0,1);
				$link[0] = mb_substr($link[0],1);
				$link[0] = mb_substr($link[0],0,mb_strrpos($link[0],"["));
				$backup_end = mb_substr($link[3],mb_strrpos($link[3],"["));
				$link[3] = mb_substr($link[3],0,mb_strrpos($link[3],"["));
			}
			$check = preg_match("%(http://|https://|ftp://|mailto:|news:|www\.)([a-zA-Z0-9-\.]{3,50})(\.[a-z]{2,4})%si",$link[0]);
		 	if($check){
				$http = $link[2];
			 	if(mb_substr($http,0,4)=="www."){
					$http = "http://".$http;
				}
				$link = str_replace(trim($link[0]),'<a href="'.$http.$link[3].'" target="_blank" rel="nofollow">'.$link[2].$link[3].'</a>',$link[0]);
				return $backup.$link.$backup_end;
			}
			return $backup.$link[0].$backup_end;
		}
	}
	
	
	function cut_urls($link){
	 	$new_str = $link[1];
	 	if(!stristr($link[1],"<img") && !stristr($link[1],"[SMILE")){
			$new_str = $this->cut_middle($link[1]);
		}
		$link[0] = ( stristr($link[0],"javascript:") ) ? str_ireplace("javascript:","#killed",$link[0]) : $link[0];
		return str_replace(">".$link[1],">".$new_str,$link[0]);
	}
	
	
	function replacement($content) {
	
			$content = $this->imgreplace($content);
			$content = $this->quotereplace($content);
			$content = $this->urlreplace($content);
			$content = $this->tubereplace($content);
			$content = preg_replace_callback("#(^|<[^\"=]{1}>|\s|\[b|i|u\]][^<a.*>])(http://|https://|ftp://|mailto:|news:|www.)([^\s<>|$]+)#si",array($this, 'linkreplace'),$content);
			$content = preg_replace("#\[email\](.*?)\[/email\]#sie", "'<a href=\"mailto:'.bbcodehelper::mail_protect(bbcodehelper::fixJavaEvents('\\1')).'\">'.bbcodehelper::fixJavaEvents('\\1').'</a>'", $content);
			$content = preg_replace("#\[email=(.*?)\](.*?)\[/email\]#sie", "'<a href=\"mailto:'.mail_protect(fixJavaEvents('\\1')).'\">\\2</a>'", $content);
			$content = preg_replace_callback("#<a\b[^>]*>(.*?)</a>#si",array($this, 'cut_urls'),$content);
			while(preg_match("#\[size=(.*?)\](.*?)\[/size\]#si", $content)){
			  $content = preg_replace("#\[size=(.*?)\](.*?)\[/size\]#si", "<font size=\"\\1\">\\2</font>", $content);
			}
			while(preg_match("#\[color=(.*?)\](.*?)\[/color\]#si", $content)){  
			  $content = preg_replace("#\[color=(.*?)\](.*?)\[/color\]#si", "<font color=\"\\1\">\\2</font>", $content);
			}
			while(preg_match("#\[font=(.*?)\](.*?)\[/font\]#si", $content)){
			  $content = preg_replace("#\[font=(.*?)\](.*?)\[/font\]#si", "<font face=\"\\1\">\\2</font>", $content);
			}
			while(preg_match("#\[align=(.*?)\](.*?)\[/align\]#si", $content)){
			  $content = preg_replace("#\[align=(.*?)\](.*?)\[/align\]#si", "<div align=\"\\1\">\\2</div>", $content);
			}
			$content = preg_replace("#\[b\](.*?)\[/b\]#si", "<b>\\1</b>",$content);
			$content = preg_replace("#\[i\](.*?)\[/i\]#si", "<i>\\1</i>",$content);
			$content = preg_replace("#\[u\](.*?)\[/u\]#si", "<u>\\1</u>",$content);
			$content = preg_replace("#\[s\](.*?)\[/s\]#si", "<s>\\1</s>",$content);
			$content = preg_replace("#\[list\][\s]{0,}(.*?)\[/list\]#si", "<ul class='list'>\\1</ul>", $content);
			$content = preg_replace("#\[list=1\][\s]{0,}(.*?)\[/list=1\]#si", "<ol class='list_num'>\\1</ol>", $content);
			$content = preg_replace("#\[list=a\][\s]{0,}(.*?)\[/list=a\]#si", "<ol type=\"a\" class='list_alpha'>\\1</ol>", $content);
			$content = preg_replace("#\[\*\](.*?)\[/\*\](\s){0,}#si", "<li>\\1</li>", $content);
			$content = preg_replace("#\[br]#si", "<br />", $content);
			$content = preg_replace("#\[hr]#si", "<hr />", $content);
		return $content;
	}



	// function to allow BBCode only

	function bbcodeon($text) {
		$text = htmlspecialchars($text);
		$text = strip_tags($text);
		$text = nl2br($text);
		$text = $this->replacement($text);
		$text = $this->htmlnl($text);
	
		return $text;
	}
	
	
	// function to allow HTML and BBCode
	
	function htmlon($text) {
		$text = $this->replacement($text);	
		$text = $this->htmlnl($text);
		$text = nl2br($text);
		
		return $text;
	}
		
}

?>