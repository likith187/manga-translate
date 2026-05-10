package com.coloros.translate.screen.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.OplusActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.Display;
import android.view.OplusWindowManager;
import android.view.WindowManager;
import com.coloros.translate.utils.c0;
import com.oplus.app.OplusAppInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    public static final w INSTANCE = new w();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final n8.j f5731a = n8.k.b(a.INSTANCE);

    static final class a extends kotlin.jvm.internal.s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final OplusWindowManager mo8invoke() {
            return new OplusWindowManager();
        }
    }

    private w() {
    }

    public static final void a(Animator animator) {
        if (animator == null) {
            return;
        }
        c0.f7098a.d("AnimatorUtils", "cancelNoEnd " + animator);
        animator.removeAllListeners();
        if (animator instanceof ValueAnimator) {
            ((ValueAnimator) animator).removeAllUpdateListeners();
        } else if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            kotlin.jvm.internal.r.d(childAnimations, "getChildAnimations(...)");
            Iterator<T> it = childAnimations.iterator();
            while (it.hasNext()) {
                a((Animator) it.next());
            }
        }
        animator.cancel();
    }

    public static final void b(Rect rect) {
        kotlin.jvm.internal.r.e(rect, "rect");
        w wVar = INSTANCE;
        wVar.c().getFocusedWindowFrame(rect);
        List splitAreaRegion = wVar.c().getSplitAreaRegion();
        if (splitAreaRegion.contains(rect) || splitAreaRegion.size() <= 0) {
            return;
        }
        rect.set((Rect) splitAreaRegion.get(0));
    }

    public static final Bitmap d(Context context, Rect rect) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(rect, "rect");
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            kotlin.jvm.internal.r.d(defaultDisplay, "getDefaultDisplay(...)");
            try {
                return k2.a.d(rect, rect.width(), rect.height(), -1, defaultDisplay.getRotation());
            } catch (Exception unused) {
                c0.f7098a.e("Utils", "getScreenshot UnSupportedApiVersionException");
            }
        }
        return null;
    }

    public static final ComponentName e() {
        try {
            return new OplusActivityManager().getTopActivityComponentName();
        } catch (Exception e10) {
            c0.f7098a.e("Utils", "getTopComponentName : exception = " + e10.getMessage());
            return null;
        }
    }

    public static final boolean f() {
        try {
            List allTopAppInfos = new OplusActivityManager().getAllTopAppInfos();
            if (allTopAppInfos != null && !allTopAppInfos.isEmpty()) {
                OplusAppInfo oplusAppInfo = (OplusAppInfo) allTopAppInfos.get(0);
                if ((oplusAppInfo != null ? oplusAppInfo.appInfo : null) != null) {
                    String packageName = oplusAppInfo.appInfo.packageName;
                    kotlin.jvm.internal.r.d(packageName, "packageName");
                    if (!TextUtils.isEmpty(packageName) && oplusAppInfo.windowingMode == 100) {
                        c0.f7098a.d("Utils", "this is zoom window");
                        return true;
                    }
                }
            }
        } catch (RemoteException e10) {
            c0.a aVar = c0.f7098a;
            String message = e10.getMessage();
            if (message == null) {
                message = "";
            }
            aVar.e("Utils", message);
        }
        return false;
    }

    public final OplusWindowManager c() {
        return (OplusWindowManager) f5731a.getValue();
    }
}
