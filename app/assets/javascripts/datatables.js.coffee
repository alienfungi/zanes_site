jQuery ->
  $('.datatable').dataTable
    aaSorting: [[0, "desc"]]
    bJQueryUI: true
    bServerSide: true
    sAjaxSource: $('.datatable').data('source')
    sDom: "<'row'<'col-6'f><'col-6'l>r>t<'row'<'col-6'i><'col-6'p>>"
    sPaginationType: "bootstrap"

  # Hacks to integrate datatables with bootstrap 3
  $('div.dataTables_paginate ul').addClass 'pagination'
  $('div.dataTables_filter').find('input').addClass 'form-control'
