##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=graphicdisplay
ConfigurationName      :=Debug
WorkspacePath          :="C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer"
ProjectPath            :="C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer/graphicdisplay"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=gusta
Date                   :=2017-11-25
CodeLitePath           :=C:/cseapp/CodeLite
LinkerName             :=$(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
SharedObjectLinkerName :=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi-g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=$(PreprocessorSwitch)SIMULATOR 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="graphicdisplay.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=
LinkOptions            :=  -T$(ProjectPath)/md407-ram.x -L$(ARM_V6LIB) -L$(ARM_GCC_V6LIB) -nostartfiles
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-ar.exe rcu
CXX      := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
CC       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-gcc.exe
CXXFLAGS :=  -g -O0 -W $(Preprocessors)
CFLAGS   :=  -Wa,-adhln=test.s -g -O0 -w -mthumb -march=armv6-m  -mfloat-abi=soft -std=c99 -mthumb -march=armv6-m $(Preprocessors)
ASFLAGS  := 
AS       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp\CodeLite
ARM_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v6-m
ARM_GCC_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v6-m
ARM_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard
ARM_GCC_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v7e-m
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/sys_delay.c$(ObjectSuffix) $(IntermediateDirectory)/gpio.c$(ObjectSuffix) $(IntermediateDirectory)/geometry.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/graphicdisplay.elf ./Debug/graphicdisplay.s19
	arm-none-eabi-objdump -D -S ./Debug/graphicdisplay.elf > ./Debug/graphicdisplay.dass
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer/graphicdisplay/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/sys_delay.c$(ObjectSuffix): sys_delay.c $(IntermediateDirectory)/sys_delay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer/graphicdisplay/sys_delay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sys_delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sys_delay.c$(DependSuffix): sys_delay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sys_delay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/sys_delay.c$(DependSuffix) -MM sys_delay.c

$(IntermediateDirectory)/sys_delay.c$(PreprocessSuffix): sys_delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sys_delay.c$(PreprocessSuffix) sys_delay.c

$(IntermediateDirectory)/gpio.c$(ObjectSuffix): gpio.c $(IntermediateDirectory)/gpio.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer/graphicdisplay/gpio.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gpio.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gpio.c$(DependSuffix): gpio.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gpio.c$(ObjectSuffix) -MF$(IntermediateDirectory)/gpio.c$(DependSuffix) -MM gpio.c

$(IntermediateDirectory)/gpio.c$(PreprocessSuffix): gpio.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gpio.c$(PreprocessSuffix) gpio.c

$(IntermediateDirectory)/geometry.c$(ObjectSuffix): geometry.c $(IntermediateDirectory)/geometry.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Moplaborationer (NaN)/Moplaborationer/graphicdisplay/geometry.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/geometry.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/geometry.c$(DependSuffix): geometry.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/geometry.c$(ObjectSuffix) -MF$(IntermediateDirectory)/geometry.c$(DependSuffix) -MM geometry.c

$(IntermediateDirectory)/geometry.c$(PreprocessSuffix): geometry.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/geometry.c$(PreprocessSuffix) geometry.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/

