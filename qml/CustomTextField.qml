import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

TextField {
    placeholderText: "00.0"
    style: TextFieldStyle{
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 24
            color: screenSettings.thirdElementsColor
        }
        textColor: screenSettings.backgroundColor
        selectionColor: screenSettings.primaryElementsColor
    }
}
