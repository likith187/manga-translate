package l2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ b[] $VALUES;
    public static final b PHOTO_TRANSLATE = new b("PHOTO_TRANSLATE", 0);
    public static final b SCREEN_TRANSLATE = new b("SCREEN_TRANSLATE", 1);

    private static final /* synthetic */ b[] $values() {
        return new b[]{PHOTO_TRANSLATE, SCREEN_TRANSLATE};
    }

    static {
        b[] bVarArr$values = $values();
        $VALUES = bVarArr$values;
        $ENTRIES = r8.b.a(bVarArr$values);
    }

    private b(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) $VALUES.clone();
    }
}
