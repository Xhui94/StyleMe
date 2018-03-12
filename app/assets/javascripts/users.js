// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var setupFieldsNeeded, setupManaged;
$(document).ready(function() {
    var regions;

    $('.deletePhoto').hide();

    if ($('.profilePhoto').length){
    	$('.photoPreview').hide()
    }

 	$('.profilePhoto').click(function(){
 		$('.profilePhoto').hide();
 		$('.photoPreview').show().trigger('click');
 	})
    $('.photoPreview').click(function(){
	    $(this).attr('disabled', 'true');
	    $('#uploadAvatar').trigger('click');
	    $("#uploadAvatar").change(function(){
	        $('.photoPreview').removeAttr('disabled');
	        readURL(this);
	    });
	})

	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('.photoPreview').css('background', 'url(' + e.target.result + ')');
	            $('.photoUpload, #uploadClick').hide();
	        }
	        $('.deletePhoto').show();
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	$('.deletePhoto').click(function() {
		$('.deletePhoto').hide();
        $('#uploadAvatar').val('');
        $('.photoPreview').css('background', '');
        if ($('.profilePhoto').length){
        	$('.profilePhoto').show();
        	$('.photoPreview').hide()
        }else{
        	$('.photoUpload, #uploadClick').show();
        }
	});

    $('.org_people.edit').ready(function() {
        return $('li.sidebar_overview').addClass('active');
    });

    regions = $('#user_user_contacts_attributes_0_typ_regions_id').html();
    $('#user_user_contacts_attributes_0_typ_countries_id').change(function() {
	    var country, escaped_country, options;
	    country = $('#user_user_contacts_attributes_0_typ_countries_id :selected').text();
	    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
	    options = $(regions).filter("optgroup[label='" + escaped_country + "']").html();
	    if (options) {
	        $('#user_user_contacts_attributes_0_typ_regions_id').html(options).addClass('form-control');
	        return $('#user_user_contacts_attributes_0_typ_regions_id').show();
	    } else {
	        $('#user_user_contacts_attributes_0_typ_regions_id').empty(options);
	        return $('#user_user_contacts_attributes_0_typ_regions_id').hide(options);
	    }
	});
});
