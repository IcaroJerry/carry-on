import QtQuick 2.6

Item {
    width: parent.width; height: parent.height
    property alias carVisible: car.visible
    property alias isLaneRunning: lane.running

    Road {
        id: road
        z: 10

        Car {
            id: car
            z: 12
            y: screenSettings.carPosition
        }

        Lane {
            id: lane
            z: 11
        }

        Hole {
        }
    }
}
