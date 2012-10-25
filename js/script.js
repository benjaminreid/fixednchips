(function(){$(document).ready(function(){var b,e,g,h,c,f,a,d;h=$('a[href^="#"]');c=147;g="current";b=$("body");a=$(".content");f={};$.each(a,function(j,k){var l;
k=$(k);l=k.attr("id");return f[l]={pos:k.offset().top-c};});h.on("click",function(j){var i;j.preventDefault();i=$(this).attr("href");return e(i);});e=function(k){var j,l,i;
j=$(""+k);l=j.offset().top-c;d(k);i={scrollTop:l};return $("html,body").animate(i,1000);};return d=function(i){h.removeClass(g);return $('a[href="'+i+'"]').addClass(g);
};});}).call(this);