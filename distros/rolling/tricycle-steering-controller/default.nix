
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-rolling-tricycle-steering-controller";
  version = "4.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/tricycle_steering_controller/4.6.0-1.tar.gz";
    name = "4.6.0-1.tar.gz";
    sha256 = "a4b90fc7a760444239d82f18883b5e4efc077937cea1d9a9079bb7948ace0821";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Steering controller with tricycle kinematics. Rear fixed wheels are powering the vehicle and front wheel is steering.'';
    license = with lib.licenses; [ asl20 ];
  };
}
