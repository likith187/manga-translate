package com.coloros.translate.utils;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class p0 {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ p0[] $VALUES;
    public static final p0 TRANSLATION = new p0("TRANSLATION", 0);
    public static final p0 SUMMARY = new p0("SUMMARY", 1);
    public static final p0 OTHER = new p0("OTHER", 2);

    private static final /* synthetic */ p0[] $values() {
        return new p0[]{TRANSLATION, SUMMARY, OTHER};
    }

    static {
        p0[] p0VarArr$values = $values();
        $VALUES = p0VarArr$values;
        $ENTRIES = r8.b.a(p0VarArr$values);
    }

    private p0(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static p0 valueOf(String str) {
        return (p0) Enum.valueOf(p0.class, str);
    }

    public static p0[] values() {
        return (p0[]) $VALUES.clone();
    }
}
