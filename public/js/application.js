$(document).ready(function() {
  $('#note_create_form').on('submit', function(e) {
    e.preventDefault();
    $.ajax({
      url: this.action,
      method: this.method,
      data: $(this).serialize()
    }).done(function(msg) {
      $('#note_create_form')[0].reset();
      $('#createNote').modal('hide');
    });
  });

  $('.delete_note').on('click', function(e) {
    e.preventDefault();
    console.log($(this).parent().remove());
    note = this;
    $.ajax({
      type: 'delete',
      url: this.href
    }).done(function(msg) {
      console.log(msg);
      console.log($('#note' + msg.note_id).parent());
    });
  });
});
