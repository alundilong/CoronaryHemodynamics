#---------------------------------*- sh -*-------------------------------------
# License
#
#     Copyright (C) 2011-2014 blueCAPE Lda
#
#     This file is part of the branch "get-em" available here:
#         https://github.com/wyldckat/ThirdParty-2.0.x/commits/get-em
#
#     This file is a derivative work of OpenFOAM.
#
#     OpenFOAM is free software: you can redistribute it and/or modify it
#     under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
#     ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#     FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
#     for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.
#
# File
#     defaults.sh
#
# Description
#     Default version definitions for the get-em script. Here are defined all
#   of the version numbers that are not accessible otherwise.
#
# TODO: These definitions should be in OpenFOAM's own etc folder and be
#     sourced by "settings.sh".
#
#------------------------------------------------------------------------------

. $WM_PROJECT_DIR/etc/config.sh/compiler

metis_version=$(. $WM_PROJECT_DIR/etc/config.sh/metis; \
    echo $METIS_VERSION | sed -e 's=metis-==')

. $WM_PROJECT_DIR/etc/config.sh/CGAL

make_version=4.0
flex_version=2.5.35

qt_version=4.8.4

cmake_version=2.8.12.1

tecio_version=2009

libccmio_version=2.6.1

zlib_version=1.2.5
