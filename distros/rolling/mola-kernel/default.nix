
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "be95ce763e51fa21071f826823bb5af2d191580a9e15ace393c1e0aa8795899c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Fundamental C++ virtual interfaces and data types for the rest of MOLA modules'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
