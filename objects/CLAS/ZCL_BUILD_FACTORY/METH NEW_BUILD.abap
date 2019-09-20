   method new_build.
    if build is not bound.
      build = new /baof/cl_build( input ).
    endif.
    result = build.
  endmethod.