
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-mypy, ament-pep257, osrf-pycommon, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7ba61ffaec82fc3353aea92e8662d2f57c1350a2e774c02e9179c6269994bb15";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
