package com.oplus.vfxsdk.naive.coe.api;

import androidx.annotation.Keep;
import r8.a;
import r8.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class ExecutionType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ExecutionType[] $VALUES;
    public static final ExecutionType Deferred = new ExecutionType("Deferred", 0);
    public static final ExecutionType Immediate = new ExecutionType("Immediate", 1);

    private static final /* synthetic */ ExecutionType[] $values() {
        return new ExecutionType[]{Deferred, Immediate};
    }

    static {
        ExecutionType[] executionTypeArr$values = $values();
        $VALUES = executionTypeArr$values;
        $ENTRIES = b.a(executionTypeArr$values);
    }

    private ExecutionType(String str, int i10) {
    }

    public static a getEntries() {
        return $ENTRIES;
    }

    public static ExecutionType valueOf(String str) {
        return (ExecutionType) Enum.valueOf(ExecutionType.class, str);
    }

    public static ExecutionType[] values() {
        return (ExecutionType[]) $VALUES.clone();
    }
}
