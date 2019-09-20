  method new_build_state.
    if build_state is not bound.
      build_state = new /baof/cl_build_state( build_id = build_id pipeline_build_id = pipeline_build_id ).
    endif.
    result = build_state.
  endmethod.