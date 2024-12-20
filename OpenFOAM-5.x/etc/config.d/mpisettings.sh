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
#     mpisettings.sh
#
# Description
#     Additional options for running MPI on Windows.
#
#------------------------------------------------------------------------------

if [ -z "$MPI_ACCESSORY_OPTIONS" ]; then
  case "$WM_MPLIB" in
  OPENMPI)
    export MPI_OVERRIDE_PARALLEL=`which openmpiJob`
    export MPI_OVERRIDE_RUN_PARALLEL=`which openmpiRunParallel`
    export MPI_OVERRIDE_KILL_PARALLEL=`which openmpiKillJob`
    export MPI_ACCESSORY_OPTIONS=""

    #---------------------------------------------
    #This code is to be used when the MSys vs Open-MPI bug is fixed (if ever).

    #export OPAL_PKGDATADIR=$MPI_ARCH_PATH/share/openmpi

    #add environment variables
    #mpienvopts=`echo " "\`export | grep WM_ | sed -e "s/=.*$//" -e "s/^.* //"\` | sed -e "s/ / -x /g"`
    ## DO NOT USE FOR NOW #mpienvopts2=`echo " "\`export | grep FOAM_ | sed -e "s/=.*$//" -e "s/^.* //"\` | sed -e "s/ / -x /g"`
    #mpienvopts2="" # FOAM_ variables don't seem to be needed and additionally it is a burden on mpirun command line!
    #MPI_ACCESSORY_OPTIONS="-x HOME -x PATH -x USERNAME -x LD_LIBRARY_PATH -x MPI_BUFFER_SIZE -x OPAL_PKGDATADIR -x MPI_ACCESSORY_OPTIONS $mpienvopts $mpienvopts2"

    #unset mpienvopts mpienvopts2
    #---------------------------------------------
    ;;

  MPICH)
    #add environment variables
    mpienvopts=`echo \`export | grep WM_ | sed -e "s/=.*$//" -e "s/^.* //"\` | sed -e "s/ /,/g"`
    MPI_ACCESSORY_OPTIONS="-genvlist HOME,PATH,USERNAME,LD_LIBRARY_PATH,MPI_BUFFER_SIZE,MPI_ACCESSORY_OPTIONS,$mpienvopts"

    #mpienvopts2=`echo \`export | grep FOAM_ | sed -e "s/=.*$//" -e "s/^.* //"\` | sed -e "s/ /,/g"`
    mpienvopts2="" # FOAM_ variables don't seem to be needed and additionally it is a burden on mpirun command line!
    [ -n "$mpienvopts2" ] && MPI_ACCESSORY_OPTIONS="$MPI_ACCESSORY_OPTIONS,$mpienvopts2"

    unset mpienvopts mpienvopts2
    ;;

  MSMPI2008)
    #Don't need to add anything
    MPI_ACCESSORY_OPTIONS=""
    ;;

  MSMPI2012|MSMPI2012R2)
    #Don't need to add anything
    MPI_ACCESSORY_OPTIONS=""
    ;;
  
  MSMPI71)
    MPI_ACCESSORY_OPTIONS="-genvlist WM_PROJECT_DIR,MPI_BUFFER_SIZE,PATH"
    ;;

  esac

  export MPI_ACCESSORY_OPTIONS
fi

# ----------------------------------------------------------------- end-of-file
