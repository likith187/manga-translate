package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.a1;
import androidx.core.view.z0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class d extends z0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f9076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f9077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f9079d;

    public d(View view) {
        super(0);
        this.f9079d = new int[2];
        this.f9076a = view;
    }

    @Override // androidx.core.view.z0.b
    public void onEnd(z0 z0Var) {
        this.f9076a.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.z0.b
    public void onPrepare(z0 z0Var) {
        this.f9076a.getLocationOnScreen(this.f9079d);
        this.f9077b = this.f9079d[1];
    }

    @Override // androidx.core.view.z0.b
    public a1 onProgress(a1 a1Var, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((z0) it.next()).c() & a1.m.a()) != 0) {
                this.f9076a.setTranslationY(x3.a.c(this.f9078c, 0, r0.b()));
                break;
            }
        }
        return a1Var;
    }

    @Override // androidx.core.view.z0.b
    public z0.a onStart(z0 z0Var, z0.a aVar) {
        this.f9076a.getLocationOnScreen(this.f9079d);
        int i10 = this.f9077b - this.f9079d[1];
        this.f9078c = i10;
        this.f9076a.setTranslationY(i10);
        return aVar;
    }
}
