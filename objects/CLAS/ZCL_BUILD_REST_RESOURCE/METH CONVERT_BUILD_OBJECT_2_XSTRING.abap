  method convert_build_object_2_xstring.
    data(writer) = cl_sxml_string_writer=>create( type = if_sxml=>co_xt_json ).
    call transformation id source model = build result xml writer.
    cl_abap_conv_in_ce=>create( input = writer->get_output( ) )->read( importing data = result ).
  endmethod.