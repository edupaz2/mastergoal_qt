import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import MastergoalQt

Page {
    id: app

    anchors.fill: parent

    property int currentIndex: 0
    readonly property int __internalHomeIndex: 0
    readonly property int __internalSoloGameIndex: 1

    Logic {
        id: logic

        onRequestNewSoloGame: {
            app.currentIndex = app.__internalSoloGameIndex
        }
    }

    StackLayout {
        id: pageStack
        anchors.fill: parent
        currentIndex: app.currentIndex

        Home {}
    }

    Component.onCompleted: {
        forceActiveFocus()
    }
}
