// SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
// SPDX-License-Identifier: GPL-3.0-or-later

namespace Dino {
    [CCode (cheader_filename = "emojichooser.h")]
    class EmojiChooser : Gtk.Popover {
        public signal void emoji_picked(string text);
        public EmojiChooser();
    }
}
