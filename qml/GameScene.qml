import QtQuick 2.6
Item{
    property alias carVisible: car.visible
    property alias isLaneRunning: lane.running

    Road {
        id: road
        z: 10

        Car {
            id: car
            visible: false
            z: 12
            y: screenSettings.carPosition
        }

        Lane {
            id: lane
            z: 11
        }

        Hole{
        }
    }
}
