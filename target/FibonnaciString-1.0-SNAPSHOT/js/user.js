$(function () {

    $(document).ready(function () {

        $(".delete-user-link").click(function () {

            $.ajax({
                url: '/user?id=' + $(this).attr('data-id'),
                type: 'DELETE',
                success: function (result) {
                    location.reload();
                }
            });
        });


        $("input[name=save]").click(function (event) {

            if ($(this).hasClass('edit')) {

                event.preventDefault();

                var form = $('#add-edit-user')[0];

                var data = new FormData(form);

                $.ajax({
                    enctype: 'multipart/form-data',
                    processData: false,
                    cache: false,
                    contentType: false,
                    url: '/user',
                    type: 'PUT',
                    data: data,
                    success: function (result) {
                        location.href = '/user';
                    }
                });
            }
        });
    });
});