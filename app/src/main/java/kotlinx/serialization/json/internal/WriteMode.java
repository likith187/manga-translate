package kotlinx.serialization.json.internal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class WriteMode {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ WriteMode[] $VALUES;
    public final char begin;
    public final char end;
    public static final WriteMode OBJ = new WriteMode("OBJ", 0, AbstractJsonLexerKt.BEGIN_OBJ, AbstractJsonLexerKt.END_OBJ);
    public static final WriteMode LIST = new WriteMode("LIST", 1, AbstractJsonLexerKt.BEGIN_LIST, AbstractJsonLexerKt.END_LIST);
    public static final WriteMode MAP = new WriteMode("MAP", 2, AbstractJsonLexerKt.BEGIN_OBJ, AbstractJsonLexerKt.END_OBJ);
    public static final WriteMode POLY_OBJ = new WriteMode("POLY_OBJ", 3, AbstractJsonLexerKt.BEGIN_LIST, AbstractJsonLexerKt.END_LIST);

    private static final /* synthetic */ WriteMode[] $values() {
        return new WriteMode[]{OBJ, LIST, MAP, POLY_OBJ};
    }

    static {
        WriteMode[] writeModeArr$values = $values();
        $VALUES = writeModeArr$values;
        $ENTRIES = r8.b.a(writeModeArr$values);
    }

    private WriteMode(String str, int i10, char c10, char c11) {
        this.begin = c10;
        this.end = c11;
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static WriteMode valueOf(String str) {
        return (WriteMode) Enum.valueOf(WriteMode.class, str);
    }

    public static WriteMode[] values() {
        return (WriteMode[]) $VALUES.clone();
    }
}
