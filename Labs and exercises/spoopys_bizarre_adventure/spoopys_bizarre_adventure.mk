##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=spoopys_bizarre_adventure
ConfigurationName      :=Debug
WorkspacePath          :="C:/School/DAT017/Mop-DAT017/Labs and exercises"
ProjectPath            :="C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=gusta
Date                   :=2017-12-07
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
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="spoopys_bizarre_adventure.txt"
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
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/delay_interrupt.c$(ObjectSuffix) $(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) $(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) $(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IntermediateDirectory)/sprites.c$(ObjectSuffix) 



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
	arm-none-eabi-objcopy -S -O srec  ./Debug/spoopys_bizarre_adventure.elf ./Debug/spoopys_bizarre_adventure.s19
	arm-none-eabi-objdump -D -S ./Debug/spoopys_bizarre_adventure.elf > ./Debug/spoopys_bizarre_adventure.dass
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
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/delay_interrupt.c$(ObjectSuffix): delay_interrupt.c $(IntermediateDirectory)/delay_interrupt.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/delay_interrupt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delay_interrupt.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delay_interrupt.c$(DependSuffix): delay_interrupt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delay_interrupt.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delay_interrupt.c$(DependSuffix) -MM delay_interrupt.c

$(IntermediateDirectory)/delay_interrupt.c$(PreprocessSuffix): delay_interrupt.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delay_interrupt.c$(PreprocessSuffix) delay_interrupt.c

$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix): graphicdisplay.c $(IntermediateDirectory)/graphicdisplay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/graphicdisplay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphicdisplay.c$(DependSuffix): graphicdisplay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/graphicdisplay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/graphicdisplay.c$(DependSuffix) -MM graphicdisplay.c

$(IntermediateDirectory)/graphicdisplay.c$(PreprocessSuffix): graphicdisplay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphicdisplay.c$(PreprocessSuffix) graphicdisplay.c

$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix): asciidisplay.c $(IntermediateDirectory)/asciidisplay.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/asciidisplay.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/asciidisplay.c$(DependSuffix): asciidisplay.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/asciidisplay.c$(ObjectSuffix) -MF$(IntermediateDirectory)/asciidisplay.c$(DependSuffix) -MM asciidisplay.c

$(IntermediateDirectory)/asciidisplay.c$(PreprocessSuffix): asciidisplay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/asciidisplay.c$(PreprocessSuffix) asciidisplay.c

$(IntermediateDirectory)/keypad.c$(ObjectSuffix): keypad.c $(IntermediateDirectory)/keypad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/keypad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/keypad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/keypad.c$(DependSuffix): keypad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/keypad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/keypad.c$(DependSuffix) -MM keypad.c

$(IntermediateDirectory)/keypad.c$(PreprocessSuffix): keypad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/keypad.c$(PreprocessSuffix) keypad.c

$(IntermediateDirectory)/sprites.c$(ObjectSuffix): sprites.c $(IntermediateDirectory)/sprites.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/School/DAT017/Mop-DAT017/Labs and exercises/spoopys_bizarre_adventure/sprites.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sprites.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sprites.c$(DependSuffix): sprites.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sprites.c$(ObjectSuffix) -MF$(IntermediateDirectory)/sprites.c$(DependSuffix) -MM sprites.c

$(IntermediateDirectory)/sprites.c$(PreprocessSuffix): sprites.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sprites.c$(PreprocessSuffix) sprites.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


