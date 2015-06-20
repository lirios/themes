/****************************************************************************
 * This file is part of Hawaii.
 *
 * Copyright (C) 2014-2015 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * Author(s):
 *    Pier Luigi Fiorini
 *
 * $BEGIN_LICENSE:GPL3-HAWAII$
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3 or any later version accepted
 * by Pier Luigi Fiorini, which shall act as a proxy defined in Section 14
 * of version 3 of the license.
 *
 * Any modifications to this file must keep this entire header intact.
 *
 * The interactive user interfaces in modified source and object code
 * versions of this program must display Appropriate Legal Notices,
 * as required under Section 5 of the GNU General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU General Public License
 * version 3, these Appropriate Legal Notices must retain the display of the
 * "Powered by Hawaii" logo.  If the display of the logo is not reasonably
 * feasible for technical reasons, the Appropriate Legal Notices must display
 * the words "Powered by Hawaii".
 *
 * In accordance with Section 7(c) of the GNU General Public License
 * version 3, modified source and object code versions of this program
 * must be marked in reasonable ways as different from the original version.
 *
 * In accordance with Section 7(d) of the GNU General Public License
 * version 3, neither the "Hawaii" name, nor the name of any project that is
 * related to it, nor the names of its contributors may be used to endorse or
 * promote products derived from this software without specific prior written
 * permission.
 *
 * In accordance with Section 7(e) of the GNU General Public License
 * version 3, this license does not grant any license or rights to use the
 * "Hawaii" name or logo, nor any other trademark.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 ***************************************************************************/

import QtQuick 2.0
import Hawaii.Themes 1.0 as Themes

ListView {
    readonly property int userItemWidth: Themes.Units.largeSpacing * 8
    readonly property int userItemHeight: Themes.Units.largeSpacing * 8
    readonly property int userFaceSize: Themes.Units.largeSpacing * 6

    signal selected()

    id: usersView
    focus: true
    spacing: Themes.Units.largeSpacing * 2
    orientation: ListView.Horizontal
    highlightRangeMode: ListView.StrictlyEnforceRange
    delegate: UserDelegate {
        name: (model.realName === "") ? model.name : model.realName
        userName: model.name
        iconSource: model.icon
        faceSize: usersView.userFaceSize
        width: usersView.userItemWidth
        height: usersView.userItemHeight
        onClicked: ListView.view.currentIndex = index
    }
    cacheBuffer: 100
    currentIndex: usersView.model && usersView.model.lastIndex ? usersView.model.lastIndex : 0
    onCurrentIndexChanged: usersView.selected()

    Keys.onEscapePressed: usersView.selected()
    Keys.onEnterPressed: usersView.selected()
    Keys.onReturnPressed: usersView.selected()
}
