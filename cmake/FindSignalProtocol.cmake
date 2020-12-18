# SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
# SPDX-License-Identifier: GPL-3.0-or-later

include(PkgConfigWithFallback)
find_pkg_config_with_fallback(SignalProtocol
    PKG_CONFIG_NAME libsignal-protocol-c
    LIB_NAMES signal-protocol-c
    INCLUDE_NAMES signal/signal_protocol.h
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(SignalProtocol
    REQUIRED_VARS SignalProtocol_LIBRARY
    VERSION_VAR SignalProtocol_VERSION)
