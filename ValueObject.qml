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

    /*
     * Workaround for Qt Quick 1.1: when text is reassigned it still gets updated from
     * _item.text even though it is no longer assigned to it. Hence explicity break updates
     * of _item.text by an assignment. Qt Quick 2.0 and up work as expected though.
     */
    property bool _workAroundActive;
    onTextChanged: {
        if (!_workAroundActive && text !== _item.text) {
           _workAroundActive = true
           _item.text = text
       }
    }

    // the "private" object with a value and a default text representation of it
    Item {
        id: _item
        property variant value
        property string text: value.toString() + " default (bad)"
    }
}
