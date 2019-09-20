class-pool .
*"* class pool for class ZCL_BUILD_FACTORY

*"* local type definitions
include ZCL_BUILD_FACTORY=============ccdef.

*"* class ZCL_BUILD_FACTORY definition
*"* public declarations
  include ZCL_BUILD_FACTORY=============cu.
*"* protected declarations
  include ZCL_BUILD_FACTORY=============co.
*"* private declarations
  include ZCL_BUILD_FACTORY=============ci.
endclass. "ZCL_BUILD_FACTORY definition

*"* macro definitions
include ZCL_BUILD_FACTORY=============ccmac.
*"* local class implementation
include ZCL_BUILD_FACTORY=============ccimp.

*"* test class
include ZCL_BUILD_FACTORY=============ccau.

class ZCL_BUILD_FACTORY implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_BUILD_FACTORY implementation
