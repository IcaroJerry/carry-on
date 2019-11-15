import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: window
    visible: true;
    width: Screen.width
    height: Screen.height
    color: screenSettings.backgroundColor


    GridLayout {
        anchors.fill: parent

        columns: 2
        rows: 1

        GridLayout {
            columns: 1
            rows: 2

            Layout.preferredWidth: parent.width * 0.7
            Layout.preferredHeight: parent.height

            GameScene {
                id: gameScene
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height * 0.8
                Layout.fillHeight: true
            }

//            CarControl {
            CarControl {
                id: carControl
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.height * 0.2
                anchors.bottom: parent.bottom
            }
        }

        ControlPanel {
            id: controlProperties
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width * 0.3
            color: screenSettings.backgroundColor
        }
    }


    ScreenSettings {
        id: screenSettings
    }
}

