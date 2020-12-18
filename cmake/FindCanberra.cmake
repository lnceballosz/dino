# SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
# SPDX-License-Identifier: GPL-3.0-or-later

include(PkgConfigWithFallback)
find_pkg_config_with_fallback(Canberra
    PKG_CONFIG_NAME libcanberra
    LIB_NAMES canberra
    INCLUDE_NAMES canberra.h
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Canberra
    REQUIRED_VARS Canberra_LIBRARY)
