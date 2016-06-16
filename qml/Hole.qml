import QtQuick 2.5

//Rectangle{
Item{
    id: x
    width: randomInt(car.height * 0.40, car.height * 0.9)
    height: x.width
    //radius: x.width / 2

    Image {
        source: "hole.svg"
        width: parent.width
        height: parent.height
        z:15
    }

    function randomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min
    }
}
