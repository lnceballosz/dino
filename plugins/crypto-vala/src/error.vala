// SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
// SPDX-License-Identifier: GPL-3.0-or-later

namespace Crypto {

public errordomain Error {
    ILLEGAL_ARGUMENTS,
    GCRYPT
}

internal void may_throw_gcrypt_error(GCrypt.Error e) throws Error {
    if (((int)e) != 0) {
        throw new Crypto.Error.GCRYPT(e.to_string());
    }
}
}
