import QtQuick 1.1

// just a Text which displays the text property from item
Text {
    property ValueObject item: ValueObject {}

    text: item.text
    onTextChanged: console.log("the text: " + text)
}
