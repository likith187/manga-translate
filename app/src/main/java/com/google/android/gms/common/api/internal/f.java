package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f7639a;

    public f(Activity activity) {
        com.google.android.gms.common.internal.k.h(activity, "Activity must not be null");
        this.f7639a = activity;
    }

    public final Activity a() {
        return (Activity) this.f7639a;
    }

    public final FragmentActivity b() {
        return (FragmentActivity) this.f7639a;
    }

    public final boolean c() {
        return this.f7639a instanceof Activity;
    }

    public final boolean d() {
        return this.f7639a instanceof FragmentActivity;
    }
}
