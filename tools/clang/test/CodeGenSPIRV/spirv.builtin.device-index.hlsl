// Run: %dxc -T vs_6_0 -E main

// CHECK: OpCapability DeviceGroup

// CHECK: OpExtension "SPV_KHR_device_group"


// CHECK: OpDecorate [[a:%\d+]] BuiltIn DeviceIndex

float main(
  // CHECK: [[a]] = OpVariable %_ptr_Input_int Input
  [[vk::builtin("DeviceIndex")]]    int deviceIndex : A
) : OUTPUT{
  return 1.0;
}