$(document).on("click", ".category", function() {
  var drawer_selector = '#drawer_' + ($(this).attr('id').replace('category_', ''));
  console.log(drawer_selector);
  $(drawer_selector).toggle(500);
});

$(document).on("click", ".tile", function() {
  var tile_name = $(this).attr('href');
  console.log(tile_name);
  $(this).toggleClass("selected");
});
