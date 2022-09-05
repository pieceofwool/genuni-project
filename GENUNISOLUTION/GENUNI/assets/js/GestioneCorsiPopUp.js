
$(document).ready(function () {
    $('#popUpInserisci').on('click', function (e) {

        e.preventDefault();
        $('#theModal').modal('show').find('.modal-content').load($(this).attr(''))

    });
}); 
   
   