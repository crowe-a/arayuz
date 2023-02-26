import QtQuick 2.0

Item {
    id: attitudeDirectionIndicator
    anchors.fill: parent
    Rectangle {
        id: rectangle
        color: "#00000000"
        anchors.fill: parent

        //ın this code we are turing loga
        Image {
            id: hsi_face
            anchors.fill: parent
            source: "../../images/svg_images/hsi/hsi_face.svg"
            fillMode: Image.PreserveAspectFit
        }
        //ın this code ıt ıs not move,just stay.
        Image {
            id: hsi_case
            anchors.fill: parent
            source: "../../images/svg_images/hsi/hsi_case.svg"
            fillMode: Image.PreserveAspectFit
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:300;width:300}
}
##^##*/
