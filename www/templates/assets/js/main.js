$(document).ready(function() {
	
	$(".left-panel").customScrollbar({preventDefaultScroll: true});

	// Upload file. Кнопка загрузки фотографии
    $('.inputfile').change(function() {
        var label = $(this).parent().find('span');
        var files = $(this)[0].files;
        if(files.length >= 2){
            label.text("Вы выбрали " + this.files.length + " файла");
        }  else {
        label.text($(this).val().replace('C:\\fakepath\\',''));
        }  
    });