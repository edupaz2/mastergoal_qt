import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import MastergoalQt

Page {
    id: home

    ColumnLayout {
        anchors.fill: parent

        Button {
            text: qsTr("New solo game")
            onClicked: {
                logic.newSoloGame()
            }
        }
    }
}
