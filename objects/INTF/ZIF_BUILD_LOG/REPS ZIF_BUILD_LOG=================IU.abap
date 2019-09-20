interface ZIF_BUILD_LOG
  public .


  interfaces IF_SERIALIZABLE_OBJECT .

  data IS_SUCCESS type ABAP_BOOL .
  data LOG type ref to ZIF_BUILD_LOG .
  data STATE type ref to ZIF_BUILD_LOG .
  data START_SCOPE type ref to ZIF_BUILD_LOG .
endinterface.