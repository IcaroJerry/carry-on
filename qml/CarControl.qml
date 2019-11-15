import QtQuick 2.6

Item {
    id: controls
    z: 13

    PlayButton {
        id: playButton
        anchors.centerIn: parent

        onClicked: {
            gameScene.isLaneRunning = !gameScene.isLaneRunning
            playButton.visible = false
            gameScene.carVisible = true
        }
    }

    CustomSlider {
        id: carDirection
        anchors.fill: parent
        width: parent.width
    }

    property alias carDirectionPosition: carDirection.value
}
