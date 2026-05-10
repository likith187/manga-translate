package com.coloros.translate;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class q {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ q[] $VALUES;
    public static final q PHOTO_TRANSLATE = new q("PHOTO_TRANSLATE", 0);
    public static final q SCREEN_TRANSLATE = new q("SCREEN_TRANSLATE", 1);
    public static final q BRIDGE_TRANSLATION = new q("BRIDGE_TRANSLATION", 2);

    private static final /* synthetic */ q[] $values() {
        return new q[]{PHOTO_TRANSLATE, SCREEN_TRANSLATE, BRIDGE_TRANSLATION};
    }

    static {
        q[] qVarArr$values = $values();
        $VALUES = qVarArr$values;
        $ENTRIES = r8.b.a(qVarArr$values);
    }

    private q(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static q valueOf(String str) {
        return (q) Enum.valueOf(q.class, str);
    }

    public static q[] values() {
        return (q[]) $VALUES.clone();
    }
}
