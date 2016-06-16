import QtQuick 2.5
import QtQuick.Window 2.2

Item {

    property real screenHeight: window.height
    property real screenWidth: window.width

    property real gameSceneHeight: screenHeight * 0.8
    property real gameSceneWidth: screenWidth * 0.7
    property real gameSceneVerticalCenter: gameSceneWidth / 2

    property real roadHeight: gameSceneHeight
    property real roadWidth: screenWidth * 0.7

    property real carControlHeight: screenHeight * 0.2
    property real carControlWidth: screenWidth * 0.7
    property real carPosition: roadHeight - carHeight

    property real controlPropertiesHeight: screenHeight
    property real controlPropertiesWidth: screenWidth * 0.3

    property real laneHeight: screenHeight
    property real laneWidth: screenWidth * 0.01

    property real carHeight: screenWidth * 0.08
    property real carWidth: screenWidth * 0.06

    property string backgroundColor: "#171F22"
    property string primaryElementsColor: "#D52846"
    property string secondElementsColor: "#BD2943"
    property string thirdElementsColor: "#48494B"
    property string controlPropertiesColor: "#232A30"
}
