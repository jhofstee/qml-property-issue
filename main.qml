import QtQuick 1.1

Item {
    width: 300
    height: 200

    TextValue {
        item {
            value: 0
            /*
             * The intend is to reassing the text property with a new description.
             * This works initially, but is also updated to the original representation
             * when value changes, as triggered by the timer below.
             */
            text: item.value + " good"
        }

        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: parent.item.value++
        }
    }
}
