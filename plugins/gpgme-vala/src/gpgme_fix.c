/*
SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
SPDX-License-Identifier: GPL-3.0-or-later
*/

#include <gpgme_fix.h>

static GRecMutex gpgme_global_mutex = {0};

gpgme_key_t gpgme_key_ref_vapi (gpgme_key_t key) {
    gpgme_key_ref(key);
    return key;
}
gpgme_key_t gpgme_key_unref_vapi (gpgme_key_t key) {
    gpgme_key_unref(key);
    return key;
}
