package kotlin.io;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class p {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ p[] $VALUES;
    public static final p SKIP = new p("SKIP", 0);
    public static final p TERMINATE = new p("TERMINATE", 1);

    private static final /* synthetic */ p[] $values() {
        return new p[]{SKIP, TERMINATE};
    }

    static {
        p[] pVarArr$values = $values();
        $VALUES = pVarArr$values;
        $ENTRIES = r8.b.a(pVarArr$values);
    }

    private p(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) $VALUES.clone();
    }
}
