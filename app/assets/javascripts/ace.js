$(document).on('ready page:load', function () {
  $('textarea[data-editor]').each(function () {
    var textarea = $(this);

    var mode = textarea.data('editor');

    var editDiv = $('<div>', {
      position: 'absolute',
      width: textarea.width(),
      height: textarea.height(),
      'class': textarea.attr('class')
    }).insertBefore(textarea);

    textarea.css('display', 'none');

    var editor = ace.edit(editDiv[0]);
    editor.setTheme("ace/theme/solarized_light");
    editor.renderer.setShowGutter(true);
    editor.getSession().setValue(textarea.val());
    editor.getSession().setUseWrapMode(true);
    editor.getSession().setMode("ace/mode/" + mode);

    // copy back to textarea on form submit...
    textarea.closest('form').submit(function () {
      textarea.val(editor.getSession().getValue());
    })
  });
});
