import QtQuick 2.5

Item {
    property alias running: animation.running
    width: screenSettings.laneWidth / 2
    height:screenSettings.screenHeight * 2
    x: screenSettings.gameSceneVerticalCenter

    Image {
        source: "qrc:/resources/images/lane.svg"
        id: mainLane
        width: parent.width

        PropertyAnimation {
            id: animation
            loops: Animation.Infinite
            target: mainLane
            property: "y"
            from: -500
            to: 0
            duration: 1300
        }
    }
}
