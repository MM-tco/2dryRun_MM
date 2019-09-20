  method scope_by_development_packages.
    try.
        result = scopes[ table_line->package_names = package_names table_line->software_component_name = dlvunit table_line->source_transport = source_transport ].
      catch cx_sy_itab_line_not_found.
        result = new /baof/cl_build_scope(
            package_names           = package_names
            software_component_name = dlvunit
            scope_kind              = /baof/if_build_scope=>const_scope_kind_packages
            source_transport        = source_transport ).
        append result to scopes.
    endtry.
  endmethod.