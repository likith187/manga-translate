package com.coui.appcompat.animation;

import com.oplus.wrapper.os.Debug;
import com.oplus.wrapper.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public class COUIAnimatorMonitor {
    private static final int CALLERS_DEPTH = 10;

    public COUIAnimatorMonitor(Object obj) {
    }

    public void hookAfterUpdateProperty(long j10) {
    }

    public void hookAnimationEnd() {
    }

    public void hookAnimationStart() {
        try {
            long j10 = Trace.TRACE_TAG_VIEW;
            Trace.traceBegin(j10, "AnimatorStart " + Debug.getCallers(10));
            Trace.traceEnd(j10);
        } catch (Error | Exception unused) {
        }
    }

    public void hookAnimator() {
    }

    public void hookSpringAnimationEnd(int i10) {
        try {
            Trace.asyncTraceEnd(Trace.TRACE_TAG_VIEW, "spring_animator", i10);
        } catch (Error | Exception unused) {
        }
        hookAnimationEnd();
    }

    public void hookSpringAnimationStart(int i10) {
        try {
            Trace.asyncTraceBegin(Trace.TRACE_TAG_VIEW, "spring_animator", i10);
        } catch (Error | Exception unused) {
        }
        hookAnimationStart();
    }
}
