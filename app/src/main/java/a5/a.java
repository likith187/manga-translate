package a5;

import com.google.gson.internal.f;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Reader f72a;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f80l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f81m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f82n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f83o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String[] f85q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int[] f86r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f73b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final char[] f74c = new char[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f75f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f76h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f77i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f78j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f79k = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f84p = 1;

    /* JADX INFO: renamed from: a5.a$a, reason: collision with other inner class name */
    class C0002a extends f {
        C0002a() {
        }

        @Override // com.google.gson.internal.f
        public void a(a aVar) throws IOException {
            if (aVar instanceof w4.f) {
                ((w4.f) aVar).c1();
                return;
            }
            int iX = aVar.f79k;
            if (iX == 0) {
                iX = aVar.x();
            }
            if (iX == 13) {
                aVar.f79k = 9;
                return;
            }
            if (iX == 12) {
                aVar.f79k = 8;
                return;
            }
            if (iX == 14) {
                aVar.f79k = 10;
                return;
            }
            throw new IllegalStateException("Expected a name but was " + aVar.L0() + aVar.q0());
        }
    }

    static {
        f.f10731a = new C0002a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f83o = iArr;
        iArr[0] = 6;
        this.f85q = new String[32];
        this.f86r = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f72a = reader;
    }

    private boolean G(int i10) throws IOException {
        int i11;
        int i12;
        char[] cArr = this.f74c;
        int i13 = this.f78j;
        int i14 = this.f75f;
        this.f78j = i13 - i14;
        int i15 = this.f76h;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f76h = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f76h = 0;
        }
        this.f75f = 0;
        do {
            Reader reader = this.f72a;
            int i17 = this.f76h;
            int i18 = reader.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f76h + i18;
            this.f76h = i11;
            if (this.f77i == 0 && (i12 = this.f78j) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f75f++;
                this.f78j = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    private int G0(boolean z10) throws IOException {
        char[] cArr = this.f74c;
        int i10 = this.f75f;
        int i11 = this.f76h;
        while (true) {
            if (i10 == i11) {
                this.f75f = i10;
                if (!G(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + q0());
                }
                i10 = this.f75f;
                i11 = this.f76h;
            }
            int i12 = i10 + 1;
            char c10 = cArr[i10];
            if (c10 == '\n') {
                this.f77i++;
                this.f78j = i12;
            } else if (c10 != ' ' && c10 != '\r' && c10 != '\t') {
                if (c10 == '/') {
                    this.f75f = i12;
                    if (i12 == i11) {
                        this.f75f = i10;
                        boolean zG = G(2);
                        this.f75f++;
                        if (!zG) {
                            return c10;
                        }
                    }
                    k();
                    int i13 = this.f75f;
                    char c11 = cArr[i13];
                    if (c11 == '*') {
                        this.f75f = i13 + 1;
                        if (!S0("*/")) {
                            throw W0("Unterminated comment");
                        }
                        i10 = this.f75f + 2;
                        i11 = this.f76h;
                    } else {
                        if (c11 != '/') {
                            return c10;
                        }
                        this.f75f = i13 + 1;
                        T0();
                        i10 = this.f75f;
                        i11 = this.f76h;
                    }
                } else {
                    if (c10 != '#') {
                        this.f75f = i12;
                        return c10;
                    }
                    this.f75f = i12;
                    k();
                    T0();
                    i10 = this.f75f;
                    i11 = this.f76h;
                }
            }
            i10 = i12;
        }
    }

    private String I(boolean z10) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i10 = 0;
        while (true) {
            int i11 = this.f84p;
            if (i10 >= i11) {
                return sb.toString();
            }
            int i12 = this.f83o[i10];
            if (i12 == 1 || i12 == 2) {
                int i13 = this.f86r[i10];
                if (z10 && i13 > 0 && i10 == i11 - 1) {
                    i13--;
                }
                sb.append(AbstractJsonLexerKt.BEGIN_LIST);
                sb.append(i13);
                sb.append(AbstractJsonLexerKt.END_LIST);
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb.append('.');
                String str = this.f85q[i10];
                if (str != null) {
                    sb.append(str);
                }
            }
            i10++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r9.f75f = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String I0(char r10) throws java.io.IOException {
        /*
            r9 = this;
            char[] r0 = r9.f74c
            r1 = 0
        L3:
            int r2 = r9.f75f
            int r3 = r9.f76h
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5a
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.f75f = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r9 = new java.lang.String
            r9.<init>(r0, r3, r7)
            return r9
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r9 = r1.toString()
            return r9
        L28:
            r8 = 92
            if (r2 != r8) goto L4d
            r9.f75f = r7
            int r7 = r7 - r3
            int r2 = r7 + (-1)
            if (r1 != 0) goto L3e
            int r7 = r7 * 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r4 = java.lang.Math.max(r7, r5)
            r1.<init>(r4)
        L3e:
            r1.append(r0, r3, r2)
            char r2 = r9.P0()
            r1.append(r2)
            int r2 = r9.f75f
            int r3 = r9.f76h
            goto L7
        L4d:
            r5 = 10
            if (r2 != r5) goto L58
            int r2 = r9.f77i
            int r2 = r2 + r6
            r9.f77i = r2
            r9.f78j = r7
        L58:
            r2 = r7
            goto L9
        L5a:
            if (r1 != 0) goto L6a
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6a:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.f75f = r2
            boolean r2 = r9.G(r6)
            if (r2 == 0) goto L78
            goto L3
        L78:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r9 = r9.W0(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.a.I0(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        k();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String K0() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f75f
            int r4 = r3 + r2
            int r5 = r6.f76h
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f74c
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.k()
            goto L5c
        L4e:
            char[] r3 = r6.f74c
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.G(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r1 = r2
            goto L7e
        L5e:
            if (r0 != 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L6b:
            char[] r3 = r6.f74c
            int r4 = r6.f75f
            r0.append(r3, r4, r2)
            int r3 = r6.f75f
            int r3 = r3 + r2
            r6.f75f = r3
            r2 = 1
            boolean r2 = r6.G(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f74c
            int r3 = r6.f75f
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.f74c
            int r3 = r6.f75f
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.f75f
            int r2 = r2 + r1
            r6.f75f = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.a.K0():java.lang.String");
    }

    private int M0() {
        String str;
        String str2;
        int i10;
        char c10 = this.f74c[this.f75f];
        if (c10 == 't' || c10 == 'T') {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (c10 == 'f' || c10 == 'F') {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (c10 != 'n' && c10 != 'N') {
                return 0;
            }
            str = AbstractJsonLexerKt.NULL;
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        for (int i11 = 1; i11 < length; i11++) {
            if (this.f75f + i11 >= this.f76h && !G(i11 + 1)) {
                return 0;
            }
            char c11 = this.f74c[this.f75f + i11];
            if (c11 != str.charAt(i11) && c11 != str2.charAt(i11)) {
                return 0;
            }
        }
        if ((this.f75f + length < this.f76h || G(length + 1)) && b0(this.f74c[this.f75f + length])) {
            return 0;
        }
        this.f75f += length;
        this.f79k = i10;
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
    
        if (b0(r14) != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
    
        if (r9 != 2) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
    
        if (r10 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009d, code lost:
    
        if (r13 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
    
        if (r11 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a5, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a7, code lost:
    
        if (r13 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00aa, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ab, code lost:
    
        r18.f80l = r11;
        r18.f75f += r8;
        r18.f79k = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b6, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b7, code lost:
    
        if (r9 == 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ba, code lost:
    
        if (r9 == 4) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00bd, code lost:
    
        if (r9 != 7) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c0, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c2, code lost:
    
        r18.f81m = r8;
        r18.f79k = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c8, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c9, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int N0() {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.a.N0():int");
    }

    private void O0(int i10) {
        int i11 = this.f84p;
        int[] iArr = this.f83o;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f83o = Arrays.copyOf(iArr, i12);
            this.f86r = Arrays.copyOf(this.f86r, i12);
            this.f85q = (String[]) Arrays.copyOf(this.f85q, i12);
        }
        int[] iArr2 = this.f83o;
        int i13 = this.f84p;
        this.f84p = i13 + 1;
        iArr2[i13] = i10;
    }

    private char P0() throws IOException {
        int i10;
        if (this.f75f == this.f76h && !G(1)) {
            throw W0("Unterminated escape sequence");
        }
        char[] cArr = this.f74c;
        int i11 = this.f75f;
        int i12 = i11 + 1;
        this.f75f = i12;
        char c10 = cArr[i11];
        if (c10 == '\n') {
            this.f77i++;
            this.f78j = i12;
        } else if (c10 != '\"' && c10 != '\'' && c10 != '/' && c10 != '\\') {
            if (c10 == 'b') {
                return '\b';
            }
            if (c10 == 'f') {
                return '\f';
            }
            if (c10 == 'n') {
                return '\n';
            }
            if (c10 == 'r') {
                return '\r';
            }
            if (c10 == 't') {
                return '\t';
            }
            if (c10 != 'u') {
                throw W0("Invalid escape sequence");
            }
            if (i11 + 5 > this.f76h && !G(4)) {
                throw W0("Unterminated escape sequence");
            }
            int i13 = this.f75f;
            int i14 = i13 + 4;
            char c11 = 0;
            while (i13 < i14) {
                char c12 = this.f74c[i13];
                char c13 = (char) (c11 << 4);
                if (c12 >= '0' && c12 <= '9') {
                    i10 = c12 - '0';
                } else if (c12 >= 'a' && c12 <= 'f') {
                    i10 = c12 - 'W';
                } else {
                    if (c12 < 'A' || c12 > 'F') {
                        throw new NumberFormatException("\\u" + new String(this.f74c, this.f75f, 4));
                    }
                    i10 = c12 - '7';
                }
                c11 = (char) (c13 + i10);
                i13++;
            }
            this.f75f += 4;
            return c11;
        }
        return c10;
    }

    private void R0(char c10) throws IOException {
        char[] cArr = this.f74c;
        do {
            int i10 = this.f75f;
            int i11 = this.f76h;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c11 = cArr[i10];
                if (c11 == c10) {
                    this.f75f = i12;
                    return;
                }
                if (c11 == '\\') {
                    this.f75f = i12;
                    P0();
                    i10 = this.f75f;
                    i11 = this.f76h;
                } else {
                    if (c11 == '\n') {
                        this.f77i++;
                        this.f78j = i12;
                    }
                    i10 = i12;
                }
            }
            this.f75f = i10;
        } while (G(1));
        throw W0("Unterminated string");
    }

    private boolean S0(String str) {
        int length = str.length();
        while (true) {
            if (this.f75f + length > this.f76h && !G(length)) {
                return false;
            }
            char[] cArr = this.f74c;
            int i10 = this.f75f;
            if (cArr[i10] != '\n') {
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.f74c[this.f75f + i11] != str.charAt(i11)) {
                        break;
                    }
                }
                return true;
            }
            this.f77i++;
            this.f78j = i10 + 1;
            this.f75f++;
        }
    }

    private void T0() {
        char c10;
        do {
            if (this.f75f >= this.f76h && !G(1)) {
                return;
            }
            char[] cArr = this.f74c;
            int i10 = this.f75f;
            int i11 = i10 + 1;
            this.f75f = i11;
            c10 = cArr[i10];
            if (c10 == '\n') {
                this.f77i++;
                this.f78j = i11;
                return;
            }
        } while (c10 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        k();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void U0() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f75f
            int r2 = r1 + r0
            int r3 = r4.f76h
            if (r2 >= r3) goto L51
            char[] r2 = r4.f74c
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.k()
        L4b:
            int r1 = r4.f75f
            int r1 = r1 + r0
            r4.f75f = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f75f = r1
            r0 = 1
            boolean r0 = r4.G(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a5.a.U0():void");
    }

    private IOException W0(String str) throws d {
        throw new d(str + q0());
    }

    private boolean b0(char c10) throws IOException {
        if (c10 == '\t' || c10 == '\n' || c10 == '\f' || c10 == '\r' || c10 == ' ') {
            return false;
        }
        if (c10 != '#') {
            if (c10 == ',') {
                return false;
            }
            if (c10 != '/' && c10 != '=') {
                if (c10 == '{' || c10 == '}' || c10 == ':') {
                    return false;
                }
                if (c10 != ';') {
                    switch (c10) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        k();
        return false;
    }

    private void k() throws IOException {
        if (!this.f73b) {
            throw W0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void v() throws IOException {
        G0(true);
        int i10 = this.f75f;
        this.f75f = i10 - 1;
        if (i10 + 4 <= this.f76h || G(5)) {
            int i11 = this.f75f;
            char[] cArr = this.f74c;
            if (cArr[i11] == ')' && cArr[i11 + 1] == ']' && cArr[i11 + 2] == '}' && cArr[i11 + 3] == '\'' && cArr[i11 + 4] == '\n') {
                this.f75f = i11 + 5;
            }
        }
    }

    public void B() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + L0() + q0());
        }
        int i10 = this.f84p;
        this.f84p = i10 - 1;
        int[] iArr = this.f86r;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f79k = 0;
    }

    public void D() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + L0() + q0());
        }
        int i10 = this.f84p;
        int i11 = i10 - 1;
        this.f84p = i11;
        this.f85q[i11] = null;
        int[] iArr = this.f86r;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f79k = 0;
    }

    public int D0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 15) {
            long j10 = this.f80l;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f79k = 0;
                int[] iArr = this.f86r;
                int i11 = this.f84p - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new NumberFormatException("Expected an int but was " + this.f80l + q0());
        }
        if (iX == 16) {
            this.f82n = new String(this.f74c, this.f75f, this.f81m);
            this.f75f += this.f81m;
        } else {
            if (iX != 8 && iX != 9 && iX != 10) {
                throw new IllegalStateException("Expected an int but was " + L0() + q0());
            }
            if (iX == 10) {
                this.f82n = K0();
            } else {
                this.f82n = I0(iX == 8 ? '\'' : AbstractJsonLexerKt.STRING);
            }
            try {
                int i12 = Integer.parseInt(this.f82n);
                this.f79k = 0;
                int[] iArr2 = this.f86r;
                int i13 = this.f84p - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.f79k = 11;
        double d10 = Double.parseDouble(this.f82n);
        int i14 = (int) d10;
        if (i14 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f82n + q0());
        }
        this.f82n = null;
        this.f79k = 0;
        int[] iArr3 = this.f86r;
        int i15 = this.f84p - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long E0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 15) {
            this.f79k = 0;
            int[] iArr = this.f86r;
            int i10 = this.f84p - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f80l;
        }
        if (iX == 16) {
            this.f82n = new String(this.f74c, this.f75f, this.f81m);
            this.f75f += this.f81m;
        } else {
            if (iX != 8 && iX != 9 && iX != 10) {
                throw new IllegalStateException("Expected a long but was " + L0() + q0());
            }
            if (iX == 10) {
                this.f82n = K0();
            } else {
                this.f82n = I0(iX == 8 ? '\'' : AbstractJsonLexerKt.STRING);
            }
            try {
                long j10 = Long.parseLong(this.f82n);
                this.f79k = 0;
                int[] iArr2 = this.f86r;
                int i11 = this.f84p - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f79k = 11;
        double d10 = Double.parseDouble(this.f82n);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f82n + q0());
        }
        this.f82n = null;
        this.f79k = 0;
        int[] iArr3 = this.f86r;
        int i12 = this.f84p - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j11;
    }

    public String F0() throws IOException {
        String strI0;
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 14) {
            strI0 = K0();
        } else if (iX == 12) {
            strI0 = I0('\'');
        } else {
            if (iX != 13) {
                throw new IllegalStateException("Expected a name but was " + L0() + q0());
            }
            strI0 = I0(AbstractJsonLexerKt.STRING);
        }
        this.f79k = 0;
        this.f85q[this.f84p - 1] = strI0;
        return strI0;
    }

    public void H0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 7) {
            this.f79k = 0;
            int[] iArr = this.f86r;
            int i10 = this.f84p - 1;
            iArr[i10] = iArr[i10] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + L0() + q0());
    }

    public String J0() throws IOException {
        String str;
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 10) {
            str = K0();
        } else if (iX == 8) {
            str = I0('\'');
        } else if (iX == 9) {
            str = I0(AbstractJsonLexerKt.STRING);
        } else if (iX == 11) {
            str = this.f82n;
            this.f82n = null;
        } else if (iX == 15) {
            str = Long.toString(this.f80l);
        } else {
            if (iX != 16) {
                throw new IllegalStateException("Expected a string but was " + L0() + q0());
            }
            str = new String(this.f74c, this.f75f, this.f81m);
            this.f75f += this.f81m;
        }
        this.f79k = 0;
        int[] iArr = this.f86r;
        int i10 = this.f84p - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    public b L0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        switch (iX) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String N() {
        return I(true);
    }

    public final void Q0(boolean z10) {
        this.f73b = z10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void V0() throws IOException {
        int i10 = 0;
        do {
            int iX = this.f79k;
            if (iX == 0) {
                iX = x();
            }
            switch (iX) {
                case 1:
                    O0(3);
                    i10++;
                    this.f79k = 0;
                    break;
                case 2:
                    if (i10 == 0) {
                        this.f85q[this.f84p - 1] = null;
                    }
                    this.f84p--;
                    i10--;
                    this.f79k = 0;
                    break;
                case 3:
                    O0(1);
                    i10++;
                    this.f79k = 0;
                    break;
                case 4:
                    this.f84p--;
                    i10--;
                    this.f79k = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.f79k = 0;
                    break;
                case 8:
                    R0('\'');
                    this.f79k = 0;
                    break;
                case 9:
                    R0(AbstractJsonLexerKt.STRING);
                    this.f79k = 0;
                    break;
                case 10:
                    U0();
                    this.f79k = 0;
                    break;
                case 12:
                    R0('\'');
                    if (i10 == 0) {
                        this.f85q[this.f84p - 1] = "<skipped>";
                    }
                    this.f79k = 0;
                    break;
                case 13:
                    R0(AbstractJsonLexerKt.STRING);
                    if (i10 == 0) {
                        this.f85q[this.f84p - 1] = "<skipped>";
                    }
                    this.f79k = 0;
                    break;
                case 14:
                    U0();
                    if (i10 == 0) {
                        this.f85q[this.f84p - 1] = "<skipped>";
                    }
                    this.f79k = 0;
                    break;
                case 16:
                    this.f75f += this.f81m;
                    this.f79k = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i10 > 0);
        int[] iArr = this.f86r;
        int i11 = this.f84p - 1;
        iArr[i11] = iArr[i11] + 1;
    }

    public boolean X() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        return (iX == 2 || iX == 4 || iX == 17) ? false : true;
    }

    public String a() {
        return I(false);
    }

    public final boolean a0() {
        return this.f73b;
    }

    public void c() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 3) {
            O0(1);
            this.f86r[this.f84p - 1] = 0;
            this.f79k = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + L0() + q0());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f79k = 0;
        this.f83o[0] = 8;
        this.f84p = 1;
        this.f72a.close();
    }

    public void i() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 1) {
            O0(3);
            this.f79k = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + L0() + q0());
        }
    }

    String q0() {
        return " at line " + (this.f77i + 1) + " column " + ((this.f75f - this.f78j) + 1) + " path " + a();
    }

    public String toString() {
        return getClass().getSimpleName() + q0();
    }

    public boolean v0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 5) {
            this.f79k = 0;
            int[] iArr = this.f86r;
            int i10 = this.f84p - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iX == 6) {
            this.f79k = 0;
            int[] iArr2 = this.f86r;
            int i11 = this.f84p - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + L0() + q0());
    }

    int x() throws IOException {
        int iG0;
        int[] iArr = this.f83o;
        int i10 = this.f84p;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iG02 = G0(true);
            if (iG02 != 44) {
                if (iG02 != 59) {
                    if (iG02 != 93) {
                        throw W0("Unterminated array");
                    }
                    this.f79k = 4;
                    return 4;
                }
                k();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5 && (iG0 = G0(true)) != 44) {
                    if (iG0 != 59) {
                        if (iG0 != 125) {
                            throw W0("Unterminated object");
                        }
                        this.f79k = 2;
                        return 2;
                    }
                    k();
                }
                int iG03 = G0(true);
                if (iG03 == 34) {
                    this.f79k = 13;
                    return 13;
                }
                if (iG03 == 39) {
                    k();
                    this.f79k = 12;
                    return 12;
                }
                if (iG03 == 125) {
                    if (i11 == 5) {
                        throw W0("Expected name");
                    }
                    this.f79k = 2;
                    return 2;
                }
                k();
                this.f75f--;
                if (!b0((char) iG03)) {
                    throw W0("Expected name");
                }
                this.f79k = 14;
                return 14;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iG04 = G0(true);
                if (iG04 != 58) {
                    if (iG04 != 61) {
                        throw W0("Expected ':'");
                    }
                    k();
                    if (this.f75f < this.f76h || G(1)) {
                        char[] cArr = this.f74c;
                        int i12 = this.f75f;
                        if (cArr[i12] == '>') {
                            this.f75f = i12 + 1;
                        }
                    }
                }
            } else if (i11 == 6) {
                if (this.f73b) {
                    v();
                }
                this.f83o[this.f84p - 1] = 7;
            } else if (i11 == 7) {
                if (G0(false) == -1) {
                    this.f79k = 17;
                    return 17;
                }
                k();
                this.f75f--;
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iG05 = G0(true);
        if (iG05 == 34) {
            this.f79k = 9;
            return 9;
        }
        if (iG05 == 39) {
            k();
            this.f79k = 8;
            return 8;
        }
        if (iG05 != 44 && iG05 != 59) {
            if (iG05 == 91) {
                this.f79k = 3;
                return 3;
            }
            if (iG05 != 93) {
                if (iG05 == 123) {
                    this.f79k = 1;
                    return 1;
                }
                this.f75f--;
                int iM0 = M0();
                if (iM0 != 0) {
                    return iM0;
                }
                int iN0 = N0();
                if (iN0 != 0) {
                    return iN0;
                }
                if (!b0(this.f74c[this.f75f])) {
                    throw W0("Expected value");
                }
                k();
                this.f79k = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f79k = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw W0("Unexpected value");
        }
        k();
        this.f75f--;
        this.f79k = 7;
        return 7;
    }

    public double x0() throws IOException {
        int iX = this.f79k;
        if (iX == 0) {
            iX = x();
        }
        if (iX == 15) {
            this.f79k = 0;
            int[] iArr = this.f86r;
            int i10 = this.f84p - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f80l;
        }
        if (iX == 16) {
            this.f82n = new String(this.f74c, this.f75f, this.f81m);
            this.f75f += this.f81m;
        } else if (iX == 8 || iX == 9) {
            this.f82n = I0(iX == 8 ? '\'' : AbstractJsonLexerKt.STRING);
        } else if (iX == 10) {
            this.f82n = K0();
        } else if (iX != 11) {
            throw new IllegalStateException("Expected a double but was " + L0() + q0());
        }
        this.f79k = 11;
        double d10 = Double.parseDouble(this.f82n);
        if (!this.f73b && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new d("JSON forbids NaN and infinities: " + d10 + q0());
        }
        this.f82n = null;
        this.f79k = 0;
        int[] iArr2 = this.f86r;
        int i11 = this.f84p - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d10;
    }
}
