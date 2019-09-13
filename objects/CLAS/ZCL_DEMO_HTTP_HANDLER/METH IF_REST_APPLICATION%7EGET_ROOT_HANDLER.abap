  method if_rest_application~get_root_handler.

    data(lo_router) = new cl_rest_router( ).

    lo_router->attach(
      iv_template = ''
      iv_handler_class = 'ZCL_DEMO_REST_HANDLER' ).
    lo_router->attach(
      iv_template = '/'
      iv_handler_class = 'ZCL_DEMO_REST_HANDLER' ).

    ro_root_handler = lo_router.
  endmethod.