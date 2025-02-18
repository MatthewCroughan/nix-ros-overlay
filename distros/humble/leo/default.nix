
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-humble-leo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/humble/leo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "08c0214787b9d0018eeb512db91fef13a996d068d5b14efab6c381d86f53f08c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
