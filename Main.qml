import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: mainwindow
    visible: true
    width: 1080
    height: 800
    title: "To-Do List"

    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height

    Rectangle {
        id: mainREC
        color: "#212126" // Глубокий тёмно-серый
        width: 680
        height: 800
        anchors.leftMargin: 400
        anchors.left: parent.left

        AnimatedImage {
            id: animation
            source: "images/pudge-dota.gif"
            width: 50
            height: 50
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            anchors.bottomMargin: 10
            anchors.rightMargin: 10

            opacity: 0.5
        }

        Rectangle {
            id: managerTasks
            width: 520
            height: 100
            color: "#212126" // Такой же как фон
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 30
            anchors.top: parent.top
            border.color: "#8C8C96"
            border.width: 1

            Text {
                text: "ДОБРО ПОЖАЛОВАТЬ В TO-DO List!"
                color: "#B9B9C7" // Светло-серый
                anchors.centerIn: parent
                font.pointSize: 18
            }
        }

        Rectangle {
            color: "#212126"
            width: 200
            height: 70
            anchors.leftMargin: 40
            anchors.topMargin: 200
            anchors.top: parent.top
            anchors.left: parent.left

            Text {
                text: "Ваш список задач:"
                color: "#B9B9C7"
                font.pointSize: 25
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            color: "#212126"
            width: 200
            height: 70
            anchors.rightMargin: 40
            anchors.topMargin: 200
            anchors.top: parent.top
            anchors.right: parent.right

            Text {
                text: "Кол-во задач: N"
                color: "#B9B9C7"
                font.pointSize: 25
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    Rectangle {
        id: leftRectangle
        width: 400
        height: 800
        color: "#2B2B31" // Чуть более светлый тёмно-серый
        border.color: "black"
        border.width: 1
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        Rectangle {
            id: urlLink
            color: "#2B2B31"
            width: 360
            height: 30
            anchors.bottomMargin: 20
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                anchors.centerIn: parent
                textFormat: Text.RichText
                text: "<a href=\"https://t.me/showman_69\">Тг разраба</a>"
                color: "#7A78FF" // Фиолетово-синий
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
            color: "#2B2B31"
            border.color: "#8C8C96"
            border.width: 1

            Text {
                text: "Меню"
                font.pixelSize: 24
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                color: "#B9B9C7"
            }
        }

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 12

            Button {
                text: "Добавить задачу"
                font.pixelSize: 20
                width: 320
                height: 100
                background: Rectangle {
                    color: "#55555e" // Средне-серый
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "#F8F9FA" // Белый
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                text: "Удалить задачу"
                font.pixelSize: 20
                width: 320
                height: 100
                background: Rectangle {
                    color: "#55555e"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "#F8F9FA"
                    horizontalAlignment: Text.AlignHCenter
                     verticalAlignment: Text.AlignVCenter
                }
            }

            Button {
                text: "Изменить задачу"
                font.pixelSize: 20
                width: 320
                height: 100
                background: Rectangle {
                    color: "#55555e"
                    radius: 5
                }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    color: "#F8F9FA"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }
}