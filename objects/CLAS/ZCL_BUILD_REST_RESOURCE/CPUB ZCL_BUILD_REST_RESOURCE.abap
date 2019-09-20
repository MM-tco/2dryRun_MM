class ZCL_BUILD_REST_RESOURCE definition
  public
  inheriting from CL_REST_RESOURCE
  final
  create public .

public section.
  type-pools ABAP .

  methods CONSTRUCTOR
    importing
      !ASYNC type ABAP_BOOL .

  methods IF_REST_RESOURCE~GET
    redefinition .
  methods IF_REST_RESOURCE~POST
    redefinition .