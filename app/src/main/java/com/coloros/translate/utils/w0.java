package com.coloros.translate.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class w0 {
    public static final w0 INSTANCE = new w0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ScheduledExecutorService f7162a = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors() + 1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Handler f7163b = new Handler(Looper.getMainLooper());

    private w0() {
    }

    public final Handler a() {
        return f7163b;
    }

    public final ScheduledExecutorService b() {
        return f7162a;
    }
}
