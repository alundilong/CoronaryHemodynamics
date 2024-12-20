#----------------------------------*-sh-*--------------------------------------
#
# License
#
#     Copyright (C) 2016-2017 blueCAPE Lda
#     blueCFD(R) is a registered trade mark of blueCAPE Lda
#     OpenFOAM(R) is a registered trade mark of ESI-OpenCFD
#
#     This file is part of blueCAPE's blueCFD-Core port of OpenFOAM technology
#     for Windows and it abides to the same GNU GPL v3 license.
#     blueCFD-Core was designed to improve the user experience in using
#     OpenFOAM in Windows via MSYS/MSYS2 and Windows command line.
#     For more information about blueCFD-Core, visit:
#         http://bluecfd.com/Core
#
#     OpenFOAM Foundation website: http://www.openfoam.org
#     OpenFOAM+ website (ESI-OpenCFD): http://www.openfoam.com
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
# Script
#     of5x.sh
#
# Description
#     Help script for setting up the working environment for the port of
#     OpenFOAM 5.x for Windows.
#
#     Note: this script relies on the sourceOF script already being present and
#     loaded at the "ofuser" home folder.
#
#------------------------------------------------------------------------------


#always set-up all main environments, given that we now build directly on Windows
alias of5-64='setup_blueCFD_environment of5; . $FOAM_INST_DIR/OpenFOAM-5.x/etc/bashrc WM_PROJECT_USER_DIR=${WM_PROJECT_USER_DIR} FOAM_INST_DIR=${FOAM_INST_DIR} prefs-mingw_w64.sh WM_MPLIB=$WM_MPLIB'
alias of5-64S='setup_blueCFD_environment of5; . $FOAM_INST_DIR/OpenFOAM-5.x/etc/bashrc WM_PROJECT_USER_DIR=${WM_PROJECT_USER_DIR} FOAM_INST_DIR=${FOAM_INST_DIR} prefs-mingw_w64.sh WM_PRECISION_OPTION=SP WM_MPLIB=$WM_MPLIB'

alias of5-32='setup_blueCFD_environment of5; . $FOAM_INST_DIR/OpenFOAM-5.x/etc/bashrc WM_PROJECT_USER_DIR=${WM_PROJECT_USER_DIR} FOAM_INST_DIR=${FOAM_INST_DIR} prefs-mingw_w32.sh WM_MPLIB=$WM_MPLIB'
alias of5-32S='setup_blueCFD_environment of5; . $FOAM_INST_DIR/OpenFOAM-5.x/etc/bashrc WM_PROJECT_USER_DIR=${WM_PROJECT_USER_DIR} FOAM_INST_DIR=${FOAM_INST_DIR} prefs-mingw_w32.sh WM_PRECISION_OPTION=SP WM_MPLIB=$WM_MPLIB'


if [ -d "$FOAM_INST_DIR/OpenFOAM-5.x/platforms/mingw_w64GccDPInt32Opt/lib" ]; then
  blueCFDCore_AppendInstalledVersion of5-64 "OpenFOAM 5.x mingw-w64 Double Precision"
else
  blueCFDCore_AppendPossibleVersion of5-64 "OpenFOAM 5.x mingw-w64 Double Precision"
fi

if [ -d "$FOAM_INST_DIR/OpenFOAM-5.x/platforms/mingw_w64GccSPInt32Opt/lib" ]; then
  blueCFDCore_AppendInstalledVersion of5-64S "OpenFOAM 5.x mingw-w64 Single Precision"
else
  blueCFDCore_AppendPossibleVersion of5-64S "OpenFOAM 5.x mingw-w64 Single Precision"
fi


if [ -d "$FOAM_INST_DIR/OpenFOAM-5.x/platforms/mingw_w32GccDPInt32Opt/lib" ]; then 
  blueCFDCore_AppendInstalledVersion of5-32 "OpenFOAM 5.x mingw-w32 Double Precision"
else
  blueCFDCore_AppendPossibleVersion of5-32 "OpenFOAM 5.x mingw-w32 Double Precision"
fi

if [ -d "$FOAM_INST_DIR/OpenFOAM-5.x/platforms/mingw_w32GccSPInt32Opt/lib" ]; then
  blueCFDCore_AppendInstalledVersion of5-32S "OpenFOAM 5.x mingw-w32 Single Precision"
else
  blueCFDCore_AppendPossibleVersion of5-32S "OpenFOAM 5.x mingw-w32 Single Precision"
fi

