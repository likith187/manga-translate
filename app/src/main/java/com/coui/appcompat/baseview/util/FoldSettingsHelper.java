package com.coui.appcompat.baseview.util;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import com.coui.appcompat.log.COUILog;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class FoldSettingsHelper {
    public static final int SYSTEM_FOLDING_MODE_CLOSE = 0;
    public static final String SYSTEM_FOLDING_MODE_KEY = "oplus_system_folding_mode";
    public static final int SYSTEM_FOLDING_MODE_OPEN = 1;
    public static final int SYSTEM_FOLDING_MODE_UNSUPPORTED = -1;
    private static final String TAG = "FoldSettingsHelper";
    private static Context appContext;
    private static ContentObserver observer;
    public static final FoldSettingsHelper INSTANCE = new FoldSettingsHelper();
    private static int foldStatus = -1;
    private static final ArrayList<FoldSettingsObserver> foldObservers = new ArrayList<>();

    public interface FoldSettingsObserver {
        void observe(int i10);
    }

    private FoldSettingsHelper() {
    }

    public final int getFoldStatus() {
        return foldStatus;
    }

    public final void init(Context context) {
        r.e(context, "context");
        Context applicationContext = context.getApplicationContext();
        r.d(applicationContext, "context.applicationContext");
        appContext = applicationContext;
        if (applicationContext == null) {
            r.r("appContext");
            applicationContext = null;
        }
        foldStatus = Settings.Global.getInt(applicationContext.getContentResolver(), SYSTEM_FOLDING_MODE_KEY, -1);
    }

    public final boolean isSupportFoldScreen() {
        return foldStatus != -1;
    }

    public final void registerFoldObserver(FoldSettingsObserver observer2) {
        r.e(observer2, "observer");
        if (observer == null) {
            ContentObserver contentObserver = new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.coui.appcompat.baseview.util.FoldSettingsHelper.registerFoldObserver.1
                @Override // android.database.ContentObserver
                public void onChange(boolean z10) {
                    super.onChange(z10);
                    FoldSettingsHelper foldSettingsHelper = FoldSettingsHelper.INSTANCE;
                    Context context = FoldSettingsHelper.appContext;
                    if (context == null) {
                        r.r("appContext");
                        context = null;
                    }
                    foldSettingsHelper.setFoldStatus(Settings.Global.getInt(context.getContentResolver(), FoldSettingsHelper.SYSTEM_FOLDING_MODE_KEY, -1));
                    COUILog.d(FoldSettingsHelper.TAG, "FoldSettings.onChange=" + foldSettingsHelper.getFoldStatus());
                    Iterator it = FoldSettingsHelper.foldObservers.iterator();
                    while (it.hasNext()) {
                        ((FoldSettingsObserver) it.next()).observe(FoldSettingsHelper.INSTANCE.getFoldStatus());
                    }
                }
            };
            Context context = appContext;
            if (context == null) {
                r.r("appContext");
                context = null;
            }
            context.getContentResolver().registerContentObserver(Settings.Global.getUriFor(SYSTEM_FOLDING_MODE_KEY), false, contentObserver);
            observer = contentObserver;
        }
        foldObservers.add(observer2);
    }

    public final void setFoldStatus(int i10) {
        foldStatus = i10;
    }

    public final void unregisterFoldObserver(FoldSettingsObserver observer2) {
        r.e(observer2, "observer");
        ArrayList<FoldSettingsObserver> arrayList = foldObservers;
        arrayList.remove(observer2);
        if (arrayList.isEmpty()) {
            ContentObserver contentObserver = observer;
            if (contentObserver != null) {
                Context context = appContext;
                if (context == null) {
                    r.r("appContext");
                    context = null;
                }
                context.getContentResolver().unregisterContentObserver(contentObserver);
            }
            observer = null;
        }
    }
}
