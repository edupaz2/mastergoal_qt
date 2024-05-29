import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import MastergoalQt

Page {
    id: app

    anchors.fill: parent

    property int currentIndex: 0

    StackLayout {
        id: pageStack
        anchors.fill: parent
        currentIndex: app.currentIndex
    }

    Component.onCompleted: {
        forceActiveFocus()
    }
}
