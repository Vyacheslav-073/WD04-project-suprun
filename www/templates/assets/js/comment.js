S('input[data-add-comment]').on('click', function(e){
    e.preventDefault();
    comment = $('.comment-add-block').children('.textarea');
    if ( comment.val() == '') {
        $('.error[data-error-comment-empty]').fadeIn();
        comment.focus(function(event) {
            $('.error[data-error-comment-empty]').fadeOut();
        });
    } else {
        $('#commentForm').submit();
    }
});