package com.coloros.translate.utils;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.coloros.translate.TranslationApplication;

/* JADX INFO: loaded from: classes.dex */
public final class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f7104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static float f7105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f7106c;
    public static final c1 INSTANCE = new c1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7107d = ViewConfiguration.get(TranslationApplication.f4754b.a()).getScaledTouchSlop();

    private c1() {
    }

    public static final boolean a(MotionEvent motionEvent) {
        if (motionEvent != null) {
            int action = motionEvent.getAction();
            if (action == 0) {
                f7104a = motionEvent.getRawX();
                f7105b = motionEvent.getRawY();
                f7106c = false;
            } else if (action == 1) {
                f7104a = 0.0f;
                f7105b = 0.0f;
                if (!f7106c) {
                    return true;
                }
                f7106c = false;
            } else if (action == 2) {
                f7106c = b(motionEvent);
            }
        }
        return f7106c;
    }

    private static final boolean b(MotionEvent motionEvent) {
        return Math.abs(f7104a - motionEvent.getRawX()) >= ((float) f7107d) || Math.abs(f7105b - motionEvent.getRawY()) >= ((float) f7107d);
    }
}
