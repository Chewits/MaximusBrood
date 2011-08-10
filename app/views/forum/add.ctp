<div class="page-header">
	<h2>Forum</h2>
	<p>The forum is a place for talking away from Battle.NET. This is the port of call
	for all official clan announcements such as promotions, clan wars and any other events
	that happen to be taking place.</p>
</div>

<?php $javascript->link('bbcode.js', false); ?>
<fieldset>
	<legend>Add Thread</legend>
	<table border="0" cellpadding="2" cellspacing="0" class="formtable">
  <tr> 
    <td>
	  <input type="button" accesskey="b" value="B" style="width: 30px;" onclick="AddB()" />
	  <input type="button" accesskey="u" value="U" style="width: 30px;" onclick="AddU()" />
	  <input type="button" accesskey="i" value="I" style="width: 30px;" onclick="AddI()" />
	  <input type="button" accesskey="s" value="S" style="width: 30px;" onclick="AddS()" />
	  <input type="button" accesskey="e" value=" @ " style="width: 30px;" onclick="AddLink('EMAIL')" onmouseover="showWMTT('tooltip_email')" onmouseout="hideWMTT()" />
	  <input type="button" accesskey="w" value="URL" style="width: 45px;" onclick="AddLink('URL')" onmouseover="showWMTT('tooltip_url')" onmouseout="hideWMTT()" />
	  <input type="button" accesskey="p" value="IMG" style="width: 35px;" onclick="AddImg()" onmouseover="showWMTT('tooltip_img')" onmouseout="hideWMTT()" />
	  <input type="button" accesskey="l" value="List" style="width: 35px" onclick="AddList()" onmouseover="showWMTT('tooltip_list')" onmouseout="hideWMTT()"  />
	  <input type="button" accesskey="q" value="Quote" style="width: 45px" onclick="AddQuote()" onmouseover="showWMTT('tooltip_quote')" onmouseout="hideWMTT()" />
	  <input type="button" accesskey="y" value="YouTube" style="width: 60px" onclick="AddYoutube()" onmouseover="showWMTT('tooltip_youtube')" onmouseout="hideWMTT()" />
	  <div class="tooltip" style="width: 315px; text-align: center;" id="tooltip_email">[EMAIL=you@yoursite.com]My email address[/EMAIL]<br />[EMAIL]you@yoursite.com[/EMAIL]</div>
	  <div class="tooltip" style="width: 265px; text-align: center;" id="tooltip_url">[URL=http://yoursite.com]My website[/URL]<br />[URL]http://yoursite.com[/URL]</div>
	  <div class="tooltip" style="width: 250px; text-align: center;" id="tooltip_img">[IMG]http://yoursite.com/image.jpg[IMG]</div>
	  <div class="tooltip" style="width: 310px; text-align: center;" id="tooltip_list">[LIST=a][*]point 1[/*][*]point 2[/*][/LIST]<br />[LIST=1][*]point 1[/*][*]point 2[/*][/LIST]</div>
	  <div class="tooltip" style="width: 280px; text-align: center;" id="tooltip_quote">[QUOTE=Nickname]Quote[/QUOTE]<br />[QUOTE]Quote[/QUOTE]</div>
	  <div class="tooltip" style="width: 280px; text-align: center;" id="tooltip_youtube">[youtube]http://www.youtube.com/watch?v=bZaGp-KgxpM[/youtube]</div>
    </td>
  </tr>
  <tr> 
    <td><select name="fontcolor" onchange="AddTag('[COLOR=' + this.options[this.selectedIndex].value + ']', '[/COLOR]', '');this.selectedIndex='0';">
        <option value="0">Colour</option>
        <option value="#87CEEB" style="color:#87CEEB;">Sky Blue</option>
        <option value="#4169E1" style="color:#4169E1;">Royal Blue</option>
        <option value="#0000FF" style="color:#0000FF;">Blue</option>
        <option value="#00008B" style="color:#00008B;">Darkblue</option>
        <option value="#FFA500" style="color:#FFA500;">Orange</option>
        <option value="#FF4500" style="color:#FF4500;">Orangered</option>
        <option value="#DC143C" style="color:#DC143C;">Crimson</option>
        <option value="#FF0000" style="color:#FF0000;">Red</option>
        <option value="#B22222" style="color:#B22222;">Firebrick</option>
        <option value="#8B0000" style="color:#8B0000;">Darkred</option>
        <option value="#008000" style="color:#008000;">Green</option>
        <option value="#32CD32" style="color:#32CD32;">Limegreen</option>
        <option value="#2E8B57" style="color:#2E8B57;">Seagreen</option>
        <option value="#FF1493" style="color:#FF1493;">Deeppink</option>
        <option value="#FF6347" style="color:#FF6347;">Tomato</option>
        <option value="#FF7F50" style="color:#FF7F50;">Coral</option>
        <option value="#800080" style="color:#800080;">Purple</option>
        <option value="#4B0082" style="color:#4B0082;">Indigo</option>
        <option value="#DEB887" style="color:#DEB887;">Burlywood</option>
        <option value="#F4A460" style="color:#F4A460;">Sandybrown</option>
        <option value="#A0522D" style="color:#A0522D;">Sienna</option>
        <option value="#D2691E" style="color:#D2691E;">Chocolate</option>
        <option value="#008080" style="color:#008080;">Teal</option>
        <option value="#C0C0C0" style="color:#C0C0C0;">Silver</option>
      </select> 
	  
	  <select name="fontsize" onchange="AddTag('[SIZE=' + this.options[this.selectedIndex].value + ']', '[/SIZE]', '');this.selectedIndex='0';">
        <option value="0">Size</option>
        <option value="1">tiny</option>
        <option value="2">small</option>
        <option value="3">normal</option>
        <option value="4">large</option>
        <option value="5">huge</option>
      </select> 
	  
	  <select name="font" onchange="AddTag('[FONT=' + this.options[this.selectedIndex].value + ']', '[/FONT]', '');this.selectedIndex='0';">
        <option value="0">Font</option>
        <option value="arial">Arial</option>
        <option value="comic sans ms">Comic</option>
        <option value="courier">Courier</option>
        <option value="courier new">Courier New</option>
        <option value="tahoma">Tahoma</option>
        <option value="times new roman">Times New Roman</option>
        <option value="verdana">Verdana</option>
	  </select> 
		
		<select name="align" onchange="AddTag('[ALIGN=' + this.options[this.selectedIndex].value + ']', '[/ALIGN]', '');this.selectedIndex='0';">
        <option value="0">Align</option>
        <option value="center">Center</option>
        <option value="left">Left</option>
        <option value="right">Right</option>
        <option value="justify">Justify</option>
	  </select>
	  </td>
  </tr>
  
	  
</table>
	<?php 
		echo $this->Form->create('Post', array('id'=>'bbcodeadd', 'url'=>array('controller'=>'forum', 'action'=>'add')));
		echo $this->Form->input('title', array('between'=>': ')).'</br>';
		echo $this->Form->input('description', array('between'=>':<br />')).'</br>';
		echo $this->Form->input('board_id', array('between'=>': ')).'</br>';
		echo $this->Form->end(__('Submit', true));
	?>
</fieldset>