SOURCEFILES := \
	BaseMenu.cpp \
	Friends.cpp \
	Inventory.cpp \
	ItemStore.cpp \
	Leaderboards.cpp \
	Lobby.cpp \
	Main.cpp \
	MainMenu.cpp \
	OverlayExamples.cpp \
	PhotonBeam.cpp \
	QuitMenu.cpp \
	RemotePlay.cpp \
	RemoteStorage.cpp \
	ServerBrowser.cpp \
	Ship.cpp \
	SimpleProtobuf.cpp \
	SpaceWarClient.cpp \
	SpaceWarEntity.cpp \
	SpaceWarServer.cpp \
	StarField.cpp \
	StatsAndAchievements.cpp \
	Sun.cpp \
	timeline.cpp \
	VectorEntity.cpp \
	clanchatroom.cpp \
	connectingmenu.cpp \
	gameenginewin32.cpp \
	htmlsurface.cpp \
	musicplayer.cpp \
	p2pauth.cpp \
	remotestoragesync.cpp \
	stdafx.cpp \
	voicechat.cpp


ifeq ($(ARCH), 32)
    ARCH_DIR := win32
    LIBRARY_NAMES :=steam_api
    STEAM_API := steam_api.dll
else
    ARCH_DIR := win64
    LIBRARY_NAMES :=steam_api64 \
                    d3dx9_42 \
                    XAudio2_5
    STEAM_API := steam_api64.dll
endif

INCLUDE_DIRS := $(PWD)/../public
LIBRARY_DIRS := $(PWD)/../redistributable_bin/$(ARCH_DIR)


CC ?= x86_64-w64-mingw32-gcc
CXX ?= x86_64-w64-mingw32-g++
LD := $(CXX)
AR := x86_64-w64-mingw32-ar
OBJCOPY := x86_64-w64-mingw32-objcopy
CP := cp

# Since this is an example, we'll build Debug by default
CONFIG ?= DEBUG

COMMON_MACROS := 
DEBUG_MACROS := DEBUG
RELEASE_MACROS := NDEBUG RELEASE

MCUFLAGS := 

CFLAGS += -DWIN32_BUILD -D_CRT_SECURE_NO_WARNINGS -D_WINDOWS -D_CRT_SECURE_NO_DEPRECATE -D_EXTERNAL_DLL_EXT=.dll -DVPCGAMECAPS=VALVE -D_DLL_EXT=.dll -DVPCGAME=valve -g
CXXFLAGS += -DWIN32_BUILD -D_CRT_SECURE_NO_WARNINGS -D_WINDOWS -D_CRT_SECURE_NO_DEPRECATE -D_EXTERNAL_DLL_EXT=.dll -DVPCGAMECAPS=VALVE -D_DLL_EXT=.dll -DVPCGAME=valve -g

DEBUG_CFLAGS := -O0
RELEASE_CFLAGS := -O3
DEBUG_CXXFLAGS := $(DEBUG_CFLAGS)
RELEASE_CXXFLAGS := $(RELEASE_CFLAGS)

MACOS_FRAMEWORKS := 

LDFLAGS :=
DEBUG_LDFLAGS := 
RELEASE_LDGLAGS :=

START_GROUP := -Wl,--start-group
END_GROUP := -Wl,--end-group

USE_DEL_TO_CLEAN := 0
GENERATE_BIN_FILE := 0
ADDITIONAL_MAKE_FILES :=
IS_LINUX_PROJECT := 1

include $(ADDITIONAL_MAKE_FILES)
