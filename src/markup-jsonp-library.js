function insertStyles(styles) {
  var open  = '<style type="text/css" media="all">';
  var close = '</style>';

  return open + styles + close;
}

function render(data) {
  $('head').append(insertStyles(data.css));
  $('#target').append(data.html);
}
