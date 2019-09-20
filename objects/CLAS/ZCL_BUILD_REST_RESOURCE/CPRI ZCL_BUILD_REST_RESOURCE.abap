private section.

  data ASYNC type STRING .
  data TRKORR type TRKORR .
  data SWC type DLVUNIT .
  data PHASE type ZBUILD_PHASE .
  data PACKAGES type TAB_PACKAGES .
  data PIPELINE_BUILD_ID type ZPIPELINE_BUILD_ID .
  data BUILD_ID type SYSUUID_C26 .
  data BUILD_SCRIPT type STRING .

  methods CONVERT_BUILD_OBJECT_2_XSTRING
    returning
      value(RESULT) type XSTRING .
  methods IS_AUTHORIZATION_VALID
    returning
      value(RESULT) type ABAP_BOOL .