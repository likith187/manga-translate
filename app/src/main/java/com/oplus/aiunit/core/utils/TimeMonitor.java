package com.oplus.aiunit.core.utils;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class TimeMonitor {
    private volatile long duration;
    private volatile long startTime;

    public TimeMonitor() {
        this(false, 1, null);
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getStartTime() {
        return this.startTime;
    }

    public final void setDuration(long j10) {
        this.duration = j10;
    }

    public final synchronized long start() {
        this.duration = 0L;
        this.startTime = System.currentTimeMillis();
        return this.startTime;
    }

    public final synchronized long stop() {
        long jCurrentTimeMillis;
        jCurrentTimeMillis = System.currentTimeMillis();
        this.duration = jCurrentTimeMillis - this.startTime;
        return jCurrentTimeMillis;
    }

    public final long time() {
        stop();
        return this.duration;
    }

    public TimeMonitor(boolean z10) {
        if (z10) {
            start();
        }
    }

    public /* synthetic */ TimeMonitor(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10);
    }
}
