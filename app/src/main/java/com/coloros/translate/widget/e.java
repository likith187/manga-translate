package com.coloros.translate.widget;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ e[] $VALUES;
    public static final e NORMAL = new e("NORMAL", 0);
    public static final e NEED_DISMISS_DIALOG = new e("NEED_DISMISS_DIALOG", 1);

    private static final /* synthetic */ e[] $values() {
        return new e[]{NORMAL, NEED_DISMISS_DIALOG};
    }

    static {
        e[] eVarArr$values = $values();
        $VALUES = eVarArr$values;
        $ENTRIES = r8.b.a(eVarArr$values);
    }

    private e(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) $VALUES.clone();
    }
}
