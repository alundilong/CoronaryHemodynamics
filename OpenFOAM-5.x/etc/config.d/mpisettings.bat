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
rem     mpisettings.bat
rem
rem Description
rem     Specify global settings for launching parallel cases.
rem
rem ------------------------------------------------------------------------------

GOTO %WM_MPLIB%

:OPENMPI
rem Must leave a space in front of the =
set MPI_ACCESSORY_OPTIONS=--mca btl_tcp_if_exclude sppp
GOTO end


:MPICH
rem Must leave a space in front of the =
set MPI_ACCESSORY_OPTIONS= 
GOTO end


:MSMPI2008
rem Must leave a space in front of the =
set MPI_ACCESSORY_OPTIONS= 
GOTO end


:MSMPI2012
:MSMPI2012R2
rem Must leave a space in front of the =
set MPI_ACCESSORY_OPTIONS= 
GOTO end

:MSMPI71
set MPI_ACCESSORY_OPTIONS=-genvlist WM_PROJECT_DIR,MPI_BUFFER_SIZE,PATH
GOTO end

:end
