package kotlin.coroutines.intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Enum {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ a[] $VALUES;
    public static final a COROUTINE_SUSPENDED = new a("COROUTINE_SUSPENDED", 0);
    public static final a UNDECIDED = new a("UNDECIDED", 1);
    public static final a RESUMED = new a("RESUMED", 2);

    private static final /* synthetic */ a[] $values() {
        return new a[]{COROUTINE_SUSPENDED, UNDECIDED, RESUMED};
    }

    static {
        a[] aVarArr$values = $values();
        $VALUES = aVarArr$values;
        $ENTRIES = r8.b.a(aVarArr$values);
    }

    private a(String str, int i10) {
        super(str, i10);
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) $VALUES.clone();
    }
}
