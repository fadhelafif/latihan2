jQuery(document).ready(function($){
	var isIE10 = false;
	/*@cc_on
	    if (/^10/.test(@_jscript_version)) {
	        isIE10 = true;
	    }
	@*/

	if(jQuery.browser.chrome){
        jQuery('html').addClass('chrome');
    }else if(jQuery.browser.mozilla){
        jQuery('html').addClass('mozilla');
    }else if(jQuery.browser.opera){
        jQuery('html').addClass('opera');
    }else if(jQuery.browser.webkit){
        jQuery('html').addClass('webkit');
    }else if(jQuery.browser.msie){
        jQuery('html').addClass('ie');
    }else if(isIE10){
    	jQuery('html').addClass('ie');
    }
});

function check_focus(elm,val){
    if(elm.value.toLowerCase() == val.toLowerCase()){
        elm.value = '';    
    }
}

function check_blur(elm,val){
    if(elm.value.toLowerCase() == ''){
        elm.value = val;    
    }
}
