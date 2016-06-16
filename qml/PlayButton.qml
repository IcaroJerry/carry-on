import QtQuick 2.6

Item {
    id: itemBtn
    width: screenSettings.carControlWidth * 0.1
    height: itemBtn.width
    scale: mouseArea.pressed ? 0.9 : 1.0

    signal clicked()
    Behavior on scale { NumberAnimation { duration: 100 } }

    Rectangle {
        anchors.fill: parent
        antialiasing: true
        radius: height / 2
        color: screenSettings.thirdElementsColor
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: itemBtn.clicked()
    }
    Text {
        text: qsTr("PLAY")
        font.pointSize: parent.width * 0.3
        anchors.centerIn: parent
        color: screenSettings.primaryElementsColor
    }
}
