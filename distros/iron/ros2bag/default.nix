
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2cli, rosbag2-py, rosbag2-storage-default-plugins, rosbag2-test-common }:
buildRosPackage {
  pname = "ros-iron-ros2bag";
  version = "0.22.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/ros2bag/0.22.6-1.tar.gz";
    name = "0.22.6-1.tar.gz";
    sha256 = "3cba79783be0a01f66305083b7e2b1bdc064f45a840ba924c2247787e202a182";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch-testing launch-testing-ros pythonPackages.pytest rosbag2-storage-default-plugins rosbag2-test-common ];
  propagatedBuildInputs = [ ament-index-python rclpy ros2cli rosbag2-py ];

  meta = {
    description = ''Entry point for rosbag in ROS 2'';
    license = with lib.licenses; [ asl20 ];
  };
}
