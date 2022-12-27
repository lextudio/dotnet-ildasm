# Dot Net IL Disassembler  
[![Nuget](https://img.shields.io/nuget/dt/dotnet-ildasm2.svg)](http://nuget.org/packages/dotnet-ildasm2) 
[![Nuget](https://img.shields.io/nuget/v/dotnet-ildasm2.svg)](http://nuget.org/packages/dotnet-ildasm2) 
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/lextudio/dotnet-ildasm2/blob/master/LICENSE.md)

# Description
The `dotnet-ildasm2` provides a command-line IL disassembler. Simply send the assembly path as a parameter and as a result you will get the IL contents of that assembly.

# Setup
The project was created as a global CLI tool, therefore you can install with a single command:  

`dotnet tool install -g dotnet-ildasm2`

Note that for the command above to work, you need .NET SDK 6 or above installed in your machine.

# Syntax
```
ildasm <ASSEMBLY_PATH>
ildasm <ASSEMBLY_PATH> <-o|--output>
ildasm <ASSEMBLY_PATH> <-i|--item>
ildasm <-h|--help>
```

# Options
`-i`  
Filter results by method and/or classes to be disassembled.

`-o`  
Define the output file to be created with the assembly's IL.

# Examples
Output IL to the command line:
```
ildasm myassembly.dll
```

Filter results by method and/or classes to be disassembled, showing the result in the command line:
```
ildasm myassembly.dll -i ClassName
ildasm myassembly.dll -i ::MethodName
ildasm myassembly.dll -i ClassName::MethodName
```

Define the file to be created with the output: 
```
ildasm myassembly.dll -o disassembledAssembly.il
```
