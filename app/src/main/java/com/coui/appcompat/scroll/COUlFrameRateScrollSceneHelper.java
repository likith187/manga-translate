package com.coui.appcompat.scroll;

import android.os.Bundle;
import com.coui.appcompat.log.COUILog;
import com.coui.appcompat.version.COUIVersionUtil;
import com.oplus.dynamicframerate.DynamicFrameRateManager;

/* JADX INFO: loaded from: classes.dex */
public class COUlFrameRateScrollSceneHelper {
    public static final int ANIMATION_TYPE_LIST_SCROLL = 10102;
    public static final int FRAME_RATE_MIN_SUB_SDK = 10;
    public static final String TAG = "COUlFrameRateHelper";
    private boolean mFrameRateIsOpening = false;
    private boolean mSupportRateVSdk;

    public COUlFrameRateScrollSceneHelper(boolean z10) {
        enableFrameRate(z10);
    }

    public final void enableFrameRate(boolean z10) {
        if (!z10 || !COUIVersionUtil.checkOPlusViewSubSDK(34, 10)) {
            this.mSupportRateVSdk = false;
            return;
        }
        int dynamicFrameRateType = DynamicFrameRateManager.getDynamicFrameRateType();
        if (dynamicFrameRateType == 1 || dynamicFrameRateType == 2) {
            this.mSupportRateVSdk = true;
        }
    }

    public void setFrameRate(boolean z10) {
        if (!this.mSupportRateVSdk) {
            COUILog.d(TAG, "SetFrameRate not success, mSupportRateVSdk is false");
            return;
        }
        if (this.mFrameRateIsOpening != z10) {
            DynamicFrameRateManager.setFrameRate(this, ANIMATION_TYPE_LIST_SCROLL, z10 ? -1 : -2, (Bundle) null);
            COUILog.d(TAG, "setFrameRate isStart:" + z10, new Throwable());
            this.mFrameRateIsOpening = z10;
        }
    }
}
