package com.google.android.material.search;

import android.animation.Animator;
import android.view.View;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class c {

    /* JADX INFO: renamed from: d */
    private Animator f9994d;

    /* JADX INFO: renamed from: e */
    private Animator f9995e;

    /* JADX INFO: renamed from: a */
    private final Set f9991a = new LinkedHashSet();

    /* JADX INFO: renamed from: b */
    private final Set f9992b = new LinkedHashSet();

    /* JADX INFO: renamed from: c */
    private final Set f9993c = new LinkedHashSet();

    /* JADX INFO: renamed from: f */
    private boolean f9996f = true;

    /* JADX INFO: renamed from: g */
    private Animator f9997g = null;

    c() {
    }

    void a(boolean z10) {
        this.f9996f = z10;
    }

    void b(SearchBar searchBar) {
        Animator animator = this.f9994d;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.f9995e;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView != null) {
            centerView.setAlpha(0.0f);
        }
    }
}
