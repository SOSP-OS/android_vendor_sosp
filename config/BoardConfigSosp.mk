include vendor/sosp/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/sosp/config/BoardConfigQcom.mk
endif

include vendor/sosp/config/BoardConfigSoong.mk
