
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, hardware-interface, hardware-interface-testing, launch, launch-ros, pluginlib, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "7ca2f97526bff3388187462a5e1feae6182e995885c1f78e59b2e7b9a558656f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs diagnostic-updater hardware-interface launch launch-ros pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''Description of controller_manager'';
    license = with lib.licenses; [ asl20 ];
  };
}
