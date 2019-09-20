class-pool .
*"* class pool for class ZCL_BUILD

*"* local type definitions
include ZCL_BUILD=====================ccdef.

*"* class ZCL_BUILD definition
*"* public declarations
  include ZCL_BUILD=====================cu.
*"* protected declarations
  include ZCL_BUILD=====================co.
*"* private declarations
  include ZCL_BUILD=====================ci.
endclass. "ZCL_BUILD definition

*"* macro definitions
include ZCL_BUILD=====================ccmac.
*"* local class implementation
include ZCL_BUILD=====================ccimp.

*"* test class
include ZCL_BUILD=====================ccau.

class ZCL_BUILD implementation.
*"* method's implementations
  include methods.
endclass. "ZCL_BUILD implementation
