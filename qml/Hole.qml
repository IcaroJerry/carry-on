import QtQuick 2.5

Item {
    id: x
    width: randomInt(car.height * 0.40, car.height * 0.9)
    height: x.width

    Image {
        z:15
        source: "qrc:/resources/images/hole.svg"
        width: parent.width; height: parent.height
    }

    function randomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min
    }
}
