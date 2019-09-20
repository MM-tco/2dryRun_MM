 method if_rest_resource~post.
    me->pipeline_build_id = mo_request->get_uri_query_parameter( 'pipeline_build_id' ).
    me->trkorr = mo_request->get_uri_query_parameter( 'trkorr' ).
    me->swc = mo_request->get_uri_query_parameter( 'swc' ).
    data(package) = mo_request->get_uri_query_parameter( 'package' ).
    if package is not initial.
      append package to packages.
    endif.
    me->phase = mo_request->get_uri_query_parameter( 'phase' ).
    me->build_script = mo_request->get_uri_query_parameter( 'build_script' ).

    if me->is_authorization_valid( ) = abap_false.
      mo_response->set_status( `401` ). return.
    endif.

    try.
        data(build) = /baof/cl_build_factory=>new_build( value #(
                pipeline_build_id = pipeline_build_id
                trkorr = trkorr
                swc = swc
                packages = packages[]
                phase = phase
                build_script = build_script
            ) ).

        data(build_object_value) = me->convert_build_object_2_xstring( build ).

        if not /baof/cl_build=>/baof/if_build~is_a_script_existing( value #(
                pipeline_build_id = pipeline_build_id
                trkorr = trkorr
                swc = swc
                packages = packages[]
                phase = phase
                build_script = build_script
            ) ).
          mo_response->set_status( `500` ).
          return.
        endif.

        if me->async = abap_true.
          call function '/BAOF/BUILD_BACKGROUND_STARTER' starting new task me->pipeline_build_id
            exporting
              build_value = build_object_value.

          mo_response->create_entity( )->set_string_data( build->get_id( ) ).
          mo_response->set_status( `202` ).
        else.
          call function '/BAOF/BUILD_BACKGROUND_STARTER'
            exporting
              build_value = build_object_value.

          mo_response->create_entity( )->set_string_data( build->state->get_json( ) ).
        endif.

      catch /baof/cx_build into data(ex).
        mo_response->set_status( `500` ).
    endtry.
  endmethod.