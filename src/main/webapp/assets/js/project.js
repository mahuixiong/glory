// JavaScript Document
$(document).ready(function(){

	
 $('.column_list li').mouseenter(function(){
	 var index = $(this).index();
	 $(this).find('.imgtext').show(100);
	 $(this).find('.c1').hide();
	 $(this).animate({bottom:"8px"})
 });
 
 $('.column_list li').mouseleave(function(){
	 var index = $(this).index();
	 $(this).find('.imgtext').hide(100);
	 $(this).find('.c1').show();
	 $(this).animate({bottom:"0px"})
 })
});