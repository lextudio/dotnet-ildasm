cd ./src/dotnet-ildasm
dotnet pack -c Release -o ../../nupkg
cd ../..

dotnet tool uninstall --global dotnet-ildasm2 
dotnet tool install --global --add-source ./nupkg dotnet-ildasm2
ildasm --version
