// SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
// SPDX-License-Identifier: GPL-3.0-or-later

namespace Dino.Plugins.Omemo {

public enum TrustLevel {
    VERIFIED,
    TRUSTED,
    UNTRUSTED,
    UNKNOWN;

    public string to_string() {
        int val = this;
        return val.to_string();
    }
}

}
