import QtQuick 2.6

Item{
    height: screenSettings.carHeight
    width: screenSettings.carWidth
    x: carControl.carDirectionPosition
    antialiasing: true

    Image {
        source: "car.svg"
        width: parent.width
        height: parent.height
    }
}
