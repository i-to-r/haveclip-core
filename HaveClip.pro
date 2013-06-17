#-------------------------------------------------
#
# Project created by QtCreator 2013-05-31T16:06:06
#
#-------------------------------------------------

QT       += core gui network xml

TARGET = HaveClip
TEMPLATE = app

SOURCES +=\
    src/HaveClip.cpp \
    src/main.cpp \
    src/AboutDialog.cpp \
    src/SettingsDialog.cpp \
    src/ClipboardContent.cpp \
    src/Sender.cpp \
    src/Receiver.cpp \
    src/CertificateTrustDialog.cpp \
    src/PasteServices/BasePasteService.cpp \
    src/PasteServices/Stikked/Stikked.cpp \
    src/PasteServices/PasteDialog.cpp \
    src/PasteServices/BasePasteServiceWidget.cpp \
    src/PasteServices/Stikked/StikkedSettings.cpp \
    src/PasteServices/Pastebin/PastebinSettings.cpp \
    src/PasteServices/Pastebin/Pastebin.cpp \
    src/LoginDialog.cpp

HEADERS  += src/HaveClip.h \
    src/AboutDialog.h \
    src/SettingsDialog.h \
    src/ClipboardContent.h \
    src/Sender.h \
    src/Receiver.h \
    src/CertificateTrustDialog.h \
    src/PasteServices/BasePasteService.h \
    src/PasteServices/Stikked/Stikked.h \
    src/PasteServices/PasteDialog.h \
    src/PasteServices/BasePasteServiceWidget.h \
    src/PasteServices/Stikked/StikkedSettings.h \
    src/PasteServices/Pastebin/PastebinSettings.h \
    src/PasteServices/Pastebin/Pastebin.h \
    src/LoginDialog.h

FORMS    += src/AboutDialog.ui \
    src/SettingsDialog.ui \
    src/CertificateTrustDialog.ui \
    src/PasteServices/Stikked/StikkedSettings.ui \
    src/PasteServices/PasteDialog.ui \
    src/PasteServices/Pastebin/PastebinSettings.ui \
    src/LoginDialog.ui

RESOURCES += \
    HaveClip.qrc

OTHER_FILES += \
    TODO \
    utils/stikked_lang_generator.php \
    utils/pastebin_lang_generator.py \
    LICENSE \
    README.md
