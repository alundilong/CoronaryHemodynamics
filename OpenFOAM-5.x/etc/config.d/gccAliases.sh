#----------------------------------*-sh-*--------------------------------------
#
# License
#
#     Copyright (C) 2017 FSD blueCAPE Lda
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
#     gccAliases.sh
#
# Description
#     Aliases for launching GCC software when blueCFD-Core is installed in a
#     path with spaces, such as "C:\Program Files\blueCFD-Core-2016".
#
#------------------------------------------------------------------------------

if [ -e "${WM_DIR}/scripts/makeReinterpretExePath" ]
then

  alias gcc=$($WM_DIR/scripts/makeReinterpretExePath gcc)
  alias g++=$($WM_DIR/scripts/makeReinterpretExePath g++)
  alias ld=$($WM_DIR/scripts/makeReinterpretExePath ld)
  alias ldd=$($WM_DIR/scripts/makeReinterpretExePath ldd)
  alias objdump=$($WM_DIR/scripts/makeReinterpretExePath objdump)

fi

# ----------------------------------------------------------------- end-of-file
