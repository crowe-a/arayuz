import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.0
import "../controls"

import QtPositioning 5.14
import QtGraphicalEffects 1.0

import QtMultimedia 5.9
import QtQuick.Layouts 1.2

import QtLocation 5.6
import QtPositioning 5.6


Item {
    Rectangle {
        id: main_area
        color: "#0e111e"
        anchors.fill: parent


        Flow {
            id: flow_area
            anchors.fill: parent
            clip: false
            layoutDirection: Qt.LeftToRight
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.topMargin: 10
            transformOrigin: Item.Center
            flow: Flow.LeftToRight
            anchors.bottomMargin: 60
            spacing: 21

                
             Rectangle {
                id: airspeed1
                width: 592.5
                height: 500
                radius: 25
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#0e111e"
                    }

                    GradientStop {
                        position: 1
                        color: "#0e111e"
                    }
                }
                clip: false

                Rectangle {
                    id: indicator_area
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 10



            //      Plugin {
            //         id: mapPlugin
            //         name: "osm" // "mapboxgl", "esri", ...
            //         // specify plugin parameters if necessary
            //         // PluginParameter {
            //         //     name:
            //         //     value:
            //         // }
            //     }
            
            //     Map {
            //         anchors.fill: parent
            //         plugin: mapPlugin
            //         center: QtPositioning.coordinate(59.91, 10.75) // Oslo
            //         zoomLevel: 14
            //         property MapCircle circle
            //     }

                 

            //     }
            //     Component {
            //     id: mapPlugin1
            //     MapQuickItem {
            //         id: marker
            //         anchorPoint.x: image.width/4
            //         anchorPoint.y: image.height
            //         coordinate: position

            //         MouseArea{
            //             anchors.fill: parent
            //             onClicked: {
            //                 imageMarker.source = "qrc:/Images/Images/Drone-PNG.png"
            //                 console.log("MapQuickItem clicked")}
            //         }

            //         sourceItem: Image {
            //             id: imageMarker
            //             source: "qrc:/Images/Images/Drone-PNG.png"
            //         }
            //     }
            // }

            
             Plugin {
                id: mapPlugin
                name: "osm"
            }

            Map {
                id: mapview
                anchors.fill: parent
                plugin: mapPlugin
                center: QtPositioning.coordinate(40.773841, 30.363626)
                zoomLevel: 25

                        MapItemView{
                    model: markerModel
                    delegate: mapcomponent
                }
            }

            Component {
                id: mapcomponent
                MapQuickItem {
                    id: marker
                    anchorPoint.x: image.width/4
                    anchorPoint.y: image.height
                    coordinate: position

                    sourceItem: Image {
                        id: image
                        source: "http://maps.gstatic.com/mapfiles/ridefinder-images/mm_20_red.png"
                                    }
                                }
                            }
                        }
                    }

    
    




            Rectangle {
                id: airspeed3
                width: 592.5
                height: 500
                radius: 25
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#0e111e"
                    }

                    GradientStop {
                        position: 1
                        color: "#0e111e"
                    }
                }
                clip: true

                Rectangle {
                    id: indicator_area10
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 10



                    // Image {
                        
                    //     id: asi_case10
                    //     anchors.fill: parent
                    //     source: "../../images/svg_images/opencv_frame_1.png"
                    //     fillMode: Image.PreserveAspectFit
                    //     asynchronous: true

                    // }
                    Camera {
                        id: camera
                        captureMode: Camera.CaptureStillImage
                    }

                    Item {
                        id: itemVideo
                        anchors.fill: parent
                        VideoOutput {
                        anchors.fill: parent
                            source: camera
                            focus : visible
                        }

                    }
                    // MediaPlayer {
                    // id: player
                    // source: "../../images/a - Kopya.mp4"
                    // }

                    // VideoOutput {
                    //     anchors.fill: parent
                    //     source: player
                    // }

                    // Component.onCompleted: {
                    //     player.play();
                    // }



                
                }
            }
            Rectangle {
                id: kuarahavacilik
                width: 1185
                height: 275
                border.width: 0
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#0e111e"
                    }
                }

                Rectangle {
                    id: indicator_area4
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 15
                    anchors.rightMargin: 10
                    anchors.topMargin: 15
                    anchors.leftMargin: 10



                    Image {
                        id: hsi_case
                        anchors.fill: parent
                        source: "../../images/svg_images/kuara.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                }
            }

           
        }

        Rectangle {
            id: bottom_area
            color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: flow_area.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 0

            Row {
                id: row_bottom
                anchors.fill: parent
                spacing: 10
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 5

                Rectangle {
                    id: arm_box
                    width: 100
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }

                    Text {
                        id: arm_text
                        height: 50
                        color: "#ffffff"
                        text: qsTr("ARM")
                        anchors.fill: parent
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.weight: Font.Medium
                        font.family: "Arial"
                    }
                }

                Rectangle {
                    id: mode_box
                    width: 310
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }
                    Text {
                        id: flight_mode_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: mode.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                    }

                    Text {
                        id: mode
                        width: 97
                        color: "#0fbcf9"
                        text: qsTr("Uçuş Modu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        anchors.leftMargin: 15
                        font.family: "Arial"
                        font.weight: Font.Medium
                    }

                    Text {
                        id: mode1
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Flight Mode")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        anchors.bottomMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: battery_box
                    width: 150
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }
                    Text {
                        id: battery_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: bat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: bat
                        width: 67
                        color: "#0fbcf9"
                        text: qsTr("Batarya")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: mode2
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Battery")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: sat_box
                    width: 120
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }
                    Text {
                        id: sat_text
                        width: 104
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: sat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: sat
                        width: 46
                        color: "#0fbcf9"
                        text: qsTr("Uydu")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: mode3
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Satellite")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }
                }

                Rectangle {
                    id: gps_lat_box
                    width: 230
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }
                    Text {
                        id: lat
                        width: 64
                        color: "#0fbcf9"
                        text: qsTr("Enlem")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lat_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lat.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: mode4
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Latitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                }

                Rectangle {
                    id: gps_lon_box
                    width: 230
                    height: 45
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#272935"
                        }

                        GradientStop {
                            position: 1
                            color: "#1e272e"
                        }
                    }
                    Text {
                        id: lon
                        width: 64
                        color: "#0fbcf9"
                        text: qsTr("Boylam")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.topMargin: 5
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                    Text {
                        id: lon_text
                        color: "#ffffff"
                        text: qsTr("-")
                        anchors.left: lon.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        font.family: "Arial"
                        font.weight: Font.Medium
                        anchors.leftMargin: 10
                    }

                    Text {
                        id: mode5
                        x: -305
                        y: 24
                        width: 97
                        color: "#64d9c9"
                        text: qsTr("Longitude")
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignBottom
                        font.family: "Arial"
                        anchors.bottomMargin: 5
                        font.weight: Font.Medium
                        anchors.leftMargin: 15
                    }

                }
            }
        }
    }

    // ARKA YUZ BAGLANTILARI

    Connections{
        target: backend

        // ALT DEGERLER ---------------------------------------------------------

        // ARM
        function onChangeArm(value){
            if(value){
                arm_text.color = "#0be881"
            }
            else if(!value){
                arm_text.color = "#ff3f34"
            }
        }

        // Ucus modu
        function onChangeFlightMode(value){
            flight_mode_text.text = value
        }

        // Uydu sayisi
        function onChangeSatNum(value){
            sat_text.text = value
        }

        // Batarya
        function onChangeBattery(value){
            battery_text.text = value
        }

        // GPS Lat
        function onChangeLat(value){
            lat_text.text = value
        }

        // GPS Lon
        function onChangeLon(value){
            lon_text.text = value
        }



        // ------------------------------------------------------------------------

        // YAW - Dronekit
        function onChangeYawValue(value){
            hsi_face.rotation = value
            // yaw_value.text = value
        }


        // PITCH - Dronekit
        function onChangePitchValue(value){
            // Attitude Direction Indicator
            adi_inner.anchors.verticalCenterOffset = value
        }

        // ROLL - Dronekit
        function onChangeRollValue(value){

            // Turn Coordinator
            tc_plane.rotation = value
            // roll_value.text = value

            // Attitude Direction Indicator
            adi_inner.rotation = value
            adi_outer.rotation = value

        }

        // TURN COORDINATOR BALL
        function onChangeTcBall(value){
            tc_ball.anchors.horizontalCenterOffset = value
        }

        // AIRSPEED VALUE - Dronekit
        function onChangeAisValue(value){
            asi_hand.rotation = value

        }
        function onChangeAisTextValue(text){
            asi_text.text = text

        }



        // HEADING - Dronekit

        function onChangeHeadingValue(value){
            hsi_face.rotation = value
            // heading_value.text = value
        }

        // ALTITUDE (ALTIMETTR) - Dronekit

        function onChangeAltitudeValue(value){
            alt_needle_mini.rotation = value
        }

        function onChangeAltText(value){
            alt_text.text = value
        }

        // VERTICAL SPEED - Dronekit

        function onChangeVerticalSpeedValue(value){
            vsi_hand.rotation = value
        }

        function onChangeVerticalSpeedText(value){
            vsi_text.text = value
        }


    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9;height:600;width:930}
}
##^##*/
