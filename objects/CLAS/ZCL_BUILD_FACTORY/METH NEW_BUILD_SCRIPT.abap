  method new_build_script.
    try.
        result = scripts[ table_line->key-name = script_name table_line->key-package_name = package_name ].
      catch cx_sy_itab_line_not_found.
        result = new /baof/cl_build_script(
            script_content = /baof/cl_build_factory=>new_data_provider( )->read_script_content( package_name = package_name script_name = script_name )
            package_name = package_name
            script_name = script_name ).
        append result to scripts.
    endtry.
  endmethod.