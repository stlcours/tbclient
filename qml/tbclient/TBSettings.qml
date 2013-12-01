import QtQuick 1.1

QtObject {
    id: tbsettings;

    // system
    property string currentUid: utility.getValue("currentUid", "");
    onCurrentUidChanged: utility.setValue("currentUid", currentUid);

    property int clientType: utility.getValue("clientType", 1);
    onClientTypeChanged: utility.setValue("clientType", clientType);

    property string clientId: utility.getValue("clientId", "0");
    onClientIdChanged: utility.setValue("clientId", clientId);

    // design
    property bool whiteTheme: utility.getValue("whiteTheme", false);
    onWhiteThemeChanged: utility.setValue("whiteTheme", whiteTheme);

    property bool showImage: utility.getValue("showImage", true);
    onShowImageChanged: utility.setValue("showImage", showImage);

    property bool showAbstract: utility.getValue("showAbstract", true);
    onShowAbstractChanged: utility.setValue("showAbstract", showAbstract);

    property int maxTabCount: utility.getValue("maxTabCount", 4);
    onMaxTabCountChanged: utility.setValue("maxTabCount", maxTabCount);

    property int fontSize: utility.getValue("fontSize", platformStyle.fontSizeMedium);

    // remind
    property int remindInterval: utility.getValue("remind/interval", 5);
    // by minutes
    onRemindIntervalChanged: utility.setValue("remind/interval", remindInterval);

    property bool remindBackground: utility.getValue("remind/background", true);
    onRemindBackgroundChanged: utility.setValue("remind/background", remindBackground);
}