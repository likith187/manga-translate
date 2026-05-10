package com.coui.component.responsiveui.status;

import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings;
import android.util.Log;
import com.coui.appcompat.baseview.util.FoldSettingsHelper;
import com.coui.component.responsiveui.ResponsiveUILog;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class FoldingStateUtil {
    public static final FoldingStateUtil INSTANCE = new FoldingStateUtil();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f7433a;

    static {
        ResponsiveUILog responsiveUILog = ResponsiveUILog.INSTANCE;
        f7433a = responsiveUILog.getLOG_DEBUG() || responsiveUILog.isLoggable("FoldingStateUtil", 3);
    }

    private FoldingStateUtil() {
    }

    public static final FoldingState getFoldingState(Context context) {
        r.e(context, "context");
        int i10 = Settings.Global.getInt(context.getContentResolver(), FoldSettingsHelper.SYSTEM_FOLDING_MODE_KEY, -1);
        FoldingState foldingState = i10 != 0 ? i10 != 1 ? FoldingState.UNKNOWN : FoldingState.UNFOLD : FoldingState.FOLD;
        if (f7433a) {
            Log.d("FoldingStateUtil", "[getFoldingState]: " + foldingState);
        }
        return foldingState;
    }

    public static final void registerFoldingStateObserver(Context context, ContentObserver observer) {
        r.e(context, "context");
        r.e(observer, "observer");
        context.getContentResolver().registerContentObserver(Settings.Global.getUriFor(FoldSettingsHelper.SYSTEM_FOLDING_MODE_KEY), false, observer);
    }

    public static final void unregisterFoldingStateObserver(Context context, ContentObserver observer) {
        r.e(context, "context");
        r.e(observer, "observer");
        context.getContentResolver().unregisterContentObserver(observer);
    }
}
