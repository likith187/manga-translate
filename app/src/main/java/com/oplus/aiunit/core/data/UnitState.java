package com.oplus.aiunit.core.data;

import com.oplus.aiunit.core.protocol.common.ErrorCode;

/* JADX INFO: loaded from: classes.dex */
public final class UnitState {
    public static final UnitState INSTANCE = new UnitState();
    public static final int STATE_AVAILABLE = 1;
    public static final int STATE_AVAILABLE_AND_NEW_DOWNLOAD = 4;
    public static final int STATE_AVAILABLE_INTERNET = 3;
    public static final int STATE_AVAILABLE_LOCAL = 2;
    public static final int STATE_UNAVAILABLE = 0;
    public static final int STATE_UNAVAILABLE_DISABLE = 13;
    public static final int STATE_UNAVAILABLE_EXCEPTION = 910;
    public static final int STATE_UNAVAILABLE_HIGH_TEMPERATURE = 904;
    public static final int STATE_UNAVAILABLE_LOW_BATTERY = 901;
    public static final int STATE_UNAVAILABLE_LOW_MEMORY = 900;
    public static final int STATE_UNAVAILABLE_NEED_DOWNLOAD = 6;
    public static final int STATE_UNAVAILABLE_NO_INTERNET = 5;
    public static final int STATE_UNAVAILABLE_OFFLINE = 12;
    public static final int STATE_UNAVAILABLE_OVERLOAD = 903;
    public static final int STATE_UNAVAILABLE_POWER_SAVE_MODEL = 902;
    public static final int STATE_UNAVAILABLE_PRIVACY_REJECT = 906;
    public static final int STATE_UNAVAILABLE_URL_EMPTY = 907;
    public static final int STATE_UNAVAILABLE_USER_APPLYING = 9;
    public static final int STATE_UNAVAILABLE_USER_APPLY_FAILED = 10;
    public static final int STATE_UNAVAILABLE_USER_NO_APPLY = 8;
    public static final int STATE_UNAVAILABLE_USER_NO_AUTHORIZE = 11;
    public static final int STATE_UNAVAILABLE_USER_SWITCH_CLOSE = 7;
    public static final int STATE_UNAVAILABLE_USER_SWITCH_CLOSE_LOCAL_LLM = 14;
    public static final int STATE_UNAVAILABLE_WITH_INTERNET_BY_FORCE_LOCAL = 905;

    private UnitState() {
    }

    public static final ErrorCode toErrorCode(int i10) {
        switch (i10) {
            case 0:
                return ErrorCode.kErrorRouterFail;
            case 1:
            case 2:
            case 3:
            case 4:
                return ErrorCode.kErrorNone;
            case 5:
                return ErrorCode.kErrorNoInternet;
            case 6:
                return ErrorCode.kErrorNoDownload;
            case 7:
            case 14:
                return ErrorCode.kErrorSwitchClose;
            case 8:
                return ErrorCode.kErrorNoApply;
            case 9:
                return ErrorCode.kErrorApplying;
            case 10:
                return ErrorCode.kErrorApplyFail;
            case 11:
                return ErrorCode.kErrorNoAccount;
            case 12:
                return ErrorCode.kErrorOffline;
            case 13:
                return ErrorCode.kErrorRouteDisabled;
            default:
                switch (i10) {
                    case STATE_UNAVAILABLE_LOW_MEMORY /* 900 */:
                        return ErrorCode.kErrorLowMemory;
                    case STATE_UNAVAILABLE_LOW_BATTERY /* 901 */:
                        return ErrorCode.kErrorLowBattery;
                    case STATE_UNAVAILABLE_POWER_SAVE_MODEL /* 902 */:
                        return ErrorCode.kErrorLowPowerSaveModel;
                    case STATE_UNAVAILABLE_OVERLOAD /* 903 */:
                        return ErrorCode.kErrorOverload;
                    case STATE_UNAVAILABLE_HIGH_TEMPERATURE /* 904 */:
                        return ErrorCode.kErrorHighTemperature;
                    case STATE_UNAVAILABLE_WITH_INTERNET_BY_FORCE_LOCAL /* 905 */:
                        return ErrorCode.kErrorUserForceLocal;
                    case STATE_UNAVAILABLE_PRIVACY_REJECT /* 906 */:
                        return ErrorCode.kErrorPrivacyReject;
                    case STATE_UNAVAILABLE_URL_EMPTY /* 907 */:
                        return ErrorCode.kErrorUrlEmpty;
                    default:
                        return ErrorCode.UNKNOWN;
                }
        }
    }
}
