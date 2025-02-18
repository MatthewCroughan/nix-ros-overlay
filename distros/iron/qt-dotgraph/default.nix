
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages }:
buildRosPackage {
  pname = "ros-iron-qt-dotgraph";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/iron/qt_dotgraph/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "e708fa300e8f363ab4a39a1638fddf499ff07fd8c7eed317bb6d03eac4602852";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pygraphviz ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydot ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''qt_dotgraph provides helpers to work with dot graphs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
