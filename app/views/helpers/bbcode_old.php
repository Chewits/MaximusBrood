<?php 
App::import('helper','shortcode');
class BbcodeHelper extends Shortcode{

    function __construct(){
        // Register the shortcodes
        $this->add_shortcode(array(
            array( 'b' , array(&$this, 'shortcode_bold')),
            array( 'i' , array(&$this, 'shortcode_italics') ),
            array( 'u' , array(&$this, 'shortcode_underline') ),
            array( 'url' , array(&$this, 'shortcode_url') ),
            array( 'img' , array(&$this, 'shortcode_image') ),
            array( 'quote' , array(&$this, 'shortcode_quote') ),
            array( 'youtube' , array(&$this, 'shortcode_youtube') ),
            array( 'color' , array(&$this, 'shortcode_color') )
        ));
    }
    
    function _beforeShortcode($content){
        return htmlspecialchars($content);
    }
    
    function _afterShortcode($content){
        return  nl2br($content);
    }
    
   

    // No-name attribute fixing
    function attributefix( $atts = array() ) {
        if ( empty($atts[0]) ) return $atts;

        if ( 0 !== preg_match( '#=("|\')(.*?)("|\')#', $atts[0], $match ) )
            $atts[0] = $match[2];

        return $atts;
    }


    // Bold
    function shortcode_bold( $atts = array(), $content = NULL ) {
        return '<strong>' . $this->do_shortcode( $content ) . '</strong>';
    }

    // Italics
    function shortcode_italics( $atts = array(), $content = NULL ) {
        return '<em>' . $this->do_shortcode( $content ) . '</em>';
    }

	// Underline
    function shortcode_underline( $atts = array(), $content = NULL ) {
        return '<span style="text-decoration:underline">' . $this->do_shortcode( $content ) . '</span>';
    }

	// Url
    function shortcode_url( $atts = array(), $content = NULL ) {
        $atts = $this->attributefix( $atts );

        // Google
        if ( isset($atts[0]) ) {
            $url = $atts[0];
            $text = $content;
        }
        // http://www.google.com/
        else {
            $url = $text = $content;
        }

        if ( empty($url) ) return '';
        if ( empty($text) ) $text = $url;

        return '<a href="' . $url . '">' . $this->do_shortcode( $text ) . '</a>';
    }

	// Image
    function shortcode_image( $atts = array(), $content = NULL ) {
        return '<img src="' . $content . '" alt="" />';
    }

	// Quote
    function shortcode_quote( $atts = array(), $content = NULL ) {
        return '<div class="quote"><hr />' . $this->do_shortcode( $content ) . '<hr /></div>';
    }
    
    
    // Youtube - Half works, if add a youtubelink with &bits after the main ID, it doesnt seem to remove them?
    function shortcode_youtube( $atts = array(), $content = NULL ) {
    
	    $content = str_ireplace("http://www.youtube.com/watch?v=", "", $content);
		$search1 = stripos($content, "&");
		$search2 = stripos($content, "[/youtube]");  
		if ($search1 != FALSE) {
			$junk = substr($content, $search1, $search2 - $search1);
			$content = str_replace($junk, "", $content);
		}
					
		return '<iframe width="560" height="349" src="http://www.youtube.com/embed/'.$content.'" frameborder="0" allowfullscreen></iframe>';
	        
	}
	
	
	// Font Color
	
	function shortcode_color($atts = array(), $content = NULL) {
	
		while(preg_match("#\[color=(.*?)\](.*?)\[/color\]#si", $content)){  
			$content = preg_replace("#\[color=(.*?)\](.*?)\[/color\]#si", "<font color=\"\\1\">\\2</font>", $content);
		}
	return $this->do_shortcode($content);
	
	}
      
}
?> 