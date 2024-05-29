import QtQuick

import MastergoalQt

QtObject {

    signal requestNewSoloGame()

    function newSoloGame() {
        // TODO: Need to check if there is an active game
        requestNewSoloGame()
    }
}
