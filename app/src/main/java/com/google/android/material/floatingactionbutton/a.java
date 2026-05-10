package com.google.android.material.floatingactionbutton;

import android.animation.Animator;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animator f9609a;

    a() {
    }

    public void a() {
        Animator animator = this.f9609a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f9609a = null;
    }

    public void c(Animator animator) {
        a();
        this.f9609a = animator;
    }
}
