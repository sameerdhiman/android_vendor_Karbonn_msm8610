# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS += vendor/karbonn/kts1p/overlay

$(call inherit-product, vendor/karbonn/kts1p/kts1p-vendor-blobs.mk)

# Prebuilt APKs
PRODUCT_PACKAGES += \
#    AntHalService \
    btmultisim \
    CABLService \
    CarrierLoadService \
    com.qualcomm.location \
    com.qualcomm.msapm \
    com.qualcomm.services.location \
    DeviceInfo \
    GsmTuneAway \
    ims \
    InterfacePermissions \
    ModemTestMode \
    QComQMIPermissions \
    qcrilmsgtunnel \
    TimeService

# Prebuilt jars
PRODUCT_PACKAGES += \
    btmultisimlibrary \
    cneapiclient \
    com.qrd.wappush \
    com.qualcomm.location.vzw_library \
    com.quicinc.cne \
    imslibrary \
    phoneclient \
    qcnvitems \
    qcrilhook \
    qmapbridge