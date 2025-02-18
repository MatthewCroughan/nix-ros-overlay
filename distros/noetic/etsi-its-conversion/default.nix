
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-cam-conversion, etsi-its-denm-conversion, message-runtime, nodelet, ros-environment, roscpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-conversion";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_conversion/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b0d132fc1d36d9cd77437c0a358c6dcb0b4b60e08270b2fb47302ffefc1dcec0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-cam-conversion etsi-its-denm-conversion message-runtime nodelet ros-environment roscpp std-msgs udp-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts ROS messages to and from ASN.1-encoded ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
