
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, qt5, rcutils, rviz-common }:
buildRosPackage {
  pname = "ros-humble-rviz-visual-testing-framework";
  version = "11.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/humble/rviz_visual_testing_framework/11.2.11-1.tar.gz";
    name = "11.2.11-1.tar.gz";
    sha256 = "6c1b2e2ef6657fae4c2b76753af1c39fca832ad869ca41495b5b6d23d5d4b295";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-cmake-gtest rcutils rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D testing framework for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
