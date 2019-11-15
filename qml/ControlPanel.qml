import QtQuick 2.6
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Private 1.0

Rectangle {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        anchors.centerIn: controlProperties

        Rectangle {
            id:titleArea
            color: screenSettings.controlPropertiesColor
            width: parent.width
            height: parent.height * 0.15
            anchors.left: parent.left
            CustomLabel {
                text: qsTr("Control Panel")
                anchors.centerIn: parent
                font.pixelSize: parent.width * 0.1
            }
        }

        Rectangle {
            width: parent.width
            height: parent.height * 0.85
            anchors.top: titleArea.bottom
            color: screenSettings.controlPropertiesColor

            Rectangle {
                width: parent.width * 0.9
                height: parent.height * 0.95
                border.color: "#BD2845"
                border.width: 2
                color: screenSettings.controlPropertiesColor
                anchors.horizontalCenter: parent.horizontalCenter

                Rectangle {
                    id: optionsArea
                    width: parent.width * 0.9
                    height: parent.height * 0.9
                    anchors.centerIn: parent
                    color: screenSettings.controlPropertiesColor

                    GridLayout {
                        anchors.margins: 10
                        rows: 4
                        columns: 1

                        ComboBox {
                            id: box
                            width: optionsArea.width
                            currentIndex: 1
                            activeFocusOnPress: true
                            style: ComboBoxStyle {
                                id: comboBox
                                background: Rectangle {
                                    id: rectCategory
                                    border.width: 2
                                    border.color: screenSettings.thirdElementsColor
                                    color: screenSettings.thirdElementsColor
                                    width: box.width
                                }
                                label: Text {
                                    verticalAlignment: Text.AlignVCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    font.pointSize: 15
                                    color: screenSettings.controlPropertiesColor
                                    text: control.currentText
                                }

                                // drop-down customization here
                                property Component __dropDownStyle: MenuStyle {
                                    __maxPopupHeight: 600
                                    __menuItemType: "comboboxitem"

                                    // ComboBox background
                                    frame: Rectangle {
                                        color: screenSettings.controlPropertiesColor
                                        border.width: 1
                                        border.color: screenSettings.thirdElementsColor
                                    }

                                    itemDelegate.label:             // an item text
                                                                    Text {
                                        verticalAlignment: Text.AlignVCenter
                                        horizontalAlignment: Text.AlignHCenter
                                        font.pointSize: 15
                                        color: styleData.selected ? "#BD2845" : screenSettings.thirdElementsColor
                                        text: styleData.text
                                    }

                                    itemDelegate.background: Rectangle {  // selection of an item
                                        radius: 2
                                        color: styleData.selected ? "darkGray" : "transparent"
                                    }

                                    __scrollerStyle: ScrollViewStyle { }
                                }

                                property Component __popupStyle: Style {
                                    property int __maxPopupHeight: 400
                                    property int submenuOverlap: 0

                                    property Component frame: Rectangle {
                                        width: (parent ? parent.contentWidth : 0)
                                        height: (parent ? parent.contentHeight : 0) + 2
                                        border.color: screenSettings.controlPropertiesColor
                                        property real maxHeight: 500
                                        property int margin: 1
                                    }

                                    property Component menuItemPanel: Text {
                                        text: "NOT IMPLEMENTED"
                                        color: "red"
                                        font {
                                            pixelSize: 14
                                            bold: true
                                        }
                                    }

                                    property Component __scrollerStyle: null
                                }
                            }

                            model: ListModel {
                                id: cbItems
                                ListElement { text: "Choose your control..." }
                                ListElement { text: "Type A" }
                                ListElement { text: "Type B" }
                            }
                        }

                        GridLayout {
                            rows: 1
                            columns: 4

                            CustomLabel {
                                text:  qsTr("P")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomSwitch {
                                id: switchP
                                checked: false
                            }

                            CustomLabel {
                                text:  qsTr("Kp")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomTextField {
                                enabled: switchD.checked
                                Layout.fillWidth: true
                            }
                        }

                        GridLayout {
                            rows: 1
                            columns: 4

                            CustomLabel {
                                text:  qsTr("I")
                                font.pixelSize: optionsArea.width * 0.1
                                width: parent.width * 0.2
                            }

                            CustomSwitch {
                                id: switchI
                                width: parent.width * 0.2
                                checked: false
                            }

                            CustomLabel {
                                text:  qsTr("Ki")
                                width: parent.width * 0.2
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomTextField {
                                enabled: switchD.checked
                                width: parent.width * 0.4
                                Layout.fillWidth: true
                            }
                        }

                        GridLayout {
                            rows: 1
                            columns: 4

                            CustomLabel {
                                text:  qsTr("D")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomSwitch {
                                id: switchD
                                checked: false
                            }
                            CustomLabel {
                                text:  qsTr("Kd")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomTextField {
                                enabled: switchD.checked
                                Layout.fillWidth: true
                            }
                        }
                    }
                }
            }
        }
    }
}
