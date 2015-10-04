import QtQuick 2.3
import QtQuick.Controls 1.2
import "controller.js" as Controller

ApplicationWindow {
    id: application
    visible: true
    width: 320
    height: 480
    color: "#242424"
    title: qsTr("QPass")

    Flow {
        id: container
        x: 0
        y: 0
        width: 320
        height: 480
        flow: Qt.TopToBottom
    }

    Slider {
        id: sliderSize
        x: 36
        y: 241
        width: 260
        height: 28
        maximumValue: 12
        minimumValue: 4
        value: 6
        stepSize: 1
        activeFocusOnPress: true
        tickmarksEnabled: true
        onValueChanged: Controller.updateSizeLabel(this.value)

    }

    Text {
        id: textSize
        x: 98
        y: 275
        color: "#e6e6e6"
        text: qsTr("6 caractères")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 22
    }

    Button {
        id: buttonGenerate
        x: 30
        y: 330
        width: 260
        height: 39
        text: qsTr("Générer")
        onClicked: Controller.updatePassword(sliderSize.value)
    }

Rectangle {
    id: rectangle
    x: 30
    y: 417
    width: 260
    height: 46
    color: "#00000000"
    border.color: "#e6e6e6"

    Text {
        id: textPassword
        x: 0
        y: 8
        width: 260
        height: 36
        color: "#e6e6e6"
        text: "REZAREAZREZA"
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        font.bold: false
        font.pixelSize: 32
    }
}

    Text {
        id: textPasswordLabel
        x: 124
        y: 396
        color: "#e6e6e6"
        text: qsTr("Mot de passe")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Image {
        id: image
        x: 91
        y: 13
        width: 145
        height: 178
        fillMode: Image.PreserveAspectFit
        source: "logo.png"
    }

}
