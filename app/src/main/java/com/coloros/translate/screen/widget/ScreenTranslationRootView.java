package com.coloros.translate.screen.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
public final class ScreenTranslationRootView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f5827a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenTranslationRootView(Context context, h onEvent) {
        super(context);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(onEvent, "onEvent");
        this.f5827a = onEvent;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f5827a.onConfigurationChanged(configuration);
    }
}
