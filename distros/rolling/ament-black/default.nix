
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-black";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/rolling/ament_black/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "0a6cf6501930db14e1d3ff47a3adb354b050471453b9811fd6903a0bcadfb6e2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.unidiff python3Packages.uvloop pythonPackages.black ];

  meta = {
    description = ''The ability to check code against style conventions using
    black and generate xUnit test result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
