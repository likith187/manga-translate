package androidx.window.layout;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class WindowMetricsCalculator$Companion$overrideDecorator$1 extends o implements l {
    WindowMetricsCalculator$Companion$overrideDecorator$1(Object obj) {
        super(1, obj, WindowMetricsCalculatorDecorator.class, "decorate", "decorate(Landroidx/window/layout/WindowMetricsCalculator;)Landroidx/window/layout/WindowMetricsCalculator;", 0);
    }

    @Override // w8.l
    public final WindowMetricsCalculator invoke(WindowMetricsCalculator p02) {
        r.e(p02, "p0");
        return ((WindowMetricsCalculatorDecorator) this.receiver).a(p02);
    }
}
