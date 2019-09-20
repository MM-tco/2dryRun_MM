  method new_root_package.
    if root_package is not bound.
      root_package = /baof/cl_build_package=>new_root( name = name ).
    endif.
    result = root_package.
  endmethod.