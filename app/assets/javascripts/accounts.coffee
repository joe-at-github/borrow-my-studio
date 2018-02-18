$(document).on 'change', '.new_banner #banner_image', ->
  $('.file_name').html($('#banner_image').val().replace /^.*[\\\/]/, '')
