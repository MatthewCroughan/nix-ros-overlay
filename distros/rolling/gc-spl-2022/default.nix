
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rcgcd-spl-14, rcgcd-spl-14-conversion, rcgcrd-spl-4, rcgcrd-spl-4-conversion, rclpy }:
buildRosPackage {
  pname = "ros-rolling-gc-spl-2022";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/gc_spl_2022/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "c1b0b3f1bc52fe5203b707d68cdc59d0df87006ca3f048353638b6cbe0046a94";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rcgcd-spl-14 rcgcd-spl-14-conversion rcgcrd-spl-4 rcgcrd-spl-4-conversion rclpy ];

  meta = {
    description = ''GameController-Robot communication in RoboCup SPL at RoboCup2022'';
    license = with lib.licenses; [ asl20 ];
  };
}
