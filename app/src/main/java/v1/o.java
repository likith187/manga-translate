package v1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class o {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ o[] $VALUES;
    public static final o PLUS = new o("PLUS", 0);
    public static final o MINUS = new o("MINUS", 1);
    public static final o STAR = new o("STAR", 2);
    public static final o SLASH = new o("SLASH", 3);
    public static final o MODULO = new o("MODULO", 4);
    public static final o EXPONENT = new o("EXPONENT", 5);
    public static final o SQUARE_ROOT = new o("SQUARE_ROOT", 6);
    public static final o ASSIGN = new o("ASSIGN", 7);
    public static final o EQUAL_EQUAL = new o("EQUAL_EQUAL", 8);
    public static final o NOT_EQUAL = new o("NOT_EQUAL", 9);
    public static final o GREATER = new o("GREATER", 10);
    public static final o GREATER_EQUAL = new o("GREATER_EQUAL", 11);
    public static final o LESS = new o("LESS", 12);
    public static final o LESS_EQUAL = new o("LESS_EQUAL", 13);
    public static final o BAR_BAR = new o("BAR_BAR", 14);
    public static final o AMP_AMP = new o("AMP_AMP", 15);
    public static final o COMMA = new o("COMMA", 16);
    public static final o LEFT_PAREN = new o("LEFT_PAREN", 17);
    public static final o RIGHT_PAREN = new o("RIGHT_PAREN", 18);
    public static final o NUMBER = new o("NUMBER", 19);
    public static final o IDENTIFIER = new o("IDENTIFIER", 20);
    public static final o EOF = new o("EOF", 21);

    private static final /* synthetic */ o[] $values() {
        return new o[]{PLUS, MINUS, STAR, SLASH, MODULO, EXPONENT, SQUARE_ROOT, ASSIGN, EQUAL_EQUAL, NOT_EQUAL, GREATER, GREATER_EQUAL, LESS, LESS_EQUAL, BAR_BAR, AMP_AMP, COMMA, LEFT_PAREN, RIGHT_PAREN, NUMBER, IDENTIFIER, EOF};
    }

    static {
        o[] oVarArr$values = $values();
        $VALUES = oVarArr$values;
        $ENTRIES = r8.b.a(oVarArr$values);
    }

    private o(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) $VALUES.clone();
    }
}
