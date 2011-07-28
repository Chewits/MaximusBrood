<? 
 
class BattlenetHelper extends Helper {
	//this code is adapted from chewits' 'scraper'

	function recentgames($sc2id) {
		
		$bnetprofile = ($sc2id);
		$bnetmatches = ($bnetprofile."matches");
		
		//fetch the profile
    	$html = file_get_contents($bnetmatches);
    	
    	//parse the profile
    	preg_match_all(
			'/<div id="match-mode-.".*?<strong>Type:<\/strong>(.*?)<br \/>.*?<strong>Speed:<\/strong>.*?<\/td>.*?<td>(.*?)<\/td>.*?<td class="align-center">.*?<\/td>.*?<td>.*?<span class="match-.*?">(.*?)<\/span>.*?<\/td>.*?<td class="align-right">(.*?)<\/td>/s',
			$html,
			$games,
			PREG_SET_ORDER
		);
		
		//the regex here isnt great so parse the returned result into something nicer
		$neatgames = array();
		foreach ($games as $game) {
		
			$neatgame = array(
				'type'=>trim($game[1]),
				'map'=>trim($game[2]),
				'result'=>trim($game[3]),
				'date'=>trim($game[4])
			);
			array_push($neatgames, $neatgame);
		}
		
		return $neatgames;
	}
	
	function gameinfo($sc2id) {
		//this code is adapted from chewits' 'scraper'
		
		$bnetprofile = ($sc2id);
    	$html = file_get_contents($bnetprofile);
    	
		preg_match_all(
			'/<h4>League Wins<\/h4>.*?<h2>(.*?)<\/h2>.*?<br \/>.*?<h4>Games Played<\/h4>.*?<ul>.*?<li>.*?<span>(.*?)<\/span>/s',
			$html,
			$playerinfo,
			PREG_SET_ORDER
		);
	
		$neatplayerinfo = array();
		foreach ($playerinfo as $item) {
			$neatplayerinfo = array('wins'=>$item[1], 'customs'=>$item[2]);
		}
		
		preg_match_all(
				'/Most Played Race:.*?<a href="ladder\/" class="(.*?)">/s',
				$html,
				$race,
				PREG_SET_ORDER
			);
		
		$neatplayerinfo['race'] = substr($race[0][1], 5);
		
		return $neatplayerinfo;
	}
    function divisions($sc2id) {
		//this code is adapted from chewits' 'scraper'
		
		$bnetprofile = ($sc2id);
    	$html = file_get_contents($bnetprofile);
    	
    	$preg_fourvfour = preg_match_all(
		'/<div class="ladder" data-tooltip="#best-team-4">.*?<span class="(.*?)">.*?<div class="tooltip-title">Highest Ranked in 4v4<\/div>.*?<strong>Division:<\/strong> (.*?)<br \/>.*?<strong>Rank:<\/strong> (.*?)<\/div>/s',
		$html,
		$games,
		PREG_SET_ORDER
		);
	
		
		return $games;
	}
    
}
  
?>