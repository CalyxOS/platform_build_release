# Copyright (C) 2023 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file defines the build system flags that can be set based on the
# release configuration.  If at all possible, use aconfig flags instead.
# This is for things that must be decided at compile time.

load(
    "//build/make/core/release_config.bzl",
    "ALL",
    "PRODUCT",
    "SYSTEM",
    "SYSTEM_EXT",
    "VENDOR",
    "flag",
)

# Flags should be alphabetical by flag name to reduce merge conflifcts
flags = [
    # The aconfig_value_set soong module to use to set aconfig values.
    flag("RELEASE_ACONFIG_VALUE_SETS", ALL, None),

    # The platform version.
    # TODO(joeo): Remove the default here. Maybe for platform builds not having
    # a version should be an error and should be allowed for unbundled builds.
    flag("RELEASE_PLATFORM_VERSION", ALL, "VP1A"),
]
