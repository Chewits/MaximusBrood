
var form = 'bbcodeadd';
var textarea = 'PostDescription';
var which=null;

// some of functions here are not used just yet, kept for future use

function AddTag(open, close, content) {
	if(typeof(document.forms[form].elements[textarea])=='undefined'){
		if(which==null){
			var textfield = document.forms[form].elements['message[0]'];
		}
		else{
			var textfield = which;
		}
	}
	else{
		var textfield = document.forms[form].elements[textarea];
	}
	textfield.focus();
	if(typeof document.selection != 'undefined') {
		var range = document.selection.createRange();
		if(content == ''){
			var toinsert = range.text;
		}
		else{
			toinsert = content;
		}
		range.text = open + toinsert + close;
		range = document.selection.createRange();
		if (toinsert.length == 0) {
			range.move('character', -close.length);
		}
		else {
			range.moveStart('character', open.length + toinsert.length + close.length);      
		}
		range.select();
	}
	else if(typeof textfield.selectionStart != 'undefined') {
		var start = textfield.selectionStart;
		var end = textfield.selectionEnd;
		if(content == ''){
			var toinsert = textfield.value.substring(start, end);
		}
		else{
			toinsert = content;
		}
		textfield.value = textfield.value.substr(0, start) + open + toinsert + close + textfield.value.substr(end);
		var pos;
		if (toinsert.length == 0) {
			pos = start + open.length;
		} 
		else {
			pos = start + open.length + toinsert.length + close.length;
		}
		textfield.selectionStart = pos;
		textfield.selectionEnd = pos;
	}
	else {
		if(content == ''){
			var toinsert=open + close;
		}
		else{
			toinsert=open + content + close;
		}
		textfield.innerHTML+=toinsert;
	}
}

// insert [img] tag
function AddImg() {
	AddTag('[IMG]', '[/IMG]', '');
}

// insert [url] or [email] tag
function AddLink(thetype) {
	AddTag("[" + thetype + "]", "[/" + thetype + "]", '');
}

// insert html list
function AddList() {
	type = prompt("Enter \'1\' for a numbered List, \'a\' for an alphabetic List or \'\' for a pointed List", "");
	if((type == "a") || (type == "1")) {
		list = "[LIST=" + type + "]\n";
		listend = "[/LIST=" + type + "]";
	}
	else {
		list = "[LIST]\n";
		listend = "[/LIST]";
	}
	entry = "start";
	while ((entry != "") && (entry != null)) {
		entry = prompt("Enter a List-Point. Enter nothing or click \'Cancel\' to finish the list.", "");
		if ((entry != "") && (entry != null))
			list = list + "[*]" + entry + "[/*]\n";
	}
	if(list != "[LIST]\n" && list !="[LIST=" + type + "]\n"){
		addtext = list + listend;	
		AddTag('', '', addtext);
	}
}

// insert code from another window
function AddCodeFromWindow(thecode) {
 	if(typeof(opener.document.forms[form].elements[textarea])=='undefined'){
		if(which==null){
			var textfield = opener.document.forms[form].elements['message[0]'];
		}
		else{
			var textfield = which;
		}
	}
	else{
		var textfield = opener.document.forms[form].elements[textarea];
	}
	textfield.focus();

	textfield.focus();
	if(typeof opener.document.selection != 'undefined') {
		var range = opener.document.selection.createRange();
		range.text = thecode;
		range = opener.document.selection.createRange();
		range.moveStart('character', thecode.length);      
		range.select();
	}
	else if(typeof textfield.selectionStart != 'undefined') {
		var start = textfield.selectionStart;
		var end = textfield.selectionEnd;
		textfield.value = textfield.value.substr(0, start) + thecode + textfield.value.substr(end);
		var pos;
		pos = start + thecode.length;
		textfield.selectionStart = pos;
		textfield.selectionEnd = pos;
	}
	else {
		var pos;
		var re = new RegExp('^[0-9]{0,3}$');
		while(!re.test(pos)) {
			pos = prompt("Insert at position"+" (0.." + textfield.value.length + "):", "0");
		}
		if(pos > textfield.value.length) {
			pos = textfield.value.length;
		}
		textfield.value = textfield.value.substr(0, pos) + thecode + textfield.value.substr(pos);
	}
}

// insert [b] tag
function AddB() {
	AddTag('[B]', '[/B]', '');
}

// insert [U] tag
function AddU() {
	AddTag('[U]', '[/U]', '');
}

// insert [I] tag
function AddI() {
	AddTag('[I]', '[/I]', '');
}

// insert [S] tag
function AddS() {
	AddTag('[S]', '[/S]', '');
}

// insert [quote] tag
function AddQuote() {
	AddTag('[quote]', '[/quote]', '');
}

// insert [code] tag
function AddCodetag() {
	AddTag('[code]', '[/code]', '');
}

// insert [Toggle] tag
function AddToggle() {
	AddTag("[toggle="+"Read More"+"]", "[/toggle]", '');
}

// insert [Youtube] tag
function AddYoutube() {
	AddTag("[youtube]", "[/youtube]", '');
}

// toggle function - read more
function Toggle(id, multi) {
	
  spanid1 = "ToggleRow_"+id;
  spanid2 = "ToggleImg_"+id;
	
  if(multi == true) {
  	
	elements = document.getElementsByName(spanid1);
	val = document.getElementsByName(spanid1)[0].style.display;
	for (var i=0;i<elements.length;i++) {
	  if (val == "none") elements[i].style.display = "inline";
	  else elements[i].style.display = "none";
	}
  }
  else {

	  if (/MSIE/.test(navigator.userAgent)){
	  	images = document.getElementById(spanid1).getElementsByTagName('img');
	    anz = images.length
	    for(i=0;i<anz;i++){
	    	elem = images[i];
	        if(typeof elem.onload == "function") elem.onload();
	    }
	  }
	  val = document.getElementById(spanid1).style.display;
	  if (val == "none")
	  {
	    document.getElementById(spanid1).style.display = "block";
	    document.getElementById(spanid2).src = "icons/collapse.gif";
	    document.getElementById(spanid2).alt = "hide";
		 document.getElementById(spanid2).title = "hide";
	  }
	  else
	  {
	    document.getElementById(spanid1).style.display = "none";
	    document.getElementById(spanid2).src = "icons/expand.gif"
	    document.getElementById(spanid2).alt = "read more";
		 document.getElementById(spanid2).title = "read more";
	  }
  }
}

// function toggle_linecount
nodearray = new Array();
function toggle_linecount(id) {

	elements = document.getElementsByName(id);
  	if(elements[0].firstChild.firstChild.data != "") {
		for (var i=0;i<elements.length;i++) {
			nodearray[i] = elements[i].firstChild.firstChild.data;
			elements[i].firstChild.firstChild.nodeValue = '';
		}
  	} else {
		for (var i=0;i<elements.length;i++) {
			elements[i].firstChild.firstChild.nodeValue = nodearray[i];
		}
  	}

}



function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_jumpMenuGo(selName,targ,restore){ //v3.0
  var selObj = MM_findObj(selName); if (selObj) MM_jumpMenu(targ,selObj,restore);
}

function MM_confirm(msg, url) { //v1.0
  if(confirm(msg)) location.replace(url);
}

function MM_openBrWindow(theURL,winName,features) { 
  window.open(theURL,winName,features);
}

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function SelectAll() {
	for(var x=0;x<document.form.elements.length;x++) {
		var y=document.form.elements[x];
		if(y.name!='ALL') y.checked=document.form.ALL.checked;
	}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function checkSize(name, xmax, ymax) {

	var xsize, ysize;
  xsize=document.getElementById("ws_image_" + name).width;
  ysize=document.getElementById("ws_image_" + name).Height;

  if(ysize>ymax) {
  	document.getElementById("ws_image_" + name).height=ymax;
  	document.getElementById("ws_imagediv_" + name).style.display = "block";
  }

  if(xsize>xmax) {
  	document.getElementById("ws_image_" + name).width=xmax;
  	document.getElementById("ws_imagediv_" + name).style.display = "block";
  }

}

function AddText(addtext) {
	AddTag('', '', addtext);
}

function AddCode(code) {
	AddText(code);
}
	
/* tooltip */

wmtt = null;

function updateWMTT(e) {
	x = (document.all) ? window.event.x + document.body.scrollLeft : e.pageX;
	y = (document.all) ? window.event.y + document.body.scrollTop  : e.pageY;
	if (wmtt != null) {
		wmtt.style.left = (x + 20) + "px";
		wmtt.style.top 	= (y + 20) + "px";
	}
}

function showWMTT(id) {
	document.onmousemove = updateWMTT;
	wmtt = document.getElementById(id);
	wmtt.style.display = "block";
}

function hideWMTT() {
	wmtt.style.display = "none";
	document.onmousemove = "none";
}

//ajax functions

function postRequest(strURL,id,action) {
  var xmlHttp;
  if (window.XMLHttpRequest) { 
    var xmlHttp = new XMLHttpRequest();
  }
  else if (window.ActiveXObject) { 
    var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlHttp.open('POST', strURL, true);
  xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xmlHttp.onreadystatechange = function() {
    if (xmlHttp.readyState == 4) {
      updatepage(xmlHttp.responseText,id,action);
    }
  }
  xmlHttp.send(strURL);
}
//update target
function updatepage(str,id,action){
	if (action == "add"){
    document.getElementById(id).innerHTML+=str;
	}
	else if (action == "replace"){
		document.getElementById(id).innerHTML=str;
	}
	else if (action == "formfield"){
		document.getElementById(id).value=string(str);
	}
	else if (action == "return"){
		return str;
	}
	else if (action == "execute"){
		eval(str);
	}
}

//fetch data for onclick/onchange events
function eventfetch(url,id,action){
  postRequest(url,id,action);
}
//fetch data for timebased events
function timefetch(url,id,action,milliseconds) {
	eventfetch(url,id,action);
  setTimeout(function () { timefetch(url,id,action,milliseconds); },milliseconds);
}
//generic fetch function, accepts 5 parameters (first 4 mandatory).
//url = script to access on the server
//id = html id (for example of a div, a form field etc.., works with all tags which accept an id)
//action = add, replace, return or formfield, add adds up content at the end of the original content in the id element, replace replaces the complete content in the id element, formfield replaces a form field value, return simply returns the fetched data
//base = time or event, time based means script will autoexecute itself every amount of milliseconds specified via the 5th parameter, event based means you are calling the funtion with something like onclick, onchange, onmouseover or directly in a script
//milliseconds = time in milliseconds till the script should autoexecute itself again (only needed when base==time)
function fetch(url,id,action,base,milliseconds){
	if(base == "event"){
		eventfetch(url,id,action);
	}
	else if(base == "time"){
		timefetch(url,id,action,milliseconds);
	}
}

//search & overlay functions
function search(table,column,identifier,search,searchtemp,id,action,exact,searchtype){
	exact = typeof(exact) != 'undefined' ? exact : 0;
	searchtype = typeof(searchtype) != 'undefined' ? searchtype : 0;
  searchrequest="../asearch.php?table="+table+"&column="+column+"&identifier="+identifier+"&search="+search+"&searchtemp="+searchtemp+"&div="+id+"&exact="+exact+"&searchtype="+searchtype;
  eventfetch(searchrequest,id,action);
}
function getposOffset(overlay, offsettype){
  var totaloffset=(offsettype=="left")? overlay.offsetLeft : overlay.offsetTop;
  var parentEl=overlay.offsetParent;
  while (parentEl!=null){
    totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
    parentEl=parentEl.offsetParent;
  }
  return totaloffset;
}
function overlay(curobj, subobjstr, opt_position){
  if (document.getElementById){
    var subobj=document.getElementById(subobjstr)
    subobj.style.display="block"
    var xpos=getposOffset(curobj, "left")+((typeof opt_position!="undefined" && opt_position.indexOf("right")!=-1)? -(subobj.offsetWidth-curobj.offsetWidth) : 0)
    var ypos=getposOffset(curobj, "top")+((typeof opt_position!="undefined" && opt_position.indexOf("bottom")!=-1)? curobj.offsetHeight : 0)
    subobj.style.left=xpos+"px"
    subobj.style.top=(ypos+15)+"px"
    return false
  }
  else
    return true
}
function overlayclose(subobj){
	document.getElementById(subobj).style.display="none"
}

function trim(stringToTrim) {
  return stringToTrim.replace(/^\s+|\s+$/g,"");
}

function formcheck_onsend(id){
	valuestring=document.getElementById(id).value;
	if(trim(valuestring)==''){
		return false;
	}
	else{
		return true;
	}
}
//bbcode checker
function validbbcode(txt){
	searchregexp = /\[(B|\/B|U|\/U|I|\/I|S|\/S|code|\/code|LIST|LIST[a1=]*|\/LIST[a1=]*|\*|\/\*|\/LIST|EMAIL[a-zA-Z0-9=#@\._-]*|\/EMAIL|URL[a-zA-Z0-9=#,;+@&?%:\/\._-]*|\/URL|IMG|\/IMG|QUOTE[^\]]*|\/QUOTE|TOGGLE[^\]]*|\/TOGGLE|SIZE=[1-5]{1}|\/SIZE|COLOR[^\]]*|\/COLOR|ALIGN[^\]]*|\/ALIGN|FONT[^\]]*|\/FONT)\]/ig;
	resulttemp=txt.match(searchregexp);
	if(null==resulttemp){
	  resulttemp=new Array();
	}
	result=new Array();
	ocode=0;
	putincounter=0;
	for(c=0;c<resulttemp.length;c++){
		if((resulttemp[c]=='[code]') || (resulttemp[c]=='[CODE]') || (resulttemp[c]=='[/code]') || (resulttemp[c]=='[/CODE]')){
			if((resulttemp[c]=='[code]') || (resulttemp[c]=='[CODE]')){
				ocode++;
				if(ocode==1){
					result[putincounter]=resulttemp[c];
					putincounter++;
				}
			}
			else{
				ocode--;
				if(ocode==0){
					result[putincounter]=resulttemp[c];
					putincounter++;
				}
			}
		}
		else{
			if(ocode<1){
				result[putincounter]=resulttemp[c];
				putincounter++;
			}
			continue
		}
	}
	if(result==null){
    return true;
  }
  arraylength=result.length;
  if(arraylength>0){
	  starttest=result[0].split('=');
	  if(!(arraylength % 2)){
		  if(starttest[0].indexOf('/')==-1){
		  	openingtagcounter=0;
		  	closingtagcounter=0;
		  	for(i=0;i<arraylength;i++){
		  		temp=result[i].split('[');
		  		temp=temp[1].split(']');
		  		temp=temp[0].split('=');
					if(temp[0].indexOf('/')==-1){
		  			openingtagcounter++;
		  		}
		  		else{ 
		  			closingtagcounter++;
		  		}
		  	}
		  	if(openingtagcounter==closingtagcounter){
		  		openingtags=new Array();
		  		closingtags=new	Array();
		  		for(i=0;i<arraylength;i++){
		  			temp=result[i].split('[');
			  		temp=temp[1].split(']');
			  		temp=temp[0].split('=');
					  if(temp[0].indexOf('/')==-1){ 
			  			openingtags.push(temp[0]);
			  		}
			  		else{  
			  			tmpstring=openingtags.pop();
			  			if((temp[0].toLowerCase()) == (('/' + tmpstring).toLowerCase())){
			  				
			  			}
			  			else{
			  				window.alert("Wrong nesting of BBCode tags");
			  				return false;
			  			}
			  		}
		  		}
		  		return true;
		  	}
		  	else{
		  		window.alert("Not the same amount of opening and closing BBCode tags");
		  		return false; 
		  	}
		  }
		  else{
		  	window.alert("First BBCode tag cannot be a closing one");
		  	return false; 
		  }
	  }
	  else{
	  	window.alert("Uneven amount of opening and closing BBCode tags");
	  	return false;
	  }
	}
	else{
	  return true;
	}
}


//test for valid url
function url(string){
	regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
  result = regexp.test(string);
  return result;
}

//get multiple dropdown selection values
function getselection(id){
	select=document.getElementById(id);
	amountoptions=select.length;
	options=new Array;
	k=0;
	for (i=0; i<amountoptions; i++){
	  if (select[i].selected === true){
	    options[k] = select[i].value;
	    k++;  
	  }  
	}
	return options;
}


// insert code from another window
function AddCodeFromWindow(thecode) {
 	if(typeof(opener.document.forms[form].elements[textarea])=='undefined'){
		if(which==null){
			var textfield = opener.document.forms[form].elements['message[0]'];
		}
		else{
			var textfield = which;
		}
	}
	else{
		var textfield = opener.document.forms[form].elements[textarea];
	}
	textfield.focus();

	textfield.focus();
	if(typeof opener.document.selection != 'undefined') {
		var range = opener.document.selection.createRange();
		range.text = thecode;
		range = opener.document.selection.createRange();
		range.moveStart('character', thecode.length);      
		range.select();
	}
	else if(typeof textfield.selectionStart != 'undefined') {
		var start = textfield.selectionStart;
		var end = textfield.selectionEnd;
		textfield.value = textfield.value.substr(0, start) + thecode + textfield.value.substr(end);
		var pos;
		pos = start + thecode.length;
		textfield.selectionStart = pos;
		textfield.selectionEnd = pos;
	}
	else {
		var pos;
		var re = new RegExp('^[0-9]{0,3}$');
		while(!re.test(pos)) {
			pos = prompt('Insert at position'+" (0.." + textfield.value.length + "):", "0");
		}
		if(pos > textfield.value.length) {
			pos = textfield.value.length;
		}
		textfield.value = textfield.value.substr(0, pos) + thecode + textfield.value.substr(pos);
	}
}

