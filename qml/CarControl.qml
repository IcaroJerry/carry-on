import QtQuick 2.6

Item {
    id: controls
    width: parent.width
    height: parent.height
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

    Text {
        id: name
        text: qsTr(controls.carDirectionPosition.toString())
        color: "#000"
        font.family: "Helvetica"
        font.pointSize: 24
        anchors.fill: parent
        z: 100
    }

    CustomSlider {
        id: carDirection
    }

    property alias carDirectionPosition: carDirection.value
}
