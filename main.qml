import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: navBar
        width: 100
        height: parent.height
        color: "green"

        Column {
            id: navColumn

            NavButton {
                title.text: "Cat"
                area.onPressed: image.source = "qrc:/images/cat.jpg"
            }

            NavButton {
                title.text: "Dog"
                area.onPressed: image.source = "qrc:/images/dog.jpg"
            }

            NavButton {
                title.text: "Fish"
                area.onPressed: image.source = "qrc:/images/fish.jpg"
            }
        }
    }

    Rectangle {
        id: bg
        color: "grey"

        anchors.left: navBar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Image {
            id: image
            anchors.fill: parent
            anchors.margins: 25
            source: "qrc:/images/logo.png"
        }
    }
}
