#----------------------------------*-sh-*--------------------------------------
#
# License
#
#     Copyright (C) 2011-2016 blueCAPE Lda
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
# File
#     etc/prefs-custom-gcc47.sh
#
# Description
#     Preset variables for the OpenFOAM configuration - POSIX shell syntax.
#
#     This file will only be sourced if set when calling bashrc. Example:
#       source $HOME/OpenFOAM/OpenFOAM-2.3/etc/bashrc prefs-custom-gcc47.sh
#
#------------------------------------------------------------------------------

# Specify compiler mode: system or ThirdParty
# ~~~~~~~~~~~~~~~~~~~~~~~
foamCompiler=ThirdParty

# Specify openmpi
# ~~~~~~~~~~~~~~~~~~~~~~
export WM_MPLIB=OPENMPI

#- Compiler:
#    WM_COMPILER = Gcc | Gcc45 | Gcc46 | Gcc47 | Clang | Icc (Intel icc)
export WM_COMPILER=Gcc47
unset WM_COMPILER_ARCH WM_COMPILER_LIB_ARCH

# ----------------------------------------------------------------- end-of-file
