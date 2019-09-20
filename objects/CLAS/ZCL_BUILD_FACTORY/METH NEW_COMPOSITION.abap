   method new_composition.
    try.
        result = compositions[ table_line->build_scripts = build_scripts ].
      catch cx_sy_itab_line_not_found.
        result = new /baof/cl_build_composition( build_scripts = build_scripts ).
        append result to compositions.
    endtry.
  endmethod.