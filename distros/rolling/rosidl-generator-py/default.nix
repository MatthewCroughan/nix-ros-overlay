
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-pytest, ament-cmake-uncrustify, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, python3Packages, pythonPackages, rmw, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rpyutils, test-interface-files }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-py";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/rolling/rosidl_generator_py/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "d0e0b3fd519155f880b582312b745554b5627250acad14dad460b5569bce56e4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python-cmake-module python3Packages.numpy pythonPackages.pytest rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-typesupport-c rosidl-typesupport-fastrtps-c rosidl-typesupport-introspection-c rpyutils test-interface-files ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-pep257 ament-cmake-uncrustify ament-index-python python-cmake-module python3Packages.numpy rmw rosidl-cli rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-c rosidl-typesupport-interface rpyutils ];
  nativeBuildInputs = [ ament-cmake ament-index-python python-cmake-module rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
