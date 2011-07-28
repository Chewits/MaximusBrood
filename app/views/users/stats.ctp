<?php 
	pr($pageviews);

       $color = array( 
        '#382E24', 
        '#A19E9C', 
    ); 
     
    $dataMultiple = array($pageviews['Weekly']); 
     
    $chart->setChartAttrs(  
        array( 
            'type'         => 'line', 
            'title'     => '', 
            'data'         => $dataMultiple, 
            'size'         => array( 400, 200 ), 
            'max'		=> array(max($pageviews['Weekly']), max(array_keys($pageviews['Weekly']))),
            'min'		=> array(0, min(array_keys($pageviews['Weekly']))),
            'color'     => $color, 
            'labelsXY'     => true,
            'legend'	=> false
        ) 
    ); 
     
    // Print chart 
    echo $chart; 
    ?> 