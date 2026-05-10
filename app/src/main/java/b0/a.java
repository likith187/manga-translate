package b0;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final c f4193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f4194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f4195f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f4196g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final a f4197h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f4198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f4200c;

    /* JADX INFO: renamed from: b0.a$a, reason: collision with other inner class name */
    public static final class C0050a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f4201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c f4203c;

        public C0050a() {
            c(a.e(Locale.getDefault()));
        }

        private static a b(boolean z10) {
            return z10 ? a.f4197h : a.f4196g;
        }

        private void c(boolean z10) {
            this.f4201a = z10;
            this.f4203c = a.f4193d;
            this.f4202b = 2;
        }

        public a a() {
            return (this.f4202b == 2 && this.f4203c == a.f4193d) ? b(this.f4201a) : new a(this.f4201a, this.f4202b, this.f4203c);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f4204f = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f4205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f4206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f4207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private char f4209e;

        static {
            for (int i10 = 0; i10 < 1792; i10++) {
                f4204f[i10] = Character.getDirectionality(i10);
            }
        }

        b(CharSequence charSequence, boolean z10) {
            this.f4205a = charSequence;
            this.f4206b = z10;
            this.f4207c = charSequence.length();
        }

        private static byte c(char c10) {
            return c10 < 1792 ? f4204f[c10] : Character.getDirectionality(c10);
        }

        private byte f() {
            char cCharAt;
            int i10 = this.f4208d;
            do {
                int i11 = this.f4208d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f4205a;
                int i12 = i11 - 1;
                this.f4208d = i12;
                cCharAt = charSequence.charAt(i12);
                this.f4209e = cCharAt;
                if (cCharAt == '&') {
                    return (byte) 12;
                }
            } while (cCharAt != ';');
            this.f4208d = i10;
            this.f4209e = ';';
            return (byte) 13;
        }

        private byte g() {
            char cCharAt;
            do {
                int i10 = this.f4208d;
                if (i10 >= this.f4207c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f4205a;
                this.f4208d = i10 + 1;
                cCharAt = charSequence.charAt(i10);
                this.f4209e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char cCharAt;
            int i10 = this.f4208d;
            while (true) {
                int i11 = this.f4208d;
                if (i11 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f4205a;
                int i12 = i11 - 1;
                this.f4208d = i12;
                char cCharAt2 = charSequence.charAt(i12);
                this.f4209e = cCharAt2;
                if (cCharAt2 == '<') {
                    return (byte) 12;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i13 = this.f4208d;
                        if (i13 > 0) {
                            CharSequence charSequence2 = this.f4205a;
                            int i14 = i13 - 1;
                            this.f4208d = i14;
                            cCharAt = charSequence2.charAt(i14);
                            this.f4209e = cCharAt;
                        }
                    } while (cCharAt != cCharAt2);
                }
            }
            this.f4208d = i10;
            this.f4209e = '>';
            return (byte) 13;
        }

        private byte i() {
            char cCharAt;
            int i10 = this.f4208d;
            while (true) {
                int i11 = this.f4208d;
                if (i11 >= this.f4207c) {
                    this.f4208d = i10;
                    this.f4209e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f4205a;
                this.f4208d = i11 + 1;
                char cCharAt2 = charSequence.charAt(i11);
                this.f4209e = cCharAt2;
                if (cCharAt2 == '>') {
                    return (byte) 12;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i12 = this.f4208d;
                        if (i12 < this.f4207c) {
                            CharSequence charSequence2 = this.f4205a;
                            this.f4208d = i12 + 1;
                            cCharAt = charSequence2.charAt(i12);
                            this.f4209e = cCharAt;
                        }
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.f4205a.charAt(this.f4208d - 1);
            this.f4209e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f4205a, this.f4208d);
                this.f4208d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f4208d--;
            byte bC = c(this.f4209e);
            if (!this.f4206b) {
                return bC;
            }
            char c10 = this.f4209e;
            return c10 == '>' ? h() : c10 == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.f4205a.charAt(this.f4208d);
            this.f4209e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f4205a, this.f4208d);
                this.f4208d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f4208d++;
            byte bC = c(this.f4209e);
            if (!this.f4206b) {
                return bC;
            }
            char c10 = this.f4209e;
            return c10 == '<' ? i() : c10 == '&' ? g() : bC;
        }

        int d() {
            this.f4208d = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (this.f4208d < this.f4207c && i10 == 0) {
                byte b10 = b();
                if (b10 != 0) {
                    if (b10 == 1 || b10 == 2) {
                        if (i12 == 0) {
                            return 1;
                        }
                    } else if (b10 != 9) {
                        switch (b10) {
                            case 14:
                            case 15:
                                i12++;
                                i11 = -1;
                                continue;
                            case 16:
                            case 17:
                                i12++;
                                i11 = 1;
                                continue;
                            case 18:
                                i12--;
                                i11 = 0;
                                continue;
                        }
                    }
                } else if (i12 == 0) {
                    return -1;
                }
                i10 = i12;
            }
            if (i10 == 0) {
                return 0;
            }
            if (i11 != 0) {
                return i11;
            }
            while (this.f4208d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i10 == i12) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i10 == i12) {
                            return 1;
                        }
                        break;
                    case 18:
                        i12++;
                        continue;
                }
                i12--;
            }
            return 0;
        }

        int e() {
            this.f4208d = this.f4207c;
            int i10 = 0;
            while (true) {
                int i11 = i10;
                while (this.f4208d > 0) {
                    byte bA = a();
                    if (bA == 0) {
                        if (i10 == 0) {
                            return -1;
                        }
                        if (i11 == 0) {
                            break;
                        }
                    } else if (bA == 1 || bA == 2) {
                        if (i10 == 0) {
                            return 1;
                        }
                        if (i11 == 0) {
                            break;
                        }
                    } else if (bA != 9) {
                        switch (bA) {
                            case 14:
                            case 15:
                                if (i11 == i10) {
                                    return -1;
                                }
                                i10--;
                                break;
                            case 16:
                            case 17:
                                if (i11 == i10) {
                                    return 1;
                                }
                                i10--;
                                break;
                            case 18:
                                i10++;
                                break;
                            default:
                                if (i11 != 0) {
                                }
                                break;
                        }
                    } else {
                        continue;
                    }
                }
                return 0;
            }
        }
    }

    static {
        c cVar = d.f4217c;
        f4193d = cVar;
        f4194e = Character.toString((char) 8206);
        f4195f = Character.toString((char) 8207);
        f4196g = new a(false, 2, cVar);
        f4197h = new a(true, 2, cVar);
    }

    a(boolean z10, int i10, c cVar) {
        this.f4198a = z10;
        this.f4199b = i10;
        this.f4200c = cVar;
    }

    private static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0050a().a();
    }

    static boolean e(Locale locale) {
        return e.a(locale) == 1;
    }

    private String f(CharSequence charSequence, c cVar) {
        boolean zA = cVar.a(charSequence, 0, charSequence.length());
        return (this.f4198a || !(zA || b(charSequence) == 1)) ? this.f4198a ? (!zA || b(charSequence) == -1) ? f4195f : "" : "" : f4194e;
    }

    private String g(CharSequence charSequence, c cVar) {
        boolean zA = cVar.a(charSequence, 0, charSequence.length());
        return (this.f4198a || !(zA || a(charSequence) == 1)) ? this.f4198a ? (!zA || a(charSequence) == -1) ? f4195f : "" : "" : f4194e;
    }

    public boolean d() {
        return (this.f4199b & 2) != 0;
    }

    public CharSequence h(CharSequence charSequence) {
        return i(charSequence, this.f4200c, true);
    }

    public CharSequence i(CharSequence charSequence, c cVar, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = cVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z10) {
            spannableStringBuilder.append((CharSequence) g(charSequence, zA ? d.f4216b : d.f4215a));
        }
        if (zA != this.f4198a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) f(charSequence, zA ? d.f4216b : d.f4215a));
        }
        return spannableStringBuilder;
    }

    public String j(String str) {
        return k(str, this.f4200c, true);
    }

    public String k(String str, c cVar, boolean z10) {
        if (str == null) {
            return null;
        }
        return i(str, cVar, z10).toString();
    }
}
