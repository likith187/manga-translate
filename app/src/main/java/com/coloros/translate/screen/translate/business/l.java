package com.coloros.translate.screen.translate.business;

/* JADX INFO: loaded from: classes.dex */
public final class l extends Enum {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ l[] $VALUES;
    public static final l NONE = new l("NONE", 0);
    public static final l ZONE = new l("ZONE", 1);
    public static final l FULL = new l("FULL", 2);

    private static final /* synthetic */ l[] $values() {
        return new l[]{NONE, ZONE, FULL};
    }

    static {
        l[] lVarArr$values = $values();
        $VALUES = lVarArr$values;
        $ENTRIES = r8.b.a(lVarArr$values);
    }

    private l(String str, int i10) {
        super(str, i10);
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) $VALUES.clone();
    }
}
