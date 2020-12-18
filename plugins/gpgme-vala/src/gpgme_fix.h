/*
SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
SPDX-License-Identifier: GPL-3.0-or-later
*/

#ifndef GPGME_FIX
#define GPGME_FIX 1

#include <glib.h>
#include <gpgme.h>

static GRecMutex gpgme_global_mutex;

gpgme_key_t gpgme_key_ref_vapi (gpgme_key_t key);
gpgme_key_t gpgme_key_unref_vapi (gpgme_key_t key);

#endif
