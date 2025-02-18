
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-urdf-utils, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-gripper-description";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper_description/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "570410143f6862675f30bf097883d3b955c528be62b43e57b5dba18e3c009be1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common urdf-test ];
  propagatedBuildInputs = [ pal-urdf-utils xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_gripper_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
