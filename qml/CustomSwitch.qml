import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Switch {
    id:switchControl
    style: SwitchStyle {
        groove: Rectangle {
            id: grooveSwitch
            implicitWidth: 20 * 2
            implicitHeight: 20
            radius: grooveSwitch.implicitHeight / 2
            border.color: "#48494B"
            border.width: 2
            color: switchControl.checked ? "#D52846" :"#48494B"
        }
        handle: Rectangle {
            id: handleSwitch
            width: 20
            height: handleSwitch.width
            radius: handleSwitch.width / 2
            color: "#232A30"
        }
    }
}
