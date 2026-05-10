package kotlin.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f13130d = new b(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h f13131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final h f13132f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f13133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f13134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f13135c;

    public static final class a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final C0168a f13136j = new C0168a(null);

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final a f13137k = new a(Integer.MAX_VALUE, Integer.MAX_VALUE, "  ", "", "", "");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f13139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f13140c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f13141d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f13142e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f13143f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f13144g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f13145h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final boolean f13146i;

        /* JADX INFO: renamed from: kotlin.text.h$a$a, reason: collision with other inner class name */
        public static final class C0168a {
            public /* synthetic */ C0168a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final a a() {
                return a.f13137k;
            }

            private C0168a() {
            }
        }

        public a(int i10, int i11, String groupSeparator, String byteSeparator, String bytePrefix, String byteSuffix) {
            kotlin.jvm.internal.r.e(groupSeparator, "groupSeparator");
            kotlin.jvm.internal.r.e(byteSeparator, "byteSeparator");
            kotlin.jvm.internal.r.e(bytePrefix, "bytePrefix");
            kotlin.jvm.internal.r.e(byteSuffix, "byteSuffix");
            this.f13138a = i10;
            this.f13139b = i11;
            this.f13140c = groupSeparator;
            this.f13141d = byteSeparator;
            this.f13142e = bytePrefix;
            this.f13143f = byteSuffix;
            this.f13144g = i10 == Integer.MAX_VALUE && i11 == Integer.MAX_VALUE;
            this.f13145h = bytePrefix.length() == 0 && byteSuffix.length() == 0 && byteSeparator.length() <= 1;
            this.f13146i = i.b(groupSeparator) || i.b(byteSeparator) || i.b(bytePrefix) || i.b(byteSuffix);
        }

        public final StringBuilder b(StringBuilder sb, String indent) {
            kotlin.jvm.internal.r.e(sb, "sb");
            kotlin.jvm.internal.r.e(indent, "indent");
            sb.append(indent);
            sb.append("bytesPerLine = ");
            sb.append(this.f13138a);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("bytesPerGroup = ");
            sb.append(this.f13139b);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("groupSeparator = \"");
            sb.append(this.f13140c);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append("\",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("byteSeparator = \"");
            sb.append(this.f13141d);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append("\",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("bytePrefix = \"");
            sb.append(this.f13142e);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append("\",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("byteSuffix = \"");
            sb.append(this.f13143f);
            sb.append("\"");
            return sb;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("BytesHexFormat(");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            StringBuilder sbB = b(sb, "    ");
            sbB.append('\n');
            kotlin.jvm.internal.r.d(sbB, "append(...)");
            sb.append(")");
            String string = sb.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            return string;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return h.f13131e;
        }

        private b() {
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f13147h = new a(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final c f13148i = new c("", "", false, 1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f13149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f13150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f13151c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f13152d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f13153e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f13154f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f13155g;

        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final c a() {
                return c.f13148i;
            }

            private a() {
            }
        }

        public c(String prefix, String suffix, boolean z10, int i10) {
            kotlin.jvm.internal.r.e(prefix, "prefix");
            kotlin.jvm.internal.r.e(suffix, "suffix");
            this.f13149a = prefix;
            this.f13150b = suffix;
            this.f13151c = z10;
            this.f13152d = i10;
            boolean z11 = prefix.length() == 0 && suffix.length() == 0;
            this.f13153e = z11;
            this.f13154f = z11 && i10 == 1;
            this.f13155g = i.b(prefix) || i.b(suffix);
        }

        public final StringBuilder b(StringBuilder sb, String indent) {
            kotlin.jvm.internal.r.e(sb, "sb");
            kotlin.jvm.internal.r.e(indent, "indent");
            sb.append(indent);
            sb.append("prefix = \"");
            sb.append(this.f13149a);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append("\",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("suffix = \"");
            sb.append(this.f13150b);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append("\",");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("removeLeadingZeros = ");
            sb.append(this.f13151c);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(AbstractJsonLexerKt.COMMA);
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append(indent);
            sb.append("minLength = ");
            sb.append(this.f13152d);
            return sb;
        }

        public final boolean c() {
            return this.f13155g;
        }

        public final String d() {
            return this.f13149a;
        }

        public final String e() {
            return this.f13150b;
        }

        public final boolean f() {
            return this.f13153e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("NumberHexFormat(");
            kotlin.jvm.internal.r.d(sb, "append(...)");
            sb.append('\n');
            kotlin.jvm.internal.r.d(sb, "append(...)");
            StringBuilder sbB = b(sb, "    ");
            sbB.append('\n');
            kotlin.jvm.internal.r.d(sbB, "append(...)");
            sb.append(")");
            String string = sb.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            return string;
        }
    }

    static {
        a.C0168a c0168a = a.f13136j;
        a aVarA = c0168a.a();
        c.a aVar = c.f13147h;
        f13131e = new h(false, aVarA, aVar.a());
        f13132f = new h(true, c0168a.a(), aVar.a());
    }

    public h(boolean z10, a bytes, c number) {
        kotlin.jvm.internal.r.e(bytes, "bytes");
        kotlin.jvm.internal.r.e(number, "number");
        this.f13133a = z10;
        this.f13134b = bytes;
        this.f13135c = number;
    }

    public final c b() {
        return this.f13135c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("HexFormat(");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append("    upperCase = ");
        sb.append(this.f13133a);
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append(",");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append("    bytes = BytesHexFormat(");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        StringBuilder sbB = this.f13134b.b(sb, "        ");
        sbB.append('\n');
        kotlin.jvm.internal.r.d(sbB, "append(...)");
        sb.append("    ),");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append("    number = NumberHexFormat(");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        StringBuilder sbB2 = this.f13135c.b(sb, "        ");
        sbB2.append('\n');
        kotlin.jvm.internal.r.d(sbB2, "append(...)");
        sb.append("    )");
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append('\n');
        kotlin.jvm.internal.r.d(sb, "append(...)");
        sb.append(")");
        String string = sb.toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        return string;
    }
}
