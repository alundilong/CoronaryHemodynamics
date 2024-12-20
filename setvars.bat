@echo off

rem ----------------------------------------------------------------------------
rem
rem License
rem     This file is part of blueCFD-Core. It was designed to improve the user
rem     experience in using OpenFOAM in Windows.
rem     For more information about blueCFD-Core, visit:
rem         http://bluecfd.com/Core
rem
rem     blueCFD(R) is a registered trade mark of blueCAPE Lda
rem     OpenFOAM(R) is a registered trade mark of ESI-OpenCFD
rem
rem     OpenFOAM Foundation website: http://www.openfoam.org
rem     OpenFOAM+ website (ESI-OpenCFD): http://www.openfoam.com
rem
rem     OpenFOAM is free software: you can redistribute it and/or modify it
rem     under the terms of the GNU General Public License as published by
rem     the Free Software Foundation, either version 3 of the License, or
rem     (at your option) any later version.
rem
rem     OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
rem     ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
rem     FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
rem     for more details.
rem
rem     You should have received a copy of the GNU General Public License
rem     along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.
rem
rem File
rem     setvars.bat
rem
rem Description
rem     Simplified batch file for loading OpenFOAM's environment to be used in
rem     the Windows Command Line.
rem
rem     This is mostly intended to be used by other applications, such as GUI
rem     software.
rem
rem ----------------------------------------------------------------------------

%~d0
cd "%~dp0"
set HOME=%~dp0
set HOME=%HOME:~0,-1%

set AddOns_ParaView_DIR=%HOME%\AddOns\ParaView
set BLUECFDPATH=%HOME%

set USER=ofuser
set USERNAME=ofuser
set WM_PROJECT=OpenFOAM
set WM_PROJECT_VERSION=5.x
set FOAM_INST_DIR=%HOME%
set WM_PROJECT_INST_DIR=%FOAM_INST_DIR%
set WM_PROJECT_DIR=%FOAM_INST_DIR%\%WM_PROJECT%-%WM_PROJECT_VERSION%
set WM_PROJECT_USER_DIR=%HOME%\%USER%-of5
set WM_THIRD_PARTY_DIR=%WM_PROJECT_INST_DIR%\ThirdParty-%WM_PROJECT_VERSION%

set WM_ARCH=mingw_w64
set WM_ARCH_OPTION=64
set WM_CC=x86_64-w64-mingw32-gcc
set WM_COMPILER=Gcc
set WM_COMPILER_ARCH=x86_64-w64-mingw32
set WM_COMPILER_TYPE=system
set WM_COMPILE_OPTION=Opt
set WM_CXX=x86_64-w64-mingw32-g++
set WM_DIR=%WM_PROJECT_DIR%\wmake
set WM_LABEL_OPTION=Int32
set WM_LABEL_SIZE=32
set WM_LINK_LANGUAGE=c++
set WM_MPLIB=MSMPI71
set WM_OSTYPE=MSwindows
set WM_PRECISION_OPTION=DP
set WM_TARGET_ARCH=mingw_w64
set WM_OPTIONS=%WM_ARCH%%WM_COMPILER%%WM_PRECISION_OPTION%%WM_LABEL_OPTION%%WM_COMPILE_OPTION%

set ParaView_DIR=%HOME%\AddOns\ParaView
set ParaView_MAJOR=5.4
set ParaView_VERSION=5.4.1

set BOOST_ARCH_PATH=%HOME%\msys64\mingw64
set CGAL_ARCH_PATH=%HOME%\msys64\mingw64

set MPI_ACCESSORY_OPTIONS=-genvlist WM_PROJECT_DIR,MPI_BUFFER_SIZE,PATH
set MPI_ARCH_PATH=%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%\MS-MPI-7.1
set MPI_BUFFER_SIZE=20000000

set FOAMY_HEX_MESH=1
set FOAM_APP=%WM_PROJECT_DIR%\applications
set FOAM_APPBIN=%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\bin
set FOAM_ETC=%WM_PROJECT_DIR%\etc
set FOAM_EXT_LIBBIN=%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%%WM_PRECISION_OPTION%%WM_LABEL_OPTION%\lib
set FOAM_JOB_DIR=%HOME%\jobControl
set FOAM_LIBBIN=%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\lib
set FOAM_MPI=MS-MPI-7.1
set FOAM_RUN=%WM_PROJECT_USER_DIR%\run
set FOAM_SIGFPE=1
set FOAM_SITE_APPBIN=%HOME%\site\%WM_PROJECT_VERSION%\platforms\%WM_OPTIONS%\bin
set FOAM_SITE_LIBBIN=%HOME%\site\%WM_PROJECT_VERSION%\platforms\%WM_OPTIONS%\lib
set FOAM_SOLVERS=%WM_PROJECT_DIR%\applications\solvers
set FOAM_SRC=%WM_PROJECT_DIR%\src
set FOAM_TUTORIALS=%WM_PROJECT_DIR%\tutorials
set FOAM_USER_APPBIN=%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\bin
set FOAM_USER_LIBBIN=%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\lib
set FOAM_UTILITIES=%WM_PROJECT_DIR%\applications\utilities

set PATH=%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%\%FOAM_MPI%\bin;%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\bin;%HOME%\site\%WM_PROJECT_VERSION%\platforms\%WM_OPTIONS%\bin;%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\bin;%WM_PROJECT_DIR%\bin;%WM_PROJECT_DIR%\wmake;%HOME%\msys64\mingw64\bin;%WINDIR%;%WINDIR%\SYSTEM32;%HOME%\AddOns\gnuplot\bin;%HOME%\AddOns\notepad2;%WM_PROJECT_USER_DIR%\platforms\%WM_OPTIONS%\lib;%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\lib\%FOAM_MPI%;%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%%WM_PRECISION_OPTION%%WM_LABEL_OPTION%\lib\%FOAM_MPI%;%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%\%FOAM_MPI%\lib;%HOME%\site\%WM_PROJECT_VERSION%\platforms\%WM_OPTIONS%\lib;%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\lib;%HOME%\ThirdParty-%WM_PROJECT_VERSION%\platforms\%WM_ARCH%%WM_COMPILER%%WM_PRECISION_OPTION%%WM_LABEL_OPTION%\lib;%WM_PROJECT_DIR%\platforms\%WM_OPTIONS%\lib\dummy

%1 %2 %3 %4 %5 %6 %7 %8 %9
