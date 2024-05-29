import QtQuick
import QtQuick.Controls

import MastergoalQt

Pane {
    id: root

    property bool appIsReady: false
    property bool splashIsReady: false
    property bool ready: appIsReady && splashIsReady

    anchors.fill: parent

    Image {
        anchors.fill: parent
        source: "qrc:/splashscreen.png"
    }

    Timer {
        id: splashTimer
        interval: 2000
        onTriggered: splashIsReady = true
    }

    Component.onCompleted: {
        splashTimer.start()
    }
}
