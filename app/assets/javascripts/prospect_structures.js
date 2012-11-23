$(document).ready(function(){
	
	var init = function(){
		$.ajax('http://localhost:3000/timetable/1.js', {
			success: function(data){}
		});
	};
	
	$('#ttContainer').delegate('.day li.schedule', 'click', function(e){
		e.preventDefault();
		if($(this).children().length != 0) {
			var id = $(this).children().attr('id').split('_')[1]; //recuperare l'id del pezzetto di prospetto settimanale
			//chiamata ajax
			$.ajax('http://localhost:3000/weekly_prospects/'+id+'/edit.js', {
				context: $(this)
			} ).done(function(){
				var header = 'Programmazione della fascia '+$(this).attr('name')+' di '+$(this).parent().attr('id')
				$('.modal-header h4').text(header);
				$('.modal-header h4').attr('name',id);
				$('#weekly_prospect_day_id').val($(this).attr('id').split('_')[1]);
				$('#weekly_prospect_timeframe_id').val($(this).attr('id').split('_')[2]);
				$('#weekly_prospect_grade_id').val($(this).attr('id').split('_')[3]);
				$('.modal-footer').html('<button class="btn" data-dismiss="modal" aria-hidden="true">Chiudi</button><button id="update_orario" class="btn btn-primary">Aggiorna</button>');
				$('#modalBox').modal('show');
			});
		} else {
			$.ajax('http://localhost:3000/weekly_prospects/new.js', {
				context: $(this)
			} ).done(function(){
				var header = 'Programmazione della fascia '+$(this).attr('name')+' di '+$(this).parent().attr('id')
				$('.modal-header h4').text(header);
				$('#weekly_prospect_day_id').val($(this).attr('id').split('_')[1]);
				$('#weekly_prospect_timeframe_id').val($(this).attr('id').split('_')[2]);
				$('#weekly_prospect_grade_id').val($(this).attr('id').split('_')[3]);
				$('.modal-footer').html('<button class="btn" data-dismiss="modal" aria-hidden="true">Chiudi</button><button id="salva_nuovo" class="btn btn-primary">Salva</button>');
				$('#modalBox').modal('show');
			});
		}
	});
	
	$('#modalBox').delegate('#salva_nuovo', 'click', function(e){
		e.preventDefault();
		$.ajax('http://localhost:3000/weekly_prospects.js', {
			type: 'POST',
			data: $('form').serialize(),
			success: function(){
				$('#modalBox').modal('hide');
			}
		} );
	});
	
	$('#modalBox').delegate('#update_orario', 'click', function(e){
		e.preventDefault();
		var id = $('.modal-header h4').attr('name');
		$.ajax('http://localhost:3000/weekly_prospects/'+id+'.js', {
			type: 'POST',
			data: $('form').serialize(),
			success: function(){
				$('#modalBox').modal('hide');
			}
		} );
	});
	
	init();
	
});