
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-humble-ros2nodl";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/ros2nodl/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "f4ed8ea39c51ba105b641cf8a2249d84b52d9e94f364237ddd6d938833eb45f4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
