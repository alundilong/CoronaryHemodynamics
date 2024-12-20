@echo off
rem ------------------------------------------------------------------------------
rem
rem License
rem     This file is part of blueCAPE's blueCFD 2.1. It was designed
rem     to improve the user experience in using OpenFOAM in Windows.
rem     For more information about blueCFD, visit:
rem         http://bluecfd.com/Core
rem
rem     OpenFOAM's official site: http://www.openfoam.com
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
rem     generateScotchHeaders.bat
rem
rem Description
rem     Batch file that generates the Scotch header files
rem
rem ------------------------------------------------------------------------------

%~d0
cd "%~dp0"

call .\getCompiler.bat

IF EXIST dummysizes.exe (
dummysizes.exe library.h scotch.h_%WM_COMPILER%
dummysizes.exe library_f.h scotchf.h_%WM_COMPILER%

echo The following files have been created:
echo    scotch.h_%WM_COMPILER%
echo    scotchf.h_%WM_COMPILER%
)

for /d %%a in (*) do (
PUSHD %%a
ptdummysizes.exe ..\library_pt.h ..\ptscotch.h_%WM_COMPILER%_%%a
ptdummysizes.exe ..\library_pt_f.h ..\ptscotchf.h_%WM_COMPILER%_%%a
echo    ptscotch.h_%WM_COMPILER%_%%a
echo    ptscotchf.h_%WM_COMPILER%_%%a
POPD
)

rem wait for user response
pause
