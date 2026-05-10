package kotlinx.coroutines.channels;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ a[] $VALUES;
    public static final a SUSPEND = new a("SUSPEND", 0);
    public static final a DROP_OLDEST = new a("DROP_OLDEST", 1);
    public static final a DROP_LATEST = new a("DROP_LATEST", 2);

    private static final /* synthetic */ a[] $values() {
        return new a[]{SUSPEND, DROP_OLDEST, DROP_LATEST};
    }

    static {
        a[] aVarArr$values = $values();
        $VALUES = aVarArr$values;
        $ENTRIES = r8.b.a(aVarArr$values);
    }

    private a(String str, int i10) {
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
