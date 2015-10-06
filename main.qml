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
        x: 34
        y: 278
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
        x: 34
        y: 250
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

    Text {
        id: textPasswordLabel
        x: 30
        y: 404
        color: "#e6e6e6"
        text: qsTr("Mot de passe")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Text {
        id: textPassword
        x: 30
        y: 425
        width: 260
        height: 36
        color: "#e6e6e6"
        text: "..."
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: false
        font.pixelSize: 32
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

    Text {
        id: textSubtitle
        x: 91
        y: 197
        width: 145
        height: 11
        color: "#e6e6e6"
        text: qsTr("Générateur de mots de passes")
        font.pointSize: 6
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
    }

    Text {
        id: textSizeLabel2
        x: 34
        y: 233
        width: 145
        height: 16
        color: "#e6e6e6"
        text: qsTr("Longueur")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignBottom
    }
}
