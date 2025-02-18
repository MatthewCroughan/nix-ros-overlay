
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, ament-lint-auto, ament-lint-common, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-gripper-description, pal-hey5-description, pal-robotiq-description, pal-urdf-utils, pmb2-description, tiago-controller-configuration, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-description";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/tiago_description/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "34e3582cdec21b4fdc502bfadcbcf6ac76f07b102d19bff445076418fb913f26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch launch-pal launch-param-builder launch-ros pal-gripper-description pal-hey5-description pal-robotiq-description pal-urdf-utils pmb2-description tiago-controller-configuration xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
      etc.) of the TIAGO robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
