#= require tinymce
#= require active_admin/base
#
$(document).ready () ->
    tinyMCE.init
        mode: 'textareas'
        # theme: 'advanced'
        editor_selector: 'tinymce'

