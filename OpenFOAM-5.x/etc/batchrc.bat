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
rem  Script
rem      batchrc.bat
rem 
rem  Description
rem      This batch file initializes the OpenFOAM environment for running in
rem    the Windows Command Line.
rem 
rem ---------------------------------------------------------------------------

rem Isolate blueCFD-Core from other applications
set PATH=%WINDIR%;%WINDIR%\SYSTEM32

%~d0
cd "%~dp0.."
call :SETHOME "%CD%"

rem BEGGINING of Default options --------------------------------------

rem - Compiler:
rem PICK ONE from these:
rem     mingw32    - custom build of the Gcc+mingw cross-compiler
rem     mingw-w32  - custom build of the 32bit Gcc+mingw-w64 cross-compiler
rem     mingw-w64  - custom build of the 64bit Gcc+mingw-w64 cross-compiler
set WM_COMPILER=mingw-w32

rem - MPI implementation:
rem PICK ONE: "", OPENMPI, MPICH, MSMPI2008, MSMPI2012
set WM_MPLIB=OPENMPI

rem - Precision:
rem PICK ONE: SP or DP
set WM_PRECISION_OPTION=DP

rem END of Default options --------------------------------------------

rem BEGGINING of Process summoned options ---------------------------
FOR %%A IN (%*) DO (
  set %%A
)
rem END of Process summoned options ---------------------------------

set USER=ofuser
set USERNAME=ofuser
set WM_PROJECT=OpenFOAM
set WM_PROJECT_VERSION=2.3
set FOAM_INST_DIR=%HOME%
rem set FOAM_INST_DIR=%HOME%\%WM_PROJECT%
set WM_PROJECT_INST_DIR=%FOAM_INST_DIR%
set WM_PROJECT_DIR=%FOAM_INST_DIR%\%WM_PROJECT%-%WM_PROJECT_VERSION%
set WM_PROJECT_USER_DIR=%HOME%\%USER%-%WM_PROJECT_VERSION%
set WM_THIRD_PARTY_DIR=%WM_PROJECT_INST_DIR%\ThirdParty-%WM_PROJECT_VERSION%

set WM_OS=MSwindows
set WM_ARCH=linux
set WM_COMPILE_OPTION=Opt
set WM_COMPILER_ARCH=""
set WM_COMPILER_LIB_ARCH=""

IF "%WM_COMPILER%"=="mingw32"   set WM_ARCH_OPTION=32
IF "%WM_COMPILER%"=="mingw-w32" set WM_ARCH_OPTION=32
IF "%WM_COMPILER%"=="mingw-w64" set WM_ARCH_OPTION=64

IF "%WM_COMPILER%"=="mingw32"   set WM_COMPILER_ARCH=i686-pc-mingw32
IF "%WM_COMPILER%"=="mingw-w32" set WM_COMPILER_ARCH=i686-pc-mingw32
IF "%WM_COMPILER%"=="mingw-w64" set WM_COMPILER_ARCH=x86_64-w64-mingw32

rem - Floating-point signal handling:
rem     set or unset
set FOAM_SIGFPE=""

rem - memory initialisation:
rem     set or unset
rem set FOAM_SETNAN=""

set WM_CC=%WM_COMPILER_ARCH%-gcc
set WM_CXX=%WM_COMPILER_ARCH%-g++
set FOAM_JOB_DIR=%FOAM_INST_DIR%\jobControl

rem wmake configuration
set WM_DIR=%WM_PROJECT_DIR%\wmake
set WM_LINK_LANGUAGE=c++
set WM_OPTIONS=%WM_ARCH%%WM_COMPILER%%WM_PRECISION_OPTION%%WM_COMPILE_OPTION%

rem base executables/libraries
set FOAM_APPBIN=%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\bin
set FOAM_LIBBIN=%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\lib

rem external (ThirdParty) libraries
set FOAM_EXT_LIBBIN=%WM_THIRD_PARTY_DIR%\platforms\%WM_OPTIONS%\lib

rem user executables/libraries
set FOAM_USER_APPBIN=%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\bin
set FOAM_USER_LIBBIN=%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\lib

rem convenience
set FOAM_APP=%WM_PROJECT_DIR%\applications
set FOAM_SRC=%WM_PROJECT_DIR%\src
set FOAM_TUTORIALS=%WM_PROJECT_DIR%\tutorials
set FOAM_UTILITIES=%FOAM_APP%\utilities
set FOAM_SOLVERS=%FOAM_APP%\solvers
set FOAM_RUN=%WM_PROJECT_USER_DIR%\run

IF "%WM_MPLIB%"=="""" set FOAM_MPI=dummy
IF "%WM_MPLIB%"=="OPENMPI" set FOAM_MPI=openmpi-1.6.2
IF "%WM_MPLIB%"=="MPICH" set FOAM_MPI=mpich2-1.4.1p1
IF "%WM_MPLIB%"=="MSMPI2008" set FOAM_MPI=msmpi-2008R2
IF "%WM_MPLIB%"=="MSMPI2012" set FOAM_MPI=msmpi-2012

set MPI_HOME=%WM_THIRD_PARTY_DIR%\%FOAM_MPI%
set MPI_ARCH_PATH=%WM_THIRD_PARTY_DIR%\platforms\%WM_ARCH%%WM_COMPILER%\%FOAM_MPI%

IF "%WM_MPLIB%"=="OPENMPI" set OPAL_PKGDATADIR=%MPI_ARCH_PATH%\share\openmpi
IF "%WM_MPLIB%"=="MPICH" set MPICH_ROOT=%MPI_ARCH_PATH%

set FOAM_MPI_LIBBIN=%FOAM_LIBBIN%\%FOAM_MPI%
set MPI_BUFFER_SIZE=20000000

set ParaView_MAJOR=4.1
set ParaView_MINOR=0
set ParaView_VERSION=%ParaView_MAJOR%.%ParaView_MINOR%

set ParaView_INST_DIR=%WM_THIRD_PARTY_DIR%\paraview-%ParaView_VERSION%
set ParaView_DIR=%WM_THIRD_PARTY_DIR%\platforms\%WM_ARCH%%WM_COMPILER%\paraview-%ParaView_VERSION%
set PV_PLUGIN_PATH=%FOAM_LIBBIN%\paraview-%ParaView_MAJOR%

set cmake_version=cmake-2.8.12.1
set CMAKE_HOME=%WM_THIRD_PARTY_DIR%\platforms\%WM_ARCH%%WM_COMPILER%\%cmake_version%

set boost_version=boost_1_45_0
set cgal_version=CGAL-4.3

set BOOST_ARCH_PATH=%WM_THIRD_PARTY_DIR%\platforms\%WM_ARCH%%WM_COMPILER%\%boost_version%
set CGAL_ARCH_PATH=%WM_THIRD_PARTY_DIR%\platforms\%WM_ARCH%%WM_COMPILER%\%cgal_version%

set PATH=%PATH%;%WM_DIR%;%MPI_ARCH_PATH%\lib;%MPI_ARCH_PATH%\bin;%FOAM_MPI_LIBBIN%;%FOAM_USER_APPBIN%;%FOAM_USER_LIBBIN%;%FOAM_APPBIN%;%FOAM_LIBBIN%;%FOAM_EXT_LIBBIN%;%WM_PROJECT_DIR%\bin;%ParaView_DIR%\bin;%CMAKE_HOME%\bin;%BOOST_ARCH_PATH%\lib;%CGAL_ARCH_PATH%\bin

rem add (non-dummy) MPI implementation
rem dummy MPI already added to LD_LIBRARY_PATH and has no external libraries
IF NOT "%FOAM_MPI%"=="dummy" set PATH=%PATH%;%FOAM_EXT_LIBBIN%\%FOAM_MPI%

rem Source all *.bat files present at "%WM_PROJECT_DIR%\etc\config.d"
for %%A in ("%WM_PROJECT_DIR%\etc\config.d\*.bat") DO CALL "%%A"
GOTO END

:SETHOME
set HOME=%~dp1
set HOME=%HOME:~0,-1%
GOTO :EOF

:END
cd "%WM_PROJECT_INST_DIR%"
