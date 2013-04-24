// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(function() {

	$("#complaint_vehicles_vehicle_types").change(function () {
	$("#complaint_vehicles_vehicle_types option:selected").each(function () {
	var selected_vehicle=$(this).text();
	if(selected_vehicle == "Bus"){
	    $("#bus_stop").show();
	}else
	{
		$("#bus_stop").hide();
	}
	})

	})

	$("#refused_checkbox").click(function(){
		$(".refused_from_to").slideToggle();

	})

	


});
