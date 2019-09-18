*&---------------------------------------------------------------------*
*& Report ZTCOLAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report ztcolab.

types: begin of ty_data,
         key   type string,
         value type string,
       end of ty_data.
data ls_tadir type tadir.
data ls_data type ty_data.
data lv_devclass type tadir-devclass.
data lv_execute type string value 'EXECUTE'.
select single devclass from tadir into lv_devclass where author = sy-uname and ( devclass like 'ZMASTER%' or devclass like '%TCOLAB%' ) and object = 'DEVC'.
if sy-subrc = 0.
  select single * from tadir into ls_tadir where devclass = lv_devclass and object = 'CLAS'.

  if sy-subrc = 0.
    try.
        call method (ls_tadir-obj_name)=>(lv_execute)
          receiving
            data   = ls_data
          exceptions
            others = 4.
        write: / |{ ls_data-key } { ls_data-value }|.
      catch cx_root.
        write: / |Method execute not found|.
    endtry.
  else.
    write: / |Class for user { sy-uname } and package { lv_devclass } not found|.
  endif.
else.
  write: / |Package for user { sy-uname } not found|.
endif.