  method new_data_provider.
    if data_provider is not bound.
      data_provider = new /baof/cl_build_data_provider( ).
    endif.
    result = data_provider.
  endmethod.