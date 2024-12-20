ls
cd blueCFD/
ls
cd OpenFOAM-5.x/
ls
cd EscopeCFD/
ls
cd cfMesh/
ls
cd ..
ls
cd initializeFields/
ls
wmake
wclean
wmake
vim Make/options 
ls -ail Make/options 
wmake
ls -ail Make/files 
vim Make/files 
wmake
ls
vim .
wmake
ls
cd ..
ls
cd casePreparer
ls
wmake libo casePreparerTools
find . -type f -exec touch {} +
wmake libo casePreparerTools
cd ..
find . -type f -exec touch {} +
ls
cd casePreparer
wmake
ls
wmake
ls
vim casePreparerTools/Make/files 
wmake libso casePreparerTools
wmake
ls
cd ..
ls
cd CardiovascularBoundaryCondition/
ls
wclean libso
wmake libso
ls
vim bridgeCircuitModel/
vim ../../src/ODE/
vim bridgeCircuitModel/
git status
ls
cd blueCFD/
ls
cd OpenFOAM-5.x/
ls
cd EscopeCFD/
ls
cd CardiovascularBoundaryCondition/
ls
cd ..
ls
cd CardiovascularBoundaryCondition/
ls
wmake libso
ls
cd ..
ls
cd ..
ls
cd src/
ls
cd ODE/
ls
wmake libso
ls
cd ..
ls
cd ..
ls
cd EscopeCFD/
ls
cd CardiovascularBoundaryCondition/
wmake libso
ls
cd ..
ls
cd solvers/
ls
cd ..
ls
cd casePreparer
ls
wmake libso casePreparerTools
wmake
ls
cd ..
ls
cd casePreparerQFR/
ls
wmake libso casePreparerQFRTools && wmake
ls
cd ..
ls
cd solvers/
ls
cd incompressible/
ls
cd SteadyState
ls
cd simpleCoronaryScopeFoam-1.0/
ls
wmake
vim Make/options 
cd ../../
cd ..
ls
cd CardiovascularBoundaryCondition/
wmake libso
wclean libso
wmake libso
ls
cd ../solvers/incompressible/SteadyState/
ls
cd simpleCoronaryScopeFoam-1.0/
cd ../simpleCoronaryScopeFoam-3.0
ls
vim Make/options 
wmake
ls
tut
ls
grep -rn "mean" *
vim compressible/rhoPimpleFoam/LES/pitzDaily/system/controlDict
cd ..
ls
src
find . -name fieldAverage *
find . -name fieldAverage*
vim ./functionObjects/field/fieldAverage/fieldAverage.C
find . -name massflowrate*
find . -name massflow*
ls
cd blueCFD/OpenFOAM-5.x/
ls
cd tutorials/demo/
ls
cd simpleCoronary/
ls
vim system/fvSolution 
simpleCoronaryFoam
ls
rm -r 112
ls
vim system/fvSolution 
simpleCoronaryFoam
tree .
mv FFR.foam  result.foam
tree .
ls
cd ..
ls
cd pimplePipe/
ls
mkdir WK3
ls
mv * WK3/
ls
cp -r WK3 WK2
cd WK2
ls
vim 0
ls
rm 0.* 1
rm -rf 0.* 1
ls
pimpleFoam
ls
tree system/
tree constant/
tree 0
ls
cd ../../coronary/
ls
tree system/
tree constant/
vim system/casePreparerDict 
ls constant/
vim system/GeometryFiles 
cd ../pimplePipe/
cd -
s
ls
vim system/decomposeParDict 
decomposePar -time 0
cd ..
ls
cd ..
ls
cd EscopeCFD/
ls
cp -r ../src/parallel/decompose/metisDecomp/ .
ls
mkdir parallel
mv metisDecomp/ parallel/
cd parallel/
ls
cd metisDecomp/
ls
./Allwmake 
vim Make/options 
./Allwmake 
cd ../../../tutorials/demo/coronary/
ls
decomposePar -force
cd -
ls
wmake libso
vim Make/files 
wclean libso
wmake libso
./Allwmake 
cd ../../../src/parallel/decompose/
ls
vim metisDecomp/
cd ../../../tutorials/demo/coronary/
ls
decomposePar
ldd /home/ofuser/blueCFD/OpenFOAM-5.x/platforms/mingw_w64GccDPInt32Opt/lib/libmetisDecomp
ldd /home/ofuser/blueCFD/OpenFOAM-5.x/platforms/mingw_w64GccDPInt32Opt/lib/libmetisDecomp.dll
ls
cd ../../../src/parallel/
ls
vim decompose/
ls
./Allwmake 
cd ../../tutorials/demo/coronary/
decomposePar.exe 
cd -
ls
vim Allwmake 
cd -
vim system/controlDict
cat ../../../EscopeCFD/parallel/metisDecomp/Make/files 
vim system/controlDict
cd ..
ls
mv coronary pimpleCoronary
