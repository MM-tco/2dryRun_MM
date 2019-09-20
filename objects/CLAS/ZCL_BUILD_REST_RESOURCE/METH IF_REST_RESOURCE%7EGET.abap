  method if_rest_resource~get.
    me->build_id = mo_request->get_uri_query_parameter( 'build_id' ).
    me->pipeline_build_id = mo_request->get_uri_query_parameter( 'pipeline_build_id' ).

    if me->is_authorization_valid( ) = abap_false.
      mo_response->set_status( `401` ).
      return.
    endif.

    if me->async = abap_true.
      mo_response->create_entity( )->set_string_data( `Asynchrone calls are not supported for GET!` ).
      mo_response->set_status( `501` ).
      return.
    endif.

    try.
        mo_response->create_entity( )->set_string_data( /baof/cl_build_factory=>new_build_state( build_id = me->build_id pipeline_build_id = me->pipeline_build_id )->get_json( ) ).
      catch /baof/cx_build into data(ex).
        mo_response->set_status( `400` ).
    endtry.
  endmethod.