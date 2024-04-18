import QtQuick 2.12

Item {
    id: root
    width: 100
    height: 50

    property color colorNormal: "green"
    property color colorHover: "limegreen"
    property color colorPressed: "darkgreen"
    property alias title: txt
    property alias area: mouseArea

    Rectangle {
        id: rect
        anchors.fill: parent
        color: root.colorNormal

        Text {
            id: txt
            text: ""
            anchors.centerIn: parent
            color: "white"
            font.bold: true
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: rect.color = root.colorHover
            onExited: rect.color = root.colorNormal
            onPressed: rect.color = root.colorPressed
            onReleased: rect.color = root.colorHover
        }
    }
}
