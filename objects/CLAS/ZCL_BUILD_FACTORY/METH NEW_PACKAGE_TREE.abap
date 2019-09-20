  method new_package_tree.
    if package_tree is not bound.
      package_tree = new /baof/cl_build_package_tree( software_component_name ).
    endif.
    result = package_tree.
  endmethod.