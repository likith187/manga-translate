package com.coloros.translate.screen.widget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class c2 {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ c2[] $VALUES;
    public static final c2 NONE = new c2("NONE", 0);
    public static final c2 ZONE = new c2("ZONE", 1);
    public static final c2 FULL = new c2("FULL", 2);

    private static final /* synthetic */ c2[] $values() {
        return new c2[]{NONE, ZONE, FULL};
    }

    static {
        c2[] c2VarArr$values = $values();
        $VALUES = c2VarArr$values;
        $ENTRIES = r8.b.a(c2VarArr$values);
    }

    private c2(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static c2 valueOf(String str) {
        return (c2) Enum.valueOf(c2.class, str);
    }

    public static c2[] values() {
        return (c2[]) $VALUES.clone();
    }
}
