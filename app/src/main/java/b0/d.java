package b0;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0.c f4215a = new e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b0.c f4216b = new e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b0.c f4217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b0.c f4218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b0.c f4219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b0.c f4220f;

    private static class a implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a f4221b = new a(true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f4222a;

        private a(boolean z10) {
            this.f4222a = z10;
        }

        @Override // b0.d.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z10 = false;
            while (i10 < i12) {
                int iA = d.a(Character.getDirectionality(charSequence.charAt(i10)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                        i10++;
                        z10 = z10;
                    } else if (!this.f4222a) {
                        return 1;
                    }
                } else if (this.f4222a) {
                    return 0;
                }
                z10 = true;
                i10++;
                z10 = z10;
            }
            if (z10) {
                return this.f4222a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f4223a = new b();

        private b() {
        }

        @Override // b0.d.c
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int iB = 2;
            while (i10 < i12 && iB == 2) {
                iB = d.b(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i10, int i11);
    }

    /* JADX INFO: renamed from: b0.d$d, reason: collision with other inner class name */
    private static abstract class AbstractC0051d implements b0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f4224a;

        AbstractC0051d(c cVar) {
            this.f4224a = cVar;
        }

        private boolean c(CharSequence charSequence, int i10, int i11) {
            int iA = this.f4224a.a(charSequence, i10, i11);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override // b0.c
        public boolean a(CharSequence charSequence, int i10, int i11) {
            if (charSequence == null || i10 < 0 || i11 < 0 || charSequence.length() - i11 < i10) {
                throw new IllegalArgumentException();
            }
            return this.f4224a == null ? b() : c(charSequence, i10, i11);
        }

        protected abstract boolean b();
    }

    private static class e extends AbstractC0051d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f4225b;

        e(c cVar, boolean z10) {
            super(cVar);
            this.f4225b = z10;
        }

        @Override // b0.d.AbstractC0051d
        protected boolean b() {
            return this.f4225b;
        }
    }

    private static class f extends AbstractC0051d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final f f4226b = new f();

        f() {
            super(null);
        }

        @Override // b0.d.AbstractC0051d
        protected boolean b() {
            return b0.e.a(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f4223a;
        f4217c = new e(bVar, false);
        f4218d = new e(bVar, true);
        f4219e = new e(a.f4221b, false);
        f4220f = f.f4226b;
    }

    static int a(int i10) {
        if (i10 != 0) {
            return (i10 == 1 || i10 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
