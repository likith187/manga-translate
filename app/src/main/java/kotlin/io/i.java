package kotlin.io;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class i {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ i[] $VALUES;
    public static final i TOP_DOWN = new i("TOP_DOWN", 0);
    public static final i BOTTOM_UP = new i("BOTTOM_UP", 1);

    private static final /* synthetic */ i[] $values() {
        return new i[]{TOP_DOWN, BOTTOM_UP};
    }

    static {
        i[] iVarArr$values = $values();
        $VALUES = iVarArr$values;
        $ENTRIES = r8.b.a(iVarArr$values);
    }

    private i(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) $VALUES.clone();
    }
}
