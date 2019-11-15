import QtQuick 2.6
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Private 1.0

Rectangle{
    Rectangle{
        width: controlProperties.width * 0.9
        height: controlProperties.height * 0.9
        anchors.centerIn: controlProperties

        Rectangle{
            id:titleArea
            color: "#232A30"
            width: parent.width
            height: parent.height * 0.1
            anchors.left: parent.left
            CustomLabel {
                text: qsTr("Control Panel")
                anchors.centerIn: parent
                font.pixelSize: parent.width * 0.1
            }
        }

        Rectangle{
            width: parent.width
            height: parent.height * 0.9
            anchors.top: titleArea.bottom
            color: "#232A30"

            Rectangle{
                width: parent.width * 0.9
                height: parent.height * 0.95
                border.color: "#BD2845"
                border.width: 2
                color: "#232A30"
                anchors.horizontalCenter: parent.horizontalCenter

                Rectangle{
                    id: optionsArea
                    width: parent.width * 0.9
                    height: parent.height * 0.9
                    anchors.centerIn: parent
                    color: "#232A30"

                    ColumnLayout {
                        anchors.margins: 10

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
                                    border.color:"#48494B"
                                    color: "#48494B"
                                    width: box.width
                                }
                                label: Text {
                                    verticalAlignment: Text.AlignVCenter
                                    horizontalAlignment: Text.AlignHCenter
                                    font.pointSize: 15
                                    color: "#232A30"
                                    text: control.currentText
                                }

                                // drop-down customization here
                                property Component __dropDownStyle: MenuStyle {
                                    __maxPopupHeight: 600
                                    __menuItemType: "comboboxitem"

                                    // ComboBox background
                                    frame: Rectangle {
                                        color: "#232A30"
                                        border.width: 1
                                        border.color:"#48494B"
                                    }

                                    itemDelegate.label:             // an item text
                                                                    Text {
                                        verticalAlignment: Text.AlignVCenter
                                        horizontalAlignment: Text.AlignHCenter
                                        font.pointSize: 15
                                        color: styleData.selected ? "#BD2845" : "#48494B"
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
                                        border.color: "#232A30"
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

                        RowLayout{
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
                                Layout.fillWidth: true
                            }
                        }

                        RowLayout{
                            CustomLabel {
                                text:  qsTr("I")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomSwitch {
                                id: switchI
                                checked: false
                            }

                            CustomLabel {
                                text:  qsTr("Ki")
                                font.pixelSize: optionsArea.width * 0.1
                            }

                            CustomTextField {
                                Layout.fillWidth: true
                            }
                        }

                        RowLayout{
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
                                Layout.fillWidth: true
                            }
                        }
                    }
                }
            }
        }
    }
}
