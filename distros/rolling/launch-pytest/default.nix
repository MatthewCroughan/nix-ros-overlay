
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-testing, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-pytest";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_pytest/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "719db23da9a1b3ffba8218b1883620d1474e31f8d6305083f480d1bbdb766b8b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 launch ];
  propagatedBuildInputs = [ ament-index-python launch launch-testing osrf-pycommon pythonPackages.pytest ];

  meta = {
    description = ''A package to create tests which involve launch files and multiple processes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
