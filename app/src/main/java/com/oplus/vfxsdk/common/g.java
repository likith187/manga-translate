package com.oplus.vfxsdk.common;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class g {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ g[] $VALUES;
    public static final g Animator = new g("Animator", 0);
    public static final g Slot = new g("Slot", 1);

    private static final /* synthetic */ g[] $values() {
        return new g[]{Animator, Slot};
    }

    static {
        g[] gVarArr$values = $values();
        $VALUES = gVarArr$values;
        $ENTRIES = r8.b.a(gVarArr$values);
    }

    private g(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) $VALUES.clone();
    }
}
