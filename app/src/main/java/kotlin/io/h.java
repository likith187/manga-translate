package kotlin.io;

import java.io.File;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements kotlin.sequences.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f13046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f13047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w8.l f13048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w8.l f13049d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final w8.p f13050e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f13051f;

    private static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File rootDir) {
            super(rootDir);
            kotlin.jvm.internal.r.e(rootDir, "rootDir");
        }
    }

    private final class b extends kotlin.collections.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ArrayDeque f13052c;

        private final class a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f13054b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f13055c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f13056d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private boolean f13057e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ b f13058f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, File rootDir) {
                super(rootDir);
                kotlin.jvm.internal.r.e(rootDir, "rootDir");
                this.f13058f = bVar;
            }

            @Override // kotlin.io.h.c
            public File b() {
                if (!this.f13057e && this.f13055c == null) {
                    w8.l lVar = h.this.f13048c;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        return null;
                    }
                    File[] fileArrListFiles = a().listFiles();
                    this.f13055c = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        w8.p pVar = h.this.f13050e;
                        if (pVar != null) {
                            pVar.invoke(a(), new kotlin.io.a(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.f13057e = true;
                    }
                }
                File[] fileArr = this.f13055c;
                if (fileArr != null) {
                    int i10 = this.f13056d;
                    kotlin.jvm.internal.r.b(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.f13055c;
                        kotlin.jvm.internal.r.b(fileArr2);
                        int i11 = this.f13056d;
                        this.f13056d = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (!this.f13054b) {
                    this.f13054b = true;
                    return a();
                }
                w8.l lVar2 = h.this.f13049d;
                if (lVar2 != null) {
                    lVar2.invoke(a());
                }
                return null;
            }
        }

        /* JADX INFO: renamed from: kotlin.io.h$b$b, reason: collision with other inner class name */
        private final class C0167b extends c {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f13059b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ b f13060c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0167b(b bVar, File rootFile) {
                super(rootFile);
                kotlin.jvm.internal.r.e(rootFile, "rootFile");
                this.f13060c = bVar;
            }

            @Override // kotlin.io.h.c
            public File b() {
                if (this.f13059b) {
                    return null;
                }
                this.f13059b = true;
                return a();
            }
        }

        private final class c extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f13061b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private File[] f13062c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f13063d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ b f13064e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(b bVar, File rootDir) {
                super(rootDir);
                kotlin.jvm.internal.r.e(rootDir, "rootDir");
                this.f13064e = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override // kotlin.io.h.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.io.File b() {
                /*
                    r10 = this;
                    boolean r0 = r10.f13061b
                    r1 = 0
                    if (r0 != 0) goto L28
                    kotlin.io.h$b r0 = r10.f13064e
                    kotlin.io.h r0 = kotlin.io.h.this
                    w8.l r0 = kotlin.io.h.d(r0)
                    if (r0 == 0) goto L20
                    java.io.File r2 = r10.a()
                    java.lang.Object r0 = r0.invoke(r2)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L20
                    return r1
                L20:
                    r0 = 1
                    r10.f13061b = r0
                    java.io.File r10 = r10.a()
                    return r10
                L28:
                    java.io.File[] r0 = r10.f13062c
                    if (r0 == 0) goto L47
                    int r2 = r10.f13063d
                    kotlin.jvm.internal.r.b(r0)
                    int r0 = r0.length
                    if (r2 >= r0) goto L35
                    goto L47
                L35:
                    kotlin.io.h$b r0 = r10.f13064e
                    kotlin.io.h r0 = kotlin.io.h.this
                    w8.l r0 = kotlin.io.h.f(r0)
                    if (r0 == 0) goto L46
                    java.io.File r10 = r10.a()
                    r0.invoke(r10)
                L46:
                    return r1
                L47:
                    java.io.File[] r0 = r10.f13062c
                    if (r0 != 0) goto L93
                    java.io.File r0 = r10.a()
                    java.io.File[] r0 = r0.listFiles()
                    r10.f13062c = r0
                    if (r0 != 0) goto L77
                    kotlin.io.h$b r0 = r10.f13064e
                    kotlin.io.h r0 = kotlin.io.h.this
                    w8.p r0 = kotlin.io.h.e(r0)
                    if (r0 == 0) goto L77
                    java.io.File r2 = r10.a()
                    kotlin.io.a r9 = new kotlin.io.a
                    java.io.File r4 = r10.a()
                    r7 = 2
                    r8 = 0
                    r5 = 0
                    java.lang.String r6 = "Cannot list files in a directory"
                    r3 = r9
                    r3.<init>(r4, r5, r6, r7, r8)
                    r0.invoke(r2, r9)
                L77:
                    java.io.File[] r0 = r10.f13062c
                    if (r0 == 0) goto L81
                    kotlin.jvm.internal.r.b(r0)
                    int r0 = r0.length
                    if (r0 != 0) goto L93
                L81:
                    kotlin.io.h$b r0 = r10.f13064e
                    kotlin.io.h r0 = kotlin.io.h.this
                    w8.l r0 = kotlin.io.h.f(r0)
                    if (r0 == 0) goto L92
                    java.io.File r10 = r10.a()
                    r0.invoke(r10)
                L92:
                    return r1
                L93:
                    java.io.File[] r0 = r10.f13062c
                    kotlin.jvm.internal.r.b(r0)
                    int r1 = r10.f13063d
                    int r2 = r1 + 1
                    r10.f13063d = r2
                    r10 = r0[r1]
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.io.h.b.c.b():java.io.File");
            }
        }

        public /* synthetic */ class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f13065a;

            static {
                int[] iArr = new int[i.values().length];
                try {
                    iArr[i.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[i.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f13065a = iArr;
            }
        }

        public b() {
            ArrayDeque arrayDeque = new ArrayDeque();
            this.f13052c = arrayDeque;
            if (h.this.f13046a.isDirectory()) {
                arrayDeque.push(f(h.this.f13046a));
            } else if (h.this.f13046a.isFile()) {
                arrayDeque.push(new C0167b(this, h.this.f13046a));
            } else {
                c();
            }
        }

        private final a f(File file) {
            int i10 = d.f13065a[h.this.f13047b.ordinal()];
            if (i10 == 1) {
                return new c(this, file);
            }
            if (i10 == 2) {
                return new a(this, file);
            }
            throw new n8.o();
        }

        private final File g() {
            File fileB;
            while (true) {
                c cVar = (c) this.f13052c.peek();
                if (cVar == null) {
                    return null;
                }
                fileB = cVar.b();
                if (fileB == null) {
                    this.f13052c.pop();
                } else {
                    if (kotlin.jvm.internal.r.a(fileB, cVar.a()) || !fileB.isDirectory() || this.f13052c.size() >= h.this.f13051f) {
                        break;
                    }
                    this.f13052c.push(f(fileB));
                }
            }
            return fileB;
        }

        @Override // kotlin.collections.b
        protected void a() {
            File fileG = g();
            if (fileG != null) {
                d(fileG);
            } else {
                c();
            }
        }
    }

    private static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f13066a;

        public c(File root) {
            kotlin.jvm.internal.r.e(root, "root");
            this.f13066a = root;
        }

        public final File a() {
            return this.f13066a;
        }

        public abstract File b();
    }

    private h(File file, i iVar, w8.l lVar, w8.l lVar2, w8.p pVar, int i10) {
        this.f13046a = file;
        this.f13047b = iVar;
        this.f13048c = lVar;
        this.f13049d = lVar2;
        this.f13050e = pVar;
        this.f13051f = i10;
    }

    public final h h(w8.p function) {
        kotlin.jvm.internal.r.e(function, "function");
        return new h(this.f13046a, this.f13047b, this.f13048c, this.f13049d, function, this.f13051f);
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new b();
    }

    /* synthetic */ h(File file, i iVar, w8.l lVar, w8.l lVar2, w8.p pVar, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i11 & 2) != 0 ? i.TOP_DOWN : iVar, lVar, lVar2, pVar, (i11 & 32) != 0 ? Integer.MAX_VALUE : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(File start, i direction) {
        this(start, direction, null, null, null, 0, 32, null);
        kotlin.jvm.internal.r.e(start, "start");
        kotlin.jvm.internal.r.e(direction, "direction");
    }
}
