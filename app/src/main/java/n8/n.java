package n8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class n {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ n[] $VALUES;
    public static final n SYNCHRONIZED = new n("SYNCHRONIZED", 0);
    public static final n PUBLICATION = new n("PUBLICATION", 1);
    public static final n NONE = new n("NONE", 2);

    private static final /* synthetic */ n[] $values() {
        return new n[]{SYNCHRONIZED, PUBLICATION, NONE};
    }

    static {
        n[] nVarArr$values = $values();
        $VALUES = nVarArr$values;
        $ENTRIES = r8.b.a(nVarArr$values);
    }

    private n(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) $VALUES.clone();
    }
}
