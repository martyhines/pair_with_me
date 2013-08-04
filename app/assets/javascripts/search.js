jQuery(function() {

  $('form#search').on('submit', function(e) {
    e.preventDefault();
    var search = $(this).find('input[type=search]');
    window.location = "/" + search.val();
  })

});
