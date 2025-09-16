import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: mainwindow
    visible: true
    width: 1080
    height: 800
    title: "To-Do List"

    // Устанавливаем минимальные и максимальные размеры
        // равными текущим. Это делает окно нерастягиваемым.
        minimumWidth: width
        minimumHeight: height
        maximumWidth: width
        maximumHeight: height

        Rectangle{
            id: mainREC
            color: "#6C8CD5"
            width: 680
            height: 800
            anchors.leftMargin: 400
            anchors.left: parent.left

            Rectangle{
                id: managerTasks
                width: 520
                height: 100
                color:"#14363F"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 30
                anchors.top: parent.top
                border.color: "black"
                border.width: 2

                Text{
                    text: "ДОБРО ПОЖАЛОВАТЬ В TO-DO LIST"
                    color: "#FF5F00"

                    anchors.centerIn: parent
                    font.pointSize: 18
                }

            }

            Rectangle {
                color: "#6C8CD5"
                width: 200
                height: 70
                anchors.leftMargin: 40
                anchors.topMargin: 200
                anchors.top: parent.top
                anchors.left: parent.left

                Text{
                    text: "Ваш список задач: "
                    color: "red"
                    font.pointSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                color: "#6C8CD5"
                width: 200
                height: 70
                anchors.rightMargin: 40
                anchors.topMargin: 200
                anchors.top: parent.top
                anchors.right: parent.right
                Text {
                    text: "Кол-во задач: N"
                    color: "red"
                    font.pointSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

        }

        Rectangle {
                id: leftRectangle
                width: 400 // Устанавливаем ширину
                height: 800 // Устанавливаем высоту
                color: "#2A4480"
                border.color: "black"
                border.width: 1


                // Привязываем левую сторону к левой стороне родителя
                anchors.left: parent.left

                // Центрируем по вертикали для лучшего расположения
                anchors.verticalCenter: parent.verticalCenter

                    AnimatedImage { id: animation;
                        source: "images/pudge-dota.gif"
                        width: 300
                        height: 150

                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottomMargin:70
                        anchors.bottom: parent.bottom

                    }


                Rectangle {
                    id: urlLink
                    color: "yellow"
                    width: 360
                    height: 30
                    anchors.bottomMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        anchors.centerIn: parent
                        textFormat: Text.RichText
                        text: "<a href=\"https://t.me/showman_69\">Тг разраба</a>"

                        color: "black"
                        font.pointSize: 18

                        onLinkActivated: (link) => {
                                             Qt.openUrlExternally(link);
                                         }
                    }
                }


                Rectangle {
                    id: myMenu
                    width: 320
                    height: 100
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "gray"
                    border.color: "black"
                    border.width: 2

                    Text {
                        text: "Меню"
                        font.pixelSize: 24
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                    }

                }

                Column {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 12

                    // 3. Добавляем кнопки с размерами
                    Button {
                        text: "Добавить задачу"
                        font.pixelSize: 20
                        anchors.verticalCenter: parentVerticalCenter
                        width: 320
                        height: 100
                    }

                    Button {
                        text: "Удалить задачу"
                        font.pixelSize: 20
                        anchors.verticalCenter: parentVerticalCenter
                        width: 320
                        height: 100
                    }

                    Button {
                        text: "Изменить задачу"
                        font.pixelSize: 20
                        anchors.verticalCenter: parentVerticalCenter
                        width: 320
                        height: 100
                    }
                }

            }

    }





