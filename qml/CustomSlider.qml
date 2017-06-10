import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Slider {
    visible: !playButton.visible
    width: ((gameScene.width / 2) - (window.width * 0.01))
    x: ((gameScene.width / 4) + (window.width * 0.01))
    minimumValue: gameScene.width / 4
    maximumValue: carDirection.minimumValue + carDirection.width
    value: carDirection.maximumValue / 2
    stepSize: 2
    anchors.centerIn: parent

    style: SliderStyle {
        groove: Rectangle {
            opacity: 1
        }

        handle: Item {
            width: 34; height: 34
            anchors.centerIn: parent

            Image {
                id: handle
                visible: !control.pressed
                source: "qrc:/resources/images/handle.svg"
                width: parent.width; height: parent.height
            }

            Image {
                visible: !handle.visibler
                source: "qrc:/resources/images/handle.svg"
                width: handle.width; height: handle.height
            }
        }
    }
}
