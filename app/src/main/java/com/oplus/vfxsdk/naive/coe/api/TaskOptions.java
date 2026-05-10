package com.oplus.vfxsdk.naive.coe.api;

import androidx.annotation.Keep;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class TaskOptions {
    public final boolean taskBindWithGLContext;
    public final long taskDelay;
    public final ExecutionType taskExecutionType;
    public final boolean taskMainContext;
    public final String taskName;
    public final long taskPeriod;
    public final int taskPriority;
    public final int taskRepeat;

    public TaskOptions() {
        this(null, 0, 0L, 0L, 0, null, false, false, 255, null);
    }

    public final String component1() {
        return this.taskName;
    }

    public final int component2() {
        return this.taskPriority;
    }

    public final long component3() {
        return this.taskDelay;
    }

    public final long component4() {
        return this.taskPeriod;
    }

    public final int component5() {
        return this.taskRepeat;
    }

    public final ExecutionType component6() {
        return this.taskExecutionType;
    }

    public final boolean component7() {
        return this.taskBindWithGLContext;
    }

    public final boolean component8() {
        return this.taskMainContext;
    }

    public final TaskOptions copy(String taskName, int i10, long j10, long j11, int i11, ExecutionType taskExecutionType, boolean z10, boolean z11) {
        r.e(taskName, "taskName");
        r.e(taskExecutionType, "taskExecutionType");
        return new TaskOptions(taskName, i10, j10, j11, i11, taskExecutionType, z10, z11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TaskOptions)) {
            return false;
        }
        TaskOptions taskOptions = (TaskOptions) obj;
        return r.a(this.taskName, taskOptions.taskName) && this.taskPriority == taskOptions.taskPriority && this.taskDelay == taskOptions.taskDelay && this.taskPeriod == taskOptions.taskPeriod && this.taskRepeat == taskOptions.taskRepeat && this.taskExecutionType == taskOptions.taskExecutionType && this.taskBindWithGLContext == taskOptions.taskBindWithGLContext && this.taskMainContext == taskOptions.taskMainContext;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iHashCode = ((((((((((this.taskName.hashCode() * 31) + Integer.hashCode(this.taskPriority)) * 31) + Long.hashCode(this.taskDelay)) * 31) + Long.hashCode(this.taskPeriod)) * 31) + Integer.hashCode(this.taskRepeat)) * 31) + this.taskExecutionType.hashCode()) * 31;
        boolean z10 = this.taskBindWithGLContext;
        ?? r12 = z10;
        if (z10) {
            r12 = 1;
        }
        int i10 = (iHashCode + r12) * 31;
        boolean z11 = this.taskMainContext;
        return i10 + (z11 ? 1 : z11);
    }

    public String toString() {
        return "TaskOptions(taskName=" + this.taskName + ", taskPriority=" + this.taskPriority + ", taskDelay=" + this.taskDelay + ", taskPeriod=" + this.taskPeriod + ", taskRepeat=" + this.taskRepeat + ", taskExecutionType=" + this.taskExecutionType + ", taskBindWithGLContext=" + this.taskBindWithGLContext + ", taskMainContext=" + this.taskMainContext + ")";
    }

    public TaskOptions(String taskName, int i10, long j10, long j11, int i11, ExecutionType taskExecutionType, boolean z10, boolean z11) {
        r.e(taskName, "taskName");
        r.e(taskExecutionType, "taskExecutionType");
        this.taskName = taskName;
        this.taskPriority = i10;
        this.taskDelay = j10;
        this.taskPeriod = j11;
        this.taskRepeat = i11;
        this.taskExecutionType = taskExecutionType;
        this.taskBindWithGLContext = z10;
        this.taskMainContext = z11;
    }

    public /* synthetic */ TaskOptions(String str, int i10, long j10, long j11, int i11, ExecutionType executionType, boolean z10, boolean z11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? "" : str, (i12 & 2) != 0 ? 0 : i10, (i12 & 4) != 0 ? 0L : j10, (i12 & 8) == 0 ? j11 : 0L, (i12 & 16) != 0 ? 0 : i11, (i12 & 32) != 0 ? ExecutionType.Deferred : executionType, (i12 & 64) != 0 ? false : z10, (i12 & 128) == 0 ? z11 : false);
    }
}
