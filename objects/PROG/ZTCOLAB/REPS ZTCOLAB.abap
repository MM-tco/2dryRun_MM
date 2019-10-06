*&---------------------------------------------------------------------*
*& Report ZTCOLAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztcolab.


data(result) = ztcolab=>execute( ).
write: / |{ result-key } { result-value }|.


*types: begin of ty_data,
*         key   type string,
*         value type string,
*       end of ty_data.
*data lv_obj_name type sobj_name.
*data ls_data type ty_data.
*
*data lv_execute type string value 'EXECUTE'.
*
*select single obj_name from tadir into lv_obj_name where pgmid = 'R3TR' and object = 'CLAS' and obj_name = 'ZTCOLAB'.
*
*if sy-subrc = 0.
*  try.
*      call method (lv_obj_name)=>(lv_execute)
*        receiving
*          data   = ls_data
*        exceptions
*          others = 4.
*      write: / |{ ls_data-key } { ls_data-value }|.
*    catch cx_root.
*      write: / |Method execute not found|.
*  endtry.
*else.
*  write: / |Class { lv_obj_name } not found|.
*endif.