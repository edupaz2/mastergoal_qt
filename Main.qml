import QtQuick
import QtQuick.Controls

import MastergoalQt

Window {
    // visibility: Window.FullScreen
    width: 640
    height: 480
    visible: true
    title: qsTr("Mastergoal")

    Component.onCompleted: {
        splashLoader.active = true
    }

    Loader {
        id: splashLoader
        anchors.fill: parent
        asynchronous: false
        active: false
        visible: true

        sourceComponent: SplashScreen {
            appIsReady: appLoader.status === Loader.Ready
            onReadyChanged: {
                if (ready) {
                    appLoader.visible = true
                    splashLoader.visible = false
                    splashLoader.active = false
                }
            }
        }

        onStatusChanged: {
            if (status === Loader.Ready)
                appLoader.active = true
        }
    }

    Loader {
        id: appLoader
        anchors.fill: parent
        active: false
        asynchronous: true
        visible: false

        sourceComponent: App {}

        onStatusChanged: {
            if (status === Loader.Error)
                Qt.quit()
        }
    }
}
