package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
final class e implements kotlin.sequences.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f13116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f13117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f13118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w8.p f13119d;

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f13120a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f13121b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f13122c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private b9.c f13123f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f13124h;

        a() {
            int iH = b9.d.h(e.this.f13117b, 0, e.this.f13116a.length());
            this.f13121b = iH;
            this.f13122c = iH;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f13122c
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f13120a = r1
                r0 = 0
                r6.f13123f = r0
                goto L9e
            Lc:
                kotlin.text.e r0 = kotlin.text.e.this
                int r0 = kotlin.text.e.d(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L23
                int r0 = r6.f13124h
                int r0 = r0 + r3
                r6.f13124h = r0
                kotlin.text.e r4 = kotlin.text.e.this
                int r4 = kotlin.text.e.d(r4)
                if (r0 >= r4) goto L31
            L23:
                int r0 = r6.f13122c
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L47
            L31:
                b9.c r0 = new b9.c
                int r1 = r6.f13121b
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = kotlin.text.r.Q(r4)
                r0.<init>(r1, r4)
                r6.f13123f = r0
                r6.f13122c = r2
                goto L9c
            L47:
                kotlin.text.e r0 = kotlin.text.e.this
                w8.p r0 = kotlin.text.e.b(r0)
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r5 = r6.f13122c
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                n8.q r0 = (n8.q) r0
                if (r0 != 0) goto L77
                b9.c r0 = new b9.c
                int r1 = r6.f13121b
                kotlin.text.e r4 = kotlin.text.e.this
                java.lang.CharSequence r4 = kotlin.text.e.c(r4)
                int r4 = kotlin.text.r.Q(r4)
                r0.<init>(r1, r4)
                r6.f13123f = r0
                r6.f13122c = r2
                goto L9c
            L77:
                java.lang.Object r2 = r0.component1()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.component2()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f13121b
                b9.c r4 = b9.d.l(r4, r2)
                r6.f13123f = r4
                int r2 = r2 + r0
                r6.f13121b = r2
                if (r0 != 0) goto L99
                r1 = r3
            L99:
                int r2 = r2 + r1
                r6.f13122c = r2
            L9c:
                r6.f13120a = r3
            L9e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.e.a.a():void");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public b9.c next() {
            if (this.f13120a == -1) {
                a();
            }
            if (this.f13120a == 0) {
                throw new NoSuchElementException();
            }
            b9.c cVar = this.f13123f;
            kotlin.jvm.internal.r.c(cVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f13123f = null;
            this.f13120a = -1;
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f13120a == -1) {
                a();
            }
            return this.f13120a == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(CharSequence input, int i10, int i11, w8.p getNextMatch) {
        kotlin.jvm.internal.r.e(input, "input");
        kotlin.jvm.internal.r.e(getNextMatch, "getNextMatch");
        this.f13116a = input;
        this.f13117b = i10;
        this.f13118c = i11;
        this.f13119d = getNextMatch;
    }

    @Override // kotlin.sequences.f
    public Iterator iterator() {
        return new a();
    }
}
