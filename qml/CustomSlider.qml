import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Slider {
    visible: !playButton.visible
    width: gameScene.width
    x: gameScene.width
    minimumValue: 0
    maximumValue: carDirection.minimumValue + carDirection.width
    value: carDirection.maximumValue / 2
    stepSize: 1
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
                visible: true
                source: "qrc:/resources/images/handle.svg"
                width: parent.width; height: parent.height
            }

//            Image {
//                visible: !handle.visibler
//                source: "qrc:/resources/images/handle.svg"
//                width: handle.width; height: handle.height
//            }
        }
    }
}
