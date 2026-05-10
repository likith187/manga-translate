package com.coui.appcompat.searchview;

import android.view.WindowInsets;
import androidx.core.view.a1;
import androidx.core.view.z0;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class ImeInsetsAnimationCallback extends z0.b {
    private OnImeAnimationListener imeListener;

    public interface OnImeAnimationListener {
        void onImeAnimStart();
    }

    public ImeInsetsAnimationCallback() {
        this(0, 1, null);
    }

    public final OnImeAnimationListener getImeListener() {
        return this.imeListener;
    }

    @Override // androidx.core.view.z0.b
    public a1 onProgress(a1 insets, List<z0> runningAnimations) {
        kotlin.jvm.internal.r.e(insets, "insets");
        kotlin.jvm.internal.r.e(runningAnimations, "runningAnimations");
        return insets;
    }

    @Override // androidx.core.view.z0.b
    public z0.a onStart(z0 animation, z0.a bounds) {
        OnImeAnimationListener onImeAnimationListener;
        kotlin.jvm.internal.r.e(animation, "animation");
        kotlin.jvm.internal.r.e(bounds, "bounds");
        if ((animation.c() & WindowInsets.Type.ime()) != 0 && (onImeAnimationListener = this.imeListener) != null) {
            onImeAnimationListener.onImeAnimStart();
        }
        z0.a aVarOnStart = super.onStart(animation, bounds);
        kotlin.jvm.internal.r.d(aVarOnStart, "super.onStart(animation, bounds)");
        return aVarOnStart;
    }

    public final void setImeAnimationListener(OnImeAnimationListener listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        this.imeListener = listener;
    }

    public final void setImeListener(OnImeAnimationListener onImeAnimationListener) {
        this.imeListener = onImeAnimationListener;
    }

    public /* synthetic */ ImeInsetsAnimationCallback(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    public ImeInsetsAnimationCallback(int i10) {
        super(i10);
    }
}
