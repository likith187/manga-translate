package androidx.core.app;

import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f1980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Configuration f1981b;

    public o(boolean z10) {
        this.f1980a = z10;
    }

    public final boolean a() {
        return this.f1980a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(boolean z10, Configuration newConfig) {
        this(z10);
        kotlin.jvm.internal.r.e(newConfig, "newConfig");
        this.f1981b = newConfig;
    }
}
