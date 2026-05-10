package com.coloros.translate.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class h1 extends Handler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f7123b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7124c = "WeakHandler";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference f7125a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public h1(Object obj) {
        this.f7125a = new WeakReference(obj);
    }

    protected abstract void a(Message message, Object obj);

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        kotlin.jvm.internal.r.e(msg, "msg");
        Object obj = this.f7125a.get();
        if (obj == null) {
            c0.f7098a.q(f7124c, "ref.get is null.");
        } else {
            a(msg, obj);
            super.handleMessage(msg);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(Object obj, Looper looper) {
        super(looper);
        kotlin.jvm.internal.r.e(looper, "looper");
        this.f7125a = new WeakReference(obj);
    }
}
