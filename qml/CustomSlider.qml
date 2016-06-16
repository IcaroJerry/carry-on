import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Slider {
    //id: carDirection
    visible: !playButton.visible
    width: ((gameScene.width / 2) - (window.width * 0.01))
    //anchors.centerIn: parent
    x:  ((gameScene.width / 4) + (window.width * 0.01))
    minimumValue: gameScene.width / 4
    maximumValue: carDirection.minimumValue + carDirection.width
    value: carDirection.maximumValue / 2
    stepSize: 2

    style: SliderStyle {
            groove: Rectangle {
                opacity: 1
            }
        handle: Item {
            anchors.centerIn: parent
            width: 34
            height: 34
            Image {
                id:handle
                visible: !control.pressed
                source: "handle.svg"
                width: parent.width
                height: parent.height
            }
            Image {
                visible: control.pressed
                source: "handlePressed.svg"
                width: parent.width
                height: parent.height
            }
        }
    }
}
