 method if_rest_application~get_root_handler.
    data(router) = new cl_rest_router( ).

    router->attach( iv_template = '/synchronous' iv_handler_class = '/BAOF/CL_BUILD_REST_RESOURCE' it_parameter = value #( ( name = 'ASYNC' kind = cl_abap_objectdescr=>exporting value = ref #( abap_false ) ) ) ).
    router->attach( iv_template = '/sync       ' iv_handler_class = '/BAOF/CL_BUILD_REST_RESOURCE' it_parameter = value #( ( name = 'ASYNC' kind = cl_abap_objectdescr=>exporting value = ref #( abap_false ) ) ) ).
    router->attach( iv_template = '/asynchronous' iv_handler_class = '/BAOF/CL_BUILD_REST_RESOURCE' it_parameter = value #( ( name = 'ASYNC' kind = cl_abap_objectdescr=>exporting value = ref #( abap_true ) ) ) ).
    router->attach( iv_template = '/async       ' iv_handler_class = '/BAOF/CL_BUILD_REST_RESOURCE' it_parameter = value #( ( name = 'ASYNC' kind = cl_abap_objectdescr=>exporting value = ref #( abap_true ) ) ) ).

    ro_root_handler = router.
  endmethod.