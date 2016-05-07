@exchange_sort = ->
  $('select#shoe_sort').change ->
    set_cookie_sort();
    $('#new_product_filter').submit();
  return

set_cookie_sort = ->
  select_element = $('select#shoe_sort')
  Cookies.remove('shoe_sort')
  Cookies.set('shoe_sort', select_element.val())
  return