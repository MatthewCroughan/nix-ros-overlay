
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, ros2-control-test-assets, std-srvs, steering-controllers-library }:
buildRosPackage {
  pname = "ros-iron-ackermann-steering-controller";
  version = "3.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/ackermann_steering_controller/3.22.0-1.tar.gz";
    name = "3.22.0-1.tar.gz";
    sha256 = "c9532ad6ee8bedb29c36d109c1a2374780b7316e9fa8439674cfdd12fabc74fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle std-srvs steering-controllers-library ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Steering controller for Ackermann kinematics. Rear fixed wheels are powering the vehicle and front wheels are steering it.'';
    license = with lib.licenses; [ asl20 ];
  };
}
