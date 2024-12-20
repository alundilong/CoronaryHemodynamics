@echo off
rem ---------------------------------------------------------------------------
rem 
rem   Copyright (C) 2011-2016 blueCAPE Lda
rem   blueCFD(R) is a registered trade mark of blueCAPE Lda
rem   OpenFOAM(R) is a registered trade mark of ESI-OpenCFD
rem
rem   This file is part of blueCAPE's blueCFD-Core port of OpenFOAM technology
rem   for Windows and it abides to the same GNU GPL v3 license.
rem   blueCFD-Core was designed to improve the user experience in using
rem   OpenFOAM in Windows via MSYS/MSYS2 and Windows command line.
rem   For more information about blueCFD-Core, visit:
rem       http://bluecfd.com/Core
rem 
rem   OpenFOAM Foundation website: http://www.openfoam.org
rem   OpenFOAM+ website (ESI-OpenCFD): http://www.openfoam.com
rem 
rem   OpenFOAM is free software: you can redistribute it and/or modify it
rem   under the terms of the GNU General Public License as published by
rem   the Free Software Foundation, either version 3 of the License, or
rem   (at your option) any later version.
rem 
rem   OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
rem   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
rem   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
rem   for more details.
rem 
rem   You should have received a copy of the GNU General Public License
rem   along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.
rem
rem File
rem     changedefmpi.bat
rem
rem Description
rem     Change the default MPI based on the name on the first argument.
rem
rem ------------------------------------------------------------------------------

%~d0
cd "%~dp0"

IF "%1" == "" GOTO ABORT

:MSYSMPI
echo.>defaultmpi.sh

IF "%1" == """" echo export WM_MPLIB="">> defaultmpi.sh
IF NOT "%1" == """" echo #export WM_MPLIB="">> defaultmpi.sh

IF "%1" == "OPENMPI" echo export WM_MPLIB=OPENMPI>> defaultmpi.sh
IF NOT "%1" == "OPENMPI" echo #export WM_MPLIB=OPENMPI>> defaultmpi.sh

IF "%1" == "MSMPI2008" echo export WM_MPLIB=MSMPI2008>> defaultmpi.sh
IF NOT "%1" == "MSMPI2008" echo #export WM_MPLIB=MSMPI2008>> defaultmpi.sh

IF "%1" == "MSMPI2012" echo export WM_MPLIB=MSMPI2012>> defaultmpi.sh
IF NOT "%1" == "MSMPI2012" echo #export WM_MPLIB=MSMPI2012>> defaultmpi.sh

IF "%1" == "MSMPI2012R2" echo export WM_MPLIB=MSMPI2012R2>> defaultmpi.sh
IF NOT "%1" == "MSMPI2012R2" echo #export WM_MPLIB=MSMPI2012R2>> defaultmpi.sh

IF "%1" == "MSMPI71" echo export WM_MPLIB=MSMPI71>> defaultmpi.sh
IF NOT "%1" == "MSMPI71" echo #export WM_MPLIB=MSMPI71>> defaultmpi.sh

IF "%1" == "MSMPI81" echo export WM_MPLIB=MSMPI81>> defaultmpi.sh
IF NOT "%1" == "MSMPI81" echo #export WM_MPLIB=MSMPI81>> defaultmpi.sh

GOTO END

:ABORT
echo No valid argument was provided. Valid options:
echo "" (quotes) for dummy mode (MPI'less)
echo OPENMPI      for Open-MPI
echo MSMPI2008    for MS-MPI 2008
echo MSMPI2012    for MS-MPI 2012
echo MSMPI2012R2  for MS-MPI 2012 R2
echo MSMPI71      for MS-MPI 7.1
echo MSMPI81      for MS-MPI 8.1
pause

:END
