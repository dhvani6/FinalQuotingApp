// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require_tree .

$(function () {
    $(document).on('change', '.remote-select', function (e) {
        var url = $(this).find(':selected').attr('data-url')
        var target = $(this).attr('data-target')

        if (url){
            $.ajax({
                url: url,
                method: 'GET',
                success: function (json) {
                    var target_select = $(target)
                    target_select.empty()
                    json.map(function (item) {
                        value = $('<option></option>').attr('value', item.id).text(item.name)
                        target_select.append(value)
                    })
                },
                error: function () { }
            })
        }
    })
})

$(function () {
    $(document).on('change', '.remote-select', function (i) {
        var target = $(this).attr('data-target')
        var url = $(this).find(":selected").attr('data-url')
        if (url){
            $.ajax({
                url: url,
                method: 'GET',
                success: function (json) {
                    var target_select = $(target)
                    target_select.empty()
                    json.map(function (item) {
                        value = $('<option></option>').attr('value', item.id).text(item.name)
                        target_select.append(value)
                    })
                    target_select.trigger("chosen:updated")
                },
                error: function () { }
            })
        }
    })
})