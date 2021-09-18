import QtQuick 2.15
import QtQuick.Window 2.2
import QtQuick.Controls 2.4
import QtWebEngine 1.10

Window {
    width: 1024
    height: 768
    visible: true

    WebEngineView {
        id: webView
        anchors.fill: parent; anchors.topMargin: 60
        url: 'https://www.bbc.com'
        profile: adBlockSwitch.checked ? adblockProfile : defaultProfile
    }

    WebEngineProfile { id: defaultProfile }

    Switch {
        id: adBlockSwitch
        anchors { top: parent.top; right: parent.right; margins: 10 }
        text: "AdBlock"; checked: true; onCheckedChanged: webView.reload(); 
    }
}