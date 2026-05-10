package com.oplus.anim.parser.moshi;

import com.oplus.anim.parser.moshi.c;
import java.io.EOFException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import t9.f;
import t9.g;

/* JADX INFO: loaded from: classes2.dex */
final class e extends c {

    /* JADX INFO: renamed from: q */
    private static final g f11095q = g.encodeUtf8("'\\");

    /* JADX INFO: renamed from: r */
    private static final g f11096r = g.encodeUtf8("\"\\");

    /* JADX INFO: renamed from: s */
    private static final g f11097s = g.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* JADX INFO: renamed from: t */
    private static final g f11098t = g.encodeUtf8("\n\r");

    /* JADX INFO: renamed from: u */
    private static final g f11099u = g.encodeUtf8("*/");

    /* JADX INFO: renamed from: k */
    private final f f11100k;

    /* JADX INFO: renamed from: l */
    private final t9.d f11101l;

    /* JADX INFO: renamed from: m */
    private int f11102m = 0;

    /* JADX INFO: renamed from: n */
    private long f11103n;

    /* JADX INFO: renamed from: o */
    private int f11104o;

    /* JADX INFO: renamed from: p */
    private String f11105p;

    e(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f11100k = fVar;
        this.f11101l = fVar.u();
        q0(6);
    }

    private void G0() throws b {
        if (!this.f11091h) {
            throw F0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int H0() throws b, EOFException {
        int[] iArr = this.f11088b;
        int i10 = this.f11087a;
        int i11 = iArr[i10 - 1];
        if (i11 == 1) {
            iArr[i10 - 1] = 2;
        } else if (i11 == 2) {
            int iK0 = K0(true);
            this.f11101l.C0();
            if (iK0 != 44) {
                if (iK0 != 59) {
                    if (iK0 != 93) {
                        throw F0("Unterminated array");
                    }
                    this.f11102m = 4;
                    return 4;
                }
                G0();
            }
        } else {
            if (i11 == 3 || i11 == 5) {
                iArr[i10 - 1] = 4;
                if (i11 == 5) {
                    int iK02 = K0(true);
                    this.f11101l.C0();
                    if (iK02 != 44) {
                        if (iK02 != 59) {
                            if (iK02 != 125) {
                                throw F0("Unterminated object");
                            }
                            this.f11102m = 2;
                            return 2;
                        }
                        G0();
                    }
                }
                int iK03 = K0(true);
                if (iK03 == 34) {
                    this.f11101l.C0();
                    this.f11102m = 13;
                    return 13;
                }
                if (iK03 == 39) {
                    this.f11101l.C0();
                    G0();
                    this.f11102m = 12;
                    return 12;
                }
                if (iK03 != 125) {
                    G0();
                    if (!J0((char) iK03)) {
                        throw F0("Expected name");
                    }
                    this.f11102m = 14;
                    return 14;
                }
                if (i11 == 5) {
                    throw F0("Expected name");
                }
                this.f11101l.C0();
                this.f11102m = 2;
                return 2;
            }
            if (i11 == 4) {
                iArr[i10 - 1] = 5;
                int iK04 = K0(true);
                this.f11101l.C0();
                if (iK04 != 58) {
                    if (iK04 != 61) {
                        throw F0("Expected ':'");
                    }
                    G0();
                    if (this.f11100k.F(1L) && this.f11101l.D(0L) == 62) {
                        this.f11101l.C0();
                    }
                }
            } else if (i11 == 6) {
                iArr[i10 - 1] = 7;
            } else if (i11 == 7) {
                if (K0(false) == -1) {
                    this.f11102m = 18;
                    return 18;
                }
                G0();
            } else if (i11 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iK05 = K0(true);
        if (iK05 == 34) {
            this.f11101l.C0();
            this.f11102m = 9;
            return 9;
        }
        if (iK05 == 39) {
            G0();
            this.f11101l.C0();
            this.f11102m = 8;
            return 8;
        }
        if (iK05 != 44 && iK05 != 59) {
            if (iK05 == 91) {
                this.f11101l.C0();
                this.f11102m = 3;
                return 3;
            }
            if (iK05 != 93) {
                if (iK05 == 123) {
                    this.f11101l.C0();
                    this.f11102m = 1;
                    return 1;
                }
                int iN0 = N0();
                if (iN0 != 0) {
                    return iN0;
                }
                int iO0 = O0();
                if (iO0 != 0) {
                    return iO0;
                }
                if (!J0(this.f11101l.D(0L))) {
                    throw F0("Expected value");
                }
                G0();
                this.f11102m = 10;
                return 10;
            }
            if (i11 == 1) {
                this.f11101l.C0();
                this.f11102m = 4;
                return 4;
            }
        }
        if (i11 != 1 && i11 != 2) {
            throw F0("Unexpected value");
        }
        G0();
        this.f11102m = 7;
        return 7;
    }

    private int I0(String str, c.a aVar) {
        int length = aVar.f11093a.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.equals(aVar.f11093a[i10])) {
                this.f11102m = 0;
                this.f11089c[this.f11087a - 1] = str;
                return i10;
            }
        }
        return -1;
    }

    private boolean J0(int i10) throws b {
        if (i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13 || i10 == 32) {
            return false;
        }
        if (i10 != 35) {
            if (i10 == 44) {
                return false;
            }
            if (i10 != 47 && i10 != 61) {
                if (i10 == 123 || i10 == 125 || i10 == 58) {
                    return false;
                }
                if (i10 != 59) {
                    switch (i10) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        G0();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0025, code lost:
    
        r6.f11101l.A(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x002d, code lost:
    
        if (r2 != 47) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0037, code lost:
    
        if (r6.f11100k.F(2) != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0039, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x003a, code lost:
    
        G0();
        r3 = r6.f11101l.D(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0047, code lost:
    
        if (r3 == 42) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0049, code lost:
    
        if (r3 == 47) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x004b, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x004c, code lost:
    
        r6.f11101l.C0();
        r6.f11101l.C0();
        S0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x005a, code lost:
    
        r6.f11101l.C0();
        r6.f11101l.C0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0068, code lost:
    
        if (R0() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0071, code lost:
    
        throw F0("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0074, code lost:
    
        if (r2 != 35) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0076, code lost:
    
        G0();
        S0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x007d, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int K0(boolean r7) throws com.oplus.anim.parser.moshi.b, java.io.EOFException {
        /*
            r6 = this;
            r0 = 0
        L1:
            r1 = r0
        L2:
            t9.f r2 = r6.f11100k
            int r3 = r1 + 1
            long r4 = (long) r3
            boolean r2 = r2.F(r4)
            if (r2 == 0) goto L80
            t9.d r2 = r6.f11101l
            long r4 = (long) r1
            byte r2 = r2.D(r4)
            r4 = 10
            if (r2 == r4) goto L7e
            r4 = 32
            if (r2 == r4) goto L7e
            r4 = 13
            if (r2 == r4) goto L7e
            r4 = 9
            if (r2 != r4) goto L25
            goto L7e
        L25:
            t9.d r3 = r6.f11101l
            long r4 = (long) r1
            r3.A(r4)
            r1 = 47
            if (r2 != r1) goto L72
            t9.f r3 = r6.f11100k
            r4 = 2
            boolean r3 = r3.F(r4)
            if (r3 != 0) goto L3a
            return r2
        L3a:
            r6.G0()
            t9.d r3 = r6.f11101l
            r4 = 1
            byte r3 = r3.D(r4)
            r4 = 42
            if (r3 == r4) goto L5a
            if (r3 == r1) goto L4c
            return r2
        L4c:
            t9.d r1 = r6.f11101l
            r1.C0()
            t9.d r1 = r6.f11101l
            r1.C0()
            r6.S0()
            goto L1
        L5a:
            t9.d r1 = r6.f11101l
            r1.C0()
            t9.d r1 = r6.f11101l
            r1.C0()
            boolean r1 = r6.R0()
            if (r1 == 0) goto L6b
            goto L1
        L6b:
            java.lang.String r7 = "Unterminated comment"
            com.oplus.anim.parser.moshi.b r6 = r6.F0(r7)
            throw r6
        L72:
            r1 = 35
            if (r2 != r1) goto L7d
            r6.G0()
            r6.S0()
            goto L1
        L7d:
            return r2
        L7e:
            r1 = r3
            goto L2
        L80:
            if (r7 != 0) goto L84
            r6 = -1
            return r6
        L84:
            java.io.EOFException r6 = new java.io.EOFException
            java.lang.String r7 = "End of input"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.anim.parser.moshi.e.K0(boolean):int");
    }

    private String L0(g gVar) throws b, EOFException {
        StringBuilder sb = null;
        while (true) {
            long jR = this.f11100k.R(gVar);
            if (jR == -1) {
                throw F0("Unterminated string");
            }
            if (this.f11101l.D(jR) != 92) {
                if (sb == null) {
                    String strE0 = this.f11101l.E0(jR);
                    this.f11101l.C0();
                    return strE0;
                }
                sb.append(this.f11101l.E0(jR));
                this.f11101l.C0();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.f11101l.E0(jR));
            this.f11101l.C0();
            sb.append(P0());
        }
    }

    private String M0() {
        long jR = this.f11100k.R(f11097s);
        t9.d dVar = this.f11101l;
        return jR != -1 ? dVar.E0(jR) : dVar.D0();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private int N0() throws EOFException {
        String str;
        String str2;
        int i10;
        byte bD = this.f11101l.D(0L);
        if (bD == 116 || bD == 84) {
            str = "true";
            str2 = "TRUE";
            i10 = 5;
        } else if (bD == 102 || bD == 70) {
            str = "false";
            str2 = "FALSE";
            i10 = 6;
        } else {
            if (bD != 110 && bD != 78) {
                return 0;
            }
            str = AbstractJsonLexerKt.NULL;
            str2 = "NULL";
            i10 = 7;
        }
        int length = str.length();
        int i11 = 1;
        while (i11 < length) {
            int i12 = i11 + 1;
            if (!this.f11100k.F(i12)) {
                return 0;
            }
            byte bD2 = this.f11101l.D(i11);
            if (bD2 != str.charAt(i11) && bD2 != str2.charAt(i11)) {
                return 0;
            }
            i11 = i12;
        }
        if (this.f11100k.F(length + 1) && J0(this.f11101l.D(length))) {
            return 0;
        }
        this.f11101l.A(length);
        this.f11102m = i10;
        return i10;
    }

    private int O0() throws EOFException {
        byte bD;
        char c10;
        boolean z10 = true;
        long j10 = 0;
        int i10 = 0;
        char c11 = 0;
        boolean z11 = false;
        boolean z12 = true;
        while (true) {
            int i11 = i10 + 1;
            if (!this.f11100k.F(i11)) {
                break;
            }
            bD = this.f11101l.D(i10);
            if (bD != 43) {
                if (bD == 69 || bD == 101) {
                    if (c11 != 2 && c11 != 4) {
                        return 0;
                    }
                    c11 = 5;
                } else if (bD == 45) {
                    c10 = 6;
                    if (c11 == 0) {
                        c11 = 1;
                        z11 = true;
                    } else if (c11 != 5) {
                        return 0;
                    }
                } else if (bD != 46) {
                    if (bD < 48 || bD > 57) {
                        break;
                    }
                    if (c11 == z10 || c11 == 0) {
                        j10 = -(bD - 48);
                        c11 = 2;
                    } else if (c11 == 2) {
                        if (j10 == 0) {
                            return 0;
                        }
                        long j11 = (10 * j10) - ((long) (bD - 48));
                        z12 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                        j10 = j11;
                    } else if (c11 == 3) {
                        c11 = 4;
                    } else if (c11 == 5 || c11 == 6) {
                        c11 = 7;
                    }
                } else {
                    if (c11 != 2) {
                        return 0;
                    }
                    c11 = 3;
                }
                i10 = i11;
                z10 = true;
            } else {
                c10 = 6;
                if (c11 != 5) {
                    return 0;
                }
            }
            c11 = c10;
            i10 = i11;
            z10 = true;
        }
        if (J0(bD)) {
            return 0;
        }
        if (c11 == 2 && z12 && ((j10 != Long.MIN_VALUE || z11) && (j10 != 0 || !z11))) {
            if (!z11) {
                j10 = -j10;
            }
            this.f11103n = j10;
            this.f11101l.A(i10);
            this.f11102m = 16;
            return 16;
        }
        if (c11 != 2 && c11 != 4 && c11 != 7) {
            return 0;
        }
        this.f11104o = i10;
        this.f11102m = 17;
        return 17;
    }

    private char P0() throws b, EOFException {
        int i10;
        if (!this.f11100k.F(1L)) {
            throw F0("Unterminated escape sequence");
        }
        byte bC0 = this.f11101l.C0();
        if (bC0 == 10 || bC0 == 34 || bC0 == 39 || bC0 == 47 || bC0 == 92) {
            return (char) bC0;
        }
        if (bC0 == 98) {
            return '\b';
        }
        if (bC0 == 102) {
            return '\f';
        }
        if (bC0 == 110) {
            return '\n';
        }
        if (bC0 == 114) {
            return '\r';
        }
        if (bC0 == 116) {
            return '\t';
        }
        if (bC0 != 117) {
            if (this.f11091h) {
                return (char) bC0;
            }
            throw F0("Invalid escape sequence: \\" + ((char) bC0));
        }
        if (!this.f11100k.F(4L)) {
            throw new EOFException("Unterminated escape sequence at path " + a());
        }
        char c10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            byte bD = this.f11101l.D(i11);
            char c11 = (char) (c10 << 4);
            if (bD >= 48 && bD <= 57) {
                i10 = bD - 48;
            } else if (bD >= 97 && bD <= 102) {
                i10 = bD - 87;
            } else {
                if (bD < 65 || bD > 70) {
                    throw F0("\\u" + this.f11101l.E0(4L));
                }
                i10 = bD - 55;
            }
            c10 = (char) (c11 + i10);
        }
        this.f11101l.A(4L);
        return c10;
    }

    private void Q0(g gVar) throws b, EOFException {
        while (true) {
            long jR = this.f11100k.R(gVar);
            if (jR == -1) {
                throw F0("Unterminated string");
            }
            if (this.f11101l.D(jR) != 92) {
                this.f11101l.A(jR + 1);
                return;
            } else {
                this.f11101l.A(jR + 1);
                P0();
            }
        }
    }

    private boolean R0() throws EOFException {
        f fVar = this.f11100k;
        g gVar = f11099u;
        long jN0 = fVar.n0(gVar);
        boolean z10 = jN0 != -1;
        t9.d dVar = this.f11101l;
        dVar.A(z10 ? jN0 + ((long) gVar.size()) : dVar.G0());
        return z10;
    }

    private void S0() throws EOFException {
        long jR = this.f11100k.R(f11098t);
        t9.d dVar = this.f11101l;
        dVar.A(jR != -1 ? jR + 1 : dVar.G0());
    }

    private void T0() throws EOFException {
        long jR = this.f11100k.R(f11097s);
        t9.d dVar = this.f11101l;
        if (jR == -1) {
            jR = dVar.G0();
        }
        dVar.A(jR);
    }

    @Override // com.oplus.anim.parser.moshi.c
    public boolean B() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        return (iH0 == 2 || iH0 == 4 || iH0 == 18) ? false : true;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public boolean D() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 5) {
            this.f11102m = 0;
            int[] iArr = this.f11090f;
            int i10 = this.f11087a - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iH0 == 6) {
            this.f11102m = 0;
            int[] iArr2 = this.f11090f;
            int i11 = this.f11087a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        }
        throw new a("Expected a boolean but was " + b0() + " at path " + a());
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void D0() throws b, EOFException {
        if (this.f11092i) {
            throw new a("Cannot skip unexpected " + b0() + " at " + a());
        }
        int i10 = 0;
        do {
            int iH0 = this.f11102m;
            if (iH0 == 0) {
                iH0 = H0();
            }
            if (iH0 == 3) {
                q0(1);
            } else if (iH0 == 1) {
                q0(3);
            } else {
                if (iH0 == 4) {
                    i10--;
                    if (i10 < 0) {
                        throw new a("Expected a value but was " + b0() + " at path " + a());
                    }
                    this.f11087a--;
                } else if (iH0 == 2) {
                    i10--;
                    if (i10 < 0) {
                        throw new a("Expected a value but was " + b0() + " at path " + a());
                    }
                    this.f11087a--;
                } else if (iH0 == 14 || iH0 == 10) {
                    T0();
                } else if (iH0 == 9 || iH0 == 13) {
                    Q0(f11096r);
                } else if (iH0 == 8 || iH0 == 12) {
                    Q0(f11095q);
                } else if (iH0 == 17) {
                    this.f11101l.A(this.f11104o);
                } else if (iH0 == 18) {
                    throw new a("Expected a value but was " + b0() + " at path " + a());
                }
                this.f11102m = 0;
            }
            i10++;
            this.f11102m = 0;
        } while (i10 != 0);
        int[] iArr = this.f11090f;
        int i11 = this.f11087a;
        int i12 = i11 - 1;
        iArr[i12] = iArr[i12] + 1;
        this.f11089c[i11 - 1] = AbstractJsonLexerKt.NULL;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public double G() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 16) {
            this.f11102m = 0;
            int[] iArr = this.f11090f;
            int i10 = this.f11087a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f11103n;
        }
        if (iH0 == 17) {
            this.f11105p = this.f11101l.E0(this.f11104o);
        } else if (iH0 == 9) {
            this.f11105p = L0(f11096r);
        } else if (iH0 == 8) {
            this.f11105p = L0(f11095q);
        } else if (iH0 == 10) {
            this.f11105p = M0();
        } else if (iH0 != 11) {
            throw new a("Expected a double but was " + b0() + " at path " + a());
        }
        this.f11102m = 11;
        try {
            double d10 = Double.parseDouble(this.f11105p);
            if (this.f11091h || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
                this.f11105p = null;
                this.f11102m = 0;
                int[] iArr2 = this.f11090f;
                int i11 = this.f11087a - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return d10;
            }
            throw new b("JSON forbids NaN and infinities: " + d10 + " at path " + a());
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.f11105p + " at path " + a());
        }
    }

    @Override // com.oplus.anim.parser.moshi.c
    public int I() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 16) {
            long j10 = this.f11103n;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f11102m = 0;
                int[] iArr = this.f11090f;
                int i11 = this.f11087a - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new a("Expected an int but was " + this.f11103n + " at path " + a());
        }
        if (iH0 == 17) {
            this.f11105p = this.f11101l.E0(this.f11104o);
        } else if (iH0 == 9 || iH0 == 8) {
            String strL0 = iH0 == 9 ? L0(f11096r) : L0(f11095q);
            this.f11105p = strL0;
            try {
                int i12 = Integer.parseInt(strL0);
                this.f11102m = 0;
                int[] iArr2 = this.f11090f;
                int i13 = this.f11087a - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        } else if (iH0 != 11) {
            throw new a("Expected an int but was " + b0() + " at path " + a());
        }
        this.f11102m = 11;
        try {
            double d10 = Double.parseDouble(this.f11105p);
            int i14 = (int) d10;
            if (i14 == d10) {
                this.f11105p = null;
                this.f11102m = 0;
                int[] iArr3 = this.f11090f;
                int i15 = this.f11087a - 1;
                iArr3[i15] = iArr3[i15] + 1;
                return i14;
            }
            throw new a("Expected an int but was " + this.f11105p + " at path " + a());
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.f11105p + " at path " + a());
        }
    }

    @Override // com.oplus.anim.parser.moshi.c
    public String N() throws b, EOFException {
        String strL0;
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 14) {
            strL0 = M0();
        } else if (iH0 == 13) {
            strL0 = L0(f11096r);
        } else if (iH0 == 12) {
            strL0 = L0(f11095q);
        } else {
            if (iH0 != 15) {
                throw new a("Expected a name but was " + b0() + " at path " + a());
            }
            strL0 = this.f11105p;
        }
        this.f11102m = 0;
        this.f11089c[this.f11087a - 1] = strL0;
        return strL0;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public String X() throws b, EOFException {
        String strE0;
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 10) {
            strE0 = M0();
        } else if (iH0 == 9) {
            strE0 = L0(f11096r);
        } else if (iH0 == 8) {
            strE0 = L0(f11095q);
        } else if (iH0 == 11) {
            strE0 = this.f11105p;
            this.f11105p = null;
        } else if (iH0 == 16) {
            strE0 = Long.toString(this.f11103n);
        } else {
            if (iH0 != 17) {
                throw new a("Expected a string but was " + b0() + " at path " + a());
            }
            strE0 = this.f11101l.E0(this.f11104o);
        }
        this.f11102m = 0;
        int[] iArr = this.f11090f;
        int i10 = this.f11087a - 1;
        iArr[i10] = iArr[i10] + 1;
        return strE0;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public c.b b0() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        switch (iH0) {
            case 1:
                return c.b.BEGIN_OBJECT;
            case 2:
                return c.b.END_OBJECT;
            case 3:
                return c.b.BEGIN_ARRAY;
            case 4:
                return c.b.END_ARRAY;
            case 5:
            case 6:
                return c.b.BOOLEAN;
            case 7:
                return c.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return c.b.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return c.b.NAME;
            case 16:
            case 17:
                return c.b.NUMBER;
            case 18:
                return c.b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws EOFException {
        this.f11102m = 0;
        this.f11088b[0] = 8;
        this.f11087a = 1;
        this.f11101l.i();
        this.f11100k.close();
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void i() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 3) {
            q0(1);
            this.f11090f[this.f11087a - 1] = 0;
            this.f11102m = 0;
        } else {
            throw new a("Expected BEGIN_ARRAY but was " + b0() + " at path " + a());
        }
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void k() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 1) {
            q0(3);
            this.f11102m = 0;
            return;
        }
        throw new a("Expected BEGIN_OBJECT but was " + b0() + " at path " + a());
    }

    public String toString() {
        return "JsonReader(" + this.f11100k + ")";
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void v() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 != 4) {
            throw new a("Expected END_ARRAY but was " + b0() + " at path " + a());
        }
        int i10 = this.f11087a;
        this.f11087a = i10 - 1;
        int[] iArr = this.f11090f;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f11102m = 0;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public int v0(c.a aVar) throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 < 12 || iH0 > 15) {
            return -1;
        }
        if (iH0 == 15) {
            return I0(this.f11105p, aVar);
        }
        int iA0 = this.f11100k.A0(aVar.f11094b);
        if (iA0 != -1) {
            this.f11102m = 0;
            this.f11089c[this.f11087a - 1] = aVar.f11093a[iA0];
            return iA0;
        }
        String str = this.f11089c[this.f11087a - 1];
        String strN = N();
        int iI0 = I0(strN, aVar);
        if (iI0 == -1) {
            this.f11102m = 15;
            this.f11105p = strN;
            this.f11089c[this.f11087a - 1] = str;
        }
        return iI0;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void x() throws b, EOFException {
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 != 2) {
            throw new a("Expected END_OBJECT but was " + b0() + " at path " + a());
        }
        int i10 = this.f11087a;
        int i11 = i10 - 1;
        this.f11087a = i11;
        this.f11089c[i11] = null;
        int[] iArr = this.f11090f;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f11102m = 0;
    }

    @Override // com.oplus.anim.parser.moshi.c
    public void x0() throws b, EOFException {
        if (this.f11092i) {
            throw new a("Cannot skip unexpected " + b0() + " at " + a());
        }
        int iH0 = this.f11102m;
        if (iH0 == 0) {
            iH0 = H0();
        }
        if (iH0 == 14) {
            T0();
        } else if (iH0 == 13) {
            Q0(f11096r);
        } else if (iH0 == 12) {
            Q0(f11095q);
        } else if (iH0 != 15) {
            throw new a("Expected a name but was " + b0() + " at path " + a());
        }
        this.f11102m = 0;
        this.f11089c[this.f11087a - 1] = AbstractJsonLexerKt.NULL;
    }
}
