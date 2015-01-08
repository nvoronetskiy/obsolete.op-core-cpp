LOCAL_PATH := $(call my-dir)/../../
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_CLANG := true

LOCAL_CFLAGS	:= -Wall \
-W \
-O2 \
-pipe \
-fPIC \
-frtti \
-fexceptions \
-D_ANDROID \

LOCAL_CPPFLAGS += -std=c++11

LOCAL_MODULE    := hfcore_android

LOCAL_EXPORT_C_INCLUDES:= $(LOCAL_PATH) \

LOCAL_C_INCLUDES:= $(LOCAL_PATH) \
$(LOCAL_PATH)/openpeer/core/internal \
$(LOCAL_PATH)/openpeer/core/test \
$(LOCAL_PATH)/../ortc-lib/libs/zsLib \
$(LOCAL_PATH)/../ortc-lib/libs/zsLib/zsLib/internal \
$(LOCAL_PATH)/../ortc-lib/libs/zsLib/zsLib/extras \
$(LOCAL_PATH)/../ortc-lib/libs/op-services-cpp \
$(LOCAL_PATH)/../op-stack-cpp \
$(LOCAL_PATH)/../easysqlite/easySQLite/easySQLite \
$(LOCAL_PATH)/../sqlite/build \
$(LOCAL_PATH)/../ortc-lib/libs \
$(LOCAL_PATH)/.. \
$(LOCAL_PATH)/../ortc-lib/libs/build/android/curl/include \
$(LOCAL_PATH)/../ortc-lib/libs/udns \
$(LOCAL_PATH)/../ortc-lib/libs/webrtc \
$(LOCAL_PATH)/../ortc-lib/libs/webrtc/webrtc \
$(LOCAL_PATH)/../ortc-lib/libs/webrtc/webrtc/voice_engine/include \
$(LOCAL_PATH)/../ortc-lib/libs/webrtc/webrtc/video_engine/include \
$(LOCAL_PATH)/../ortc-lib/libs/webrtc/webrtc/modules/video_capture/include \
$(ANDROIDNDK_PATH)/sources/android/support/include \
$(ANDROIDNDK_PATH)/sources/cxx-stl/llvm-libc++/libcxx/include \
$(ANDROIDNDK_PATH)/platforms/android-19/arch-arm/usr/include \

SOURCE_PATH := openpeer/core/cpp

LOCAL_SRC_FILES := $(SOURCE_PATH)/core_Account_ContactSubscription.cpp \
		   $(SOURCE_PATH)/core_Account_DelegateFilter.cpp \
		   $(SOURCE_PATH)/core_Account_LocationSubscription.cpp \
		   $(SOURCE_PATH)/core_Account.cpp \
		   $(SOURCE_PATH)/core_Backgrounding.cpp \
		   $(SOURCE_PATH)/core_Cache.cpp \
		   $(SOURCE_PATH)/core_Call.cpp \
		   $(SOURCE_PATH)/core_CallTransport.cpp \
		   $(SOURCE_PATH)/core_ComposingStatus.cpp \
		   $(SOURCE_PATH)/core_Contact.cpp \
		   $(SOURCE_PATH)/core_ConversationThread.cpp \
		   $(SOURCE_PATH)/core_ConversationThreadDocumentFetcher.cpp \
		   $(SOURCE_PATH)/core_ConversationThreadHost.cpp \
		   $(SOURCE_PATH)/core_ConversationThreadHost_PeerContact.cpp \
		   $(SOURCE_PATH)/core_ConversationThreadHost_PeerLocation.cpp \
		   $(SOURCE_PATH)/core_ConversationThreadSlave.cpp \
		   $(SOURCE_PATH)/core_Decryptor.cpp \
		   $(SOURCE_PATH)/core_Encryptor.cpp \
		   $(SOURCE_PATH)/core_Helper.cpp \
		   $(SOURCE_PATH)/core_ISystemMessage.cpp \
		   $(SOURCE_PATH)/core_Identity.cpp \
		   $(SOURCE_PATH)/core_IdentityLookup.cpp \
		   $(SOURCE_PATH)/core_Logger.cpp \
		   $(SOURCE_PATH)/core_Settings.cpp \
		   $(SOURCE_PATH)/core_Stack.cpp \
		   $(SOURCE_PATH)/core.cpp \
		   $(SOURCE_PATH)/core_thread.cpp \
		   $(SOURCE_PATH)/core_MediaEngine.cpp \
		   $(SOURCE_PATH)/core_PushMailboxManager.cpp \
		   $(SOURCE_PATH)/core_PushMessaging.cpp \
		   $(SOURCE_PATH)/core_PushMessaging_PushQuery.cpp \
		   $(SOURCE_PATH)/core_PushMessaging_RegisterQuery.cpp \
		   $(SOURCE_PATH)/core_PushPresence.cpp \
		   $(SOURCE_PATH)/core_PushPresence_Presence.cpp \
		   $(SOURCE_PATH)/core_PushPresence_RegisterQuery.cpp \
		   #$(SOURCE_PATH)/../test/TestMediaEngine.cpp \
		   #$(SOURCE_PATH)/../test/boost_replacement.cpp


include $(BUILD_STATIC_LIBRARY)

