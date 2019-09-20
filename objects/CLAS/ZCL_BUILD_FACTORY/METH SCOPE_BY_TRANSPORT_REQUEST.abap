  method scope_by_transport_request.
    try.
        data(package_names) = new /baof/cl_transport( trkorr )->return_package_names( ).
        try.
            result = scopes[
              table_line->package_names = package_names
              table_line->source_transport = trkorr
              ].
          catch cx_sy_itab_line_not_found.
            result = new /baof/cl_build_scope(
                package_names = package_names
                source_transport = trkorr
                scope_kind = /baof/if_build_scope=>const_scope_kind_packages ).
            append result to scopes.
        endtry.
      catch /baof/cx_transport into data(ex).
        raise exception type /baof/cx_build exporting previous = ex.
    endtry.
  endmethod.