  method new_build_log.
    if build_log is not bound.
      build_log = new /baof/cl_build_log( name = name ).
    endif.
    result = build_log.
  endmethod.