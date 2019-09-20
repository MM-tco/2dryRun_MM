  method new_package.
    try.
        result = packages[ table_line->name = name table_line->parent = parent ].
      catch cx_sy_itab_line_not_found.
        result = /baof/cl_build_package=>new_package( name = name parent = parent script = script ).
        append result to packages.
    endtry.
  endmethod.