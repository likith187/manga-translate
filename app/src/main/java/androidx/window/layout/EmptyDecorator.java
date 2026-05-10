package androidx.window.layout;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
final class EmptyDecorator implements WindowInfoTrackerDecorator {
    public static final EmptyDecorator INSTANCE = new EmptyDecorator();

    private EmptyDecorator() {
    }

    @Override // androidx.window.layout.WindowInfoTrackerDecorator
    public WindowInfoTracker a(WindowInfoTracker tracker) {
        r.e(tracker, "tracker");
        return tracker;
    }
}
