import QtQuick 2.15
import QtQuick.Window 2.2
import QtWebEngine 1.10

Window {
    width: 1024
    height: 768
    visible: true

    WebEngineView { 
        anchors.fill: parent
        url: 'https://www.bbc.com/'
    }
}
