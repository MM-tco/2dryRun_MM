  method new_build_task.
    try.
        result = build_tasks[
          table_line->plugin_description = plugin_description
          table_line->composition = composition
          table_line->scope = scope
          table_line->build = build
           ].
      catch cx_sy_itab_line_not_found.
        result = new /baof/cl_build_task(
          plugin_description = plugin_description
          composition = composition
          scope = scope
          build = build ).
        append result to build_tasks.
    endtry.
  endmethod.