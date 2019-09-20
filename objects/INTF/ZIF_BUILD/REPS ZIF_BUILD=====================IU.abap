interface ZIF_BUILD
  public .


  interfaces IF_SERIALIZABLE_OBJECT .

  data IS_SUCCESS type ABAP_BOOL .
  data LOG type ref to ZIF_BUILD_LOG read-only .
  data STATE type ref to ZIF_BUILD_STATE read-only .
  data START_SCOPE type ref to ZIF_BUILD_START_SCOPE read-only .

  methods IS_A_SCRIPT_EXISTING .
  methods GET_ID .
  methods GET_PIPELINE_BUILD_ID .
  methods GET_PHASE .
  methods GET_GIVEN_BUILD_SCRIPT .
  methods INITIALIZE .
  methods EXECUTE .
endinterface.