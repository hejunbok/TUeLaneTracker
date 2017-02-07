##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=UnitTests
ConfigurationName      :=Debug
WorkspacePath          := "/home/rameez/TUeLaneTracker"
ProjectPath            := "/home/rameez/TUeLaneTracker/UnitTests"
IntermediateDirectory  :=Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=rameez
Date                   :=06/02/17
CodeLitePath           :="/home/rameez/.codelite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="UnitTests.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -fopenmp
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)$(UNIT_TEST_PP_SRC_DIR)/src $(IncludeSwitch)../TUeLDT/include $(IncludeSwitch)/usr/local/include/UnitTest++ $(IncludeSwitch)/usr/local/include/eigen3 $(IncludeSwitch)../InitState/ 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)UnitTest++ $(LibrarySwitch)TUeLDT $(LibrarySwitch)InitStateLDT $(LibrarySwitch)TUeLDT $(LibrarySwitch)InitStateLDT $(LibrarySwitch)opencv_shape $(LibrarySwitch)opencv_stitching $(LibrarySwitch)opencv_objdetect $(LibrarySwitch)opencv_superres $(LibrarySwitch)opencv_videostab $(LibrarySwitch)opencv_calib3d $(LibrarySwitch)opencv_features2d $(LibrarySwitch)opencv_highgui $(LibrarySwitch)opencv_videoio $(LibrarySwitch)opencv_imgcodecs $(LibrarySwitch)opencv_video $(LibrarySwitch)opencv_photo $(LibrarySwitch)opencv_ml $(LibrarySwitch)opencv_imgproc $(LibrarySwitch)opencv_flann $(LibrarySwitch)opencv_core 
ArLibs                 :=  "libUnitTest++.a" "libTUeLDT.a" "libInitStateLDT.a" "libTUeLDT.a" "libInitStateLDT.a" "opencv_shape" "opencv_stitching" "opencv_objdetect" "opencv_superres" "opencv_videostab" "opencv_calib3d" "opencv_features2d" "opencv_highgui" "opencv_videoio" "opencv_imgcodecs" "opencv_video" "opencv_photo" "opencv_ml" "opencv_imgproc" "opencv_flann" "opencv_core" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)$(UNIT_TEST_PP_SRC_DIR)/Debug $(LibraryPathSwitch)../TUeLDT/Debug $(LibraryPathSwitch)../InitState/Debug/ 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -std=c++11 $(Preprocessors)
CFLAGS   :=  -g $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Tests_TueLDT.cpp$(ObjectSuffix) $(IntermediateDirectory)/ImageTests.cpp$(ObjectSuffix) 



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
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d Debug || $(MakeDirCommand) Debug


$(IntermediateDirectory)/.d:
	@test -d Debug || $(MakeDirCommand) Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rameez/TUeLaneTracker/UnitTests/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/Tests_TueLDT.cpp$(ObjectSuffix): Tests_TueLDT.cpp $(IntermediateDirectory)/Tests_TueLDT.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rameez/TUeLaneTracker/UnitTests/Tests_TueLDT.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Tests_TueLDT.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Tests_TueLDT.cpp$(DependSuffix): Tests_TueLDT.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Tests_TueLDT.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Tests_TueLDT.cpp$(DependSuffix) -MM "Tests_TueLDT.cpp"

$(IntermediateDirectory)/Tests_TueLDT.cpp$(PreprocessSuffix): Tests_TueLDT.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Tests_TueLDT.cpp$(PreprocessSuffix) "Tests_TueLDT.cpp"

$(IntermediateDirectory)/ImageTests.cpp$(ObjectSuffix): ImageTests.cpp $(IntermediateDirectory)/ImageTests.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rameez/TUeLaneTracker/UnitTests/ImageTests.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ImageTests.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ImageTests.cpp$(DependSuffix): ImageTests.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ImageTests.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ImageTests.cpp$(DependSuffix) -MM "ImageTests.cpp"

$(IntermediateDirectory)/ImageTests.cpp$(PreprocessSuffix): ImageTests.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ImageTests.cpp$(PreprocessSuffix) "ImageTests.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r Debug/


