
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-cpp, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/iron/rqt/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "13694810d1129b6dc2ae49335bb7a9ad51b8226fc676dde92542f9644f21755d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-cpp rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt is a Qt-based framework for GUI development for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
