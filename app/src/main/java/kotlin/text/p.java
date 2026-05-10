package kotlin.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class p implements f {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ p[] $VALUES;
    public static final p CANON_EQ;
    public static final p COMMENTS;
    public static final p DOT_MATCHES_ALL;
    public static final p IGNORE_CASE;
    public static final p LITERAL;
    public static final p MULTILINE;
    public static final p UNIX_LINES;
    private final int mask;
    private final int value;

    private static final /* synthetic */ p[] $values() {
        return new p[]{IGNORE_CASE, MULTILINE, LITERAL, UNIX_LINES, COMMENTS, DOT_MATCHES_ALL, CANON_EQ};
    }

    static {
        int i10 = 2;
        IGNORE_CASE = new p("IGNORE_CASE", 0, i10, 0, 2, null);
        int i11 = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i12 = 0;
        MULTILINE = new p("MULTILINE", 1, 8, i12, i11, defaultConstructorMarker);
        int i13 = 2;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        int i14 = 0;
        LITERAL = new p("LITERAL", i10, 16, i14, i13, defaultConstructorMarker2);
        UNIX_LINES = new p("UNIX_LINES", 3, 1, i12, i11, defaultConstructorMarker);
        COMMENTS = new p("COMMENTS", 4, 4, i14, i13, defaultConstructorMarker2);
        DOT_MATCHES_ALL = new p("DOT_MATCHES_ALL", 5, 32, i12, i11, defaultConstructorMarker);
        CANON_EQ = new p("CANON_EQ", 6, 128, i14, i13, defaultConstructorMarker2);
        p[] pVarArr$values = $values();
        $VALUES = pVarArr$values;
        $ENTRIES = r8.b.a(pVarArr$values);
    }

    private p(String str, int i10, int i11, int i12) {
        this.value = i11;
        this.mask = i12;
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

    @Override // kotlin.text.f
    public int getMask() {
        return this.mask;
    }

    @Override // kotlin.text.f
    public int getValue() {
        return this.value;
    }

    /* synthetic */ p(String str, int i10, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, i11, (i13 & 2) != 0 ? i11 : i12);
    }
}
