$(document).ready(function(){
	$('.buy').click(function(){
		var dataId    =  $(this).attr('data-id');
		var dataSlug  =  $(this).attr('data-slug');
		var price  		=  $(this).attr('data-price');
		if(isNaN(dataId) || dataId == ''){
			new Noty({
				text: 'Internal Error! Please try again later.',
				type: 'error',
				timeout: 3000,
				progressBar: true
			}).show();
		}else{
			$.ajax({
			    url : '/product/add/'+dataId,
			    type : 'POST',
			    headers: {
			        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			    },
			    dataType:'json',
			    success : function(data) {  
			    	$('.sessionTotal').html(parseFloat($('.sessionTotal').html())+parseFloat(price));            
			        new Noty({
						text: 'Product added to the cart.',
						type: 'success',
						timeout: 3000,
						progressBar: true
					}).show();
			    },
			    error : function(request,error)
			    {
			        new Noty({
						text: 'Failed...',
						type: 'error',
						timeout: 3000,
						progressBar: true
					}).show();
			    }
			});
		}
	});
	$('.removePdr').click(function(){
		var dataId    =  $(this).attr('data-id');
		var dataSlug  =  $(this).attr('data-slug');
		if(isNaN(dataId) || dataId == ''){
			new Noty({
				text: 'Internal Error! Please try again later.',
				type: 'error',
				timeout: 3000,
				progressBar: true
			}).show();
		}else{
			$.ajax({
			    url : '/product/remove/'+dataId,
			    type : 'POST',
			    headers: {
			        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			    },
			    dataType:'json',
			    success : function(data) {              
			        new Noty({
						text: 'Product removed from to the cart.',
						type: 'success',
						timeout: 3000,
						progressBar: true
					}).show();
			    },
			    error : function(request,error)
			    {
			        new Noty({
						text: 'Failed...',
						type: 'error',
						timeout: 3000,
						progressBar: true
					}).show();
			    }
			});
		}
	});
});