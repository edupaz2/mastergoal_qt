import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import MastergoalQt

Page {
    id: home

    ColumnLayout {
        anchors.fill: parent

        Button {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("NEW SOLO GAME")
            font.family: Theme.currentFont
            onClicked: {
                logic.newSoloGame()
            }
        }
    }
}
