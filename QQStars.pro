TEMPLATE = app
TARGET = QQStars
QT += widgets network webkit svg qml quick concurrent #gui-private

INCLUDEPATH += \
    src \
    src/qxtglobalshortcut \
    src/aes

SOURCES += main.cpp \
    src/mynetworkaccessmanagerfactory.cpp \
    src/utility.cpp \
    src/mywindow.cpp \
    src/qqstars.cpp \
    src/systemtrayicon.cpp \
    src/threaddownloadimage.cpp \
    src/mysvgview.cpp \ 
    src/myimage.cpp \
    src/mysocket.cpp \
    src/mymessagebox.cpp

RESOURCES += \ # qml.qrc
    images.qrc \
    other.qrc

qml_data.source = qml
qml_data.target = ./

style_data.source = style
style_data.target = ./

DEPLOYMENTFOLDERS += qml_data style_data

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
include (src/qxtglobalshortcut/qxtglobalshortcut.pri)
include (qmlapplicationviewer.pri)
qtcAddDeployment()
HEADERS += \
    src/mynetworkaccessmanagerfactory.h \
    src/utility.h \
    src/mywindow.h \
    src/qqstars.h \
    src/systemtrayicon.h \
    src/threaddownloadimage.h \
    src/mysvgview.h \ 
    src/myimage.h \
    src/mysocket.h \
    src/mymessagebox.h

OTHER_FILES += \
    qml/Utility/CodeInput.qml \
    qml/Utility/MyButton.qml \
    qml/Utility/MyMessageBox.qml \
    qml/Utility/MyTextArea.qml \
    qml/Utility/MyTextField.qml \
    qml/Utility/SystemTray.qml \
    qml/Api/api.js \
    qml/Api/QQApi.qml \
    qml/Login/KeyboardPage/SoftKeyboard.qml \
    qml/Login/KeyboardPage/SoftKeyboardButton.qml \
    qml/Login/LoginPage/AccountList.qml \
    qml/Login/LoginPage/LoginCheckBox.qml \
    qml/Login/LoginPage/LoginInputArea.qml \
    qml/Login/LoginPage/LoginPage.qml \
    qml/Login/main.qml \
    qml/Login/SettingPage.qml \
    qml/MainPanel/ChatWindow/ChatWindow.qml \
    qml/MainPanel/ChatWindow/ChatWindowCommand.qml \
    qml/MainPanel/ChatWindow/FriendChatWindow.qml \
    qml/MainPanel/ChatWindow/GroupChatWindow.qml \
    qml/MainPanel/ChatWindow/MessageListComponent.qml \
    qml/MainPanel/ChatWindow/qqshow.png \
    qml/MainPanel/ListPage/AllListPage.qml \
    qml/MainPanel/ListPage/FriendList.qml \
    qml/MainPanel/ListPage/GroupList.qml \
    qml/MainPanel/ListPage/RecentList.qml \
    qml/MainPanel/QQItemInfo/DiscuInfo.qml \
    qml/MainPanel/QQItemInfo/FriendInfo.qml \
    qml/MainPanel/QQItemInfo/GroupInfo.qml \
    qml/MainPanel/QQItemInfo/RecentInfo.qml \
    qml/MainPanel/main.qml \
    qml/MainPanel/MainPanelPage.qml \
    qml/MainPanel/MyScrollView.qml \
    qml/Utility/ComboBox/MyComboBox.qml \
    qml/Utility/ComboBox/MyComboBoxComponent.qml \
    qml/Utility/Window/MyRectangularGlow.qml \
    qml/Utility/Window/MyWindow.qml \
    qml/Login/MyLoginButton.qml
            
FORMS +=
