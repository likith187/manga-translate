package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;
import x3.h;

/* JADX INFO: loaded from: classes.dex */
interface f {
    void a();

    int b();

    void c();

    h d();

    AnimatorSet e();

    List f();

    void g(ExtendedFloatingActionButton.l lVar);

    boolean h();

    void i(h hVar);

    void onAnimationEnd();

    void onAnimationStart(Animator animator);
}
