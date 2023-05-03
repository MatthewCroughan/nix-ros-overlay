
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, pmb2-2dnav, pmb2-laser-sensors, pmb2-maps }:
buildRosPackage {
  pname = "ros-humble-pmb2-navigation";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_navigation/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "300b2e0b0ce4ed979ee436b119e654971459a8e3bec950a1df5d68efb722835a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-laser-sensors pmb2-maps ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2 navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
