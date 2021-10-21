# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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

# -----------------------------------------------------------------
# Crystal OTA update package

CRYSTAL_TARGET_PACKAGE := $(PRODUCT_OUT)/CrystalOS-$(CRYSTAL_VERSION)-$(CRYSTAL_VERSION_NAME)-$(CRYSTAL_BUILD_TYPE)-$(CRYSTAL_PURITY)-$(CRYSTAL_BUILD_DATE).zip

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: crystal
crystal: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CRYSTAL_TARGET_PACKAGE)
	$(hide) $(MD5) $(CRYSTAL_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CRYSTAL_TARGET_PACKAGE).md5sum

	echo -e "========================================="
	echo -e ""
	echo -e " .d8888b.                            888             888  .d88888b.   .d8888b.  "
	echo -e "d88P  Y88b                           888             888 d88P' 'Y88b d88P  Y88b "
	echo -e "888    888                           888             888 888     888 Y88b.      "
	echo -e "888        888d888 888  888 .d8888b  888888  8888b.  888 888     888  'Y888b.   "
	echo -e "888        888P'   888  888 88K      888        '88b 888 888     888     'Y88b. "
	echo -e "888    888 888     888  888 'Y8888b. 888    .d888888 888 888     888       '888 "
	echo -e "Y88b  d88P 888     Y88b 888      X88 Y88b.  888  888 888 Y88b. .d88P Y88b  d88P "
	echo -e " 'Y8888P'  888      'Y88888  88888P'  'Y888 'Y888888 888  'Y88888P'   'Y8888P'  "
	echo -e "                        888                                                     "
	echo -e "                   Y8b d88P                                                     "
	echo -e "                    'Y88P'                                                      "
	echo -e ""
	echo -e "========================================="
	echo -e ""
	@echo "Package Complete: $(CRYSTAL_TARGET_PACKAGE)" >&2
