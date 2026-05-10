package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f9814a = Color.alpha(-1728053248);

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DrawerLayout f9815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f9816b;

        a(DrawerLayout drawerLayout, View view) {
            this.f9815a = drawerLayout;
            this.f9816b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9815a.e(this.f9816b, false);
            this.f9815a.setScrimColor(-1728053248);
        }
    }

    public static Animator.AnimatorListener b(DrawerLayout drawerLayout, View view) {
        return new a(drawerLayout, view);
    }

    public static ValueAnimator.AnimatorUpdateListener c(final DrawerLayout drawerLayout) {
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.navigation.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                b.d(drawerLayout, valueAnimator);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        drawerLayout.setScrimColor(u.d.u(-1728053248, x3.a.c(f9814a, 0, valueAnimator.getAnimatedFraction())));
    }
}
