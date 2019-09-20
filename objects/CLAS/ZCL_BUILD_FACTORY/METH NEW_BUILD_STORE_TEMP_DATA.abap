   method new_build_store_temp_data.
    if build_store_temp_data is not bound.
      build_store_temp_data = new /baof/cl_build_store_temp_data( pipeline_build_id ).
    endif.
    result = build_store_temp_data.
  endmethod.