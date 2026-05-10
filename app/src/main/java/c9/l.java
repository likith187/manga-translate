package c9;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends Enum {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ l[] $VALUES;
    public static final l PUBLIC = new l("PUBLIC", 0);
    public static final l PROTECTED = new l("PROTECTED", 1);
    public static final l INTERNAL = new l("INTERNAL", 2);
    public static final l PRIVATE = new l("PRIVATE", 3);

    private static final /* synthetic */ l[] $values() {
        return new l[]{PUBLIC, PROTECTED, INTERNAL, PRIVATE};
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
