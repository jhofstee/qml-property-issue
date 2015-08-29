import QtQuick 1.1

Item
{
    id: root

    /*
     * "public" properties, values is always the same as _item.value.
     * The intend is that text might be overwritten.
     */
    property alias value: _item.value
    property string text: _item.text

    // the "private" object with a value and a default text representation of it
    Item {
        id: _item
        property variant value
        property string text: value.toString() + " default (bad)"
    }
}
