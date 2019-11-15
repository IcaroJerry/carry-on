import QtQuick 2.6

Item {
    property alias carVisible: car.visible
    property alias isLaneRunning: lane.running


    Rectangle {
        id: road
        anchors.fill: parent
        color: screenSettings.backgroundColor

        z: 10

        Car {
            id: car
            z: 12
            y: screenSettings.carPosition
        }

        MiddleLane {
            id: lane
            z: 11
        }

        Hole {
        }
    }
}
