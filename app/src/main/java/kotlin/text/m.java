package kotlin.text;

import java.util.Iterator;
import java.util.List;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
final class m implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matcher f13158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f13159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f13160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f13161d;

    public static final class a extends kotlin.collections.c {
        a() {
        }

        public /* bridge */ boolean a(String str) {
            return super.contains(str);
        }

        @Override // kotlin.collections.c, java.util.List
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public String get(int i10) {
            String strGroup = m.this.e().group(i10);
            return strGroup == null ? "" : strGroup;
        }

        @Override // kotlin.collections.a, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return a((String) obj);
            }
            return false;
        }

        public /* bridge */ int d(String str) {
            return super.indexOf(str);
        }

        public /* bridge */ int e(String str) {
            return super.lastIndexOf(str);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return m.this.e().groupCount() + 1;
        }

        @Override // kotlin.collections.c, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof String) {
                return d((String) obj);
            }
            return -1;
        }

        @Override // kotlin.collections.c, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return e((String) obj);
            }
            return -1;
        }
    }

    public static final class b extends kotlin.collections.a implements k {

        static final class a extends kotlin.jvm.internal.s implements w8.l {
            a() {
                super(1);
            }

            @Override // w8.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final j invoke(int i10) {
                return b.this.get(i10);
            }
        }

        b() {
        }

        public /* bridge */ boolean a(j jVar) {
            return super.contains(jVar);
        }

        @Override // kotlin.collections.a, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof j) {
                return a((j) obj);
            }
            return false;
        }

        @Override // kotlin.text.k
        public j get(int i10) {
            b9.c cVarI = o.i(m.this.e(), i10);
            if (cVarI.h().intValue() < 0) {
                return null;
            }
            String strGroup = m.this.e().group(i10);
            kotlin.jvm.internal.r.d(strGroup, "group(...)");
            return new j(strGroup, cVarI);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return m.this.e().groupCount() + 1;
        }

        @Override // kotlin.collections.a, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return kotlin.sequences.i.o(kotlin.collections.o.L(kotlin.collections.o.i(this)), new a()).iterator();
        }
    }

    public m(Matcher matcher, CharSequence input) {
        kotlin.jvm.internal.r.e(matcher, "matcher");
        kotlin.jvm.internal.r.e(input, "input");
        this.f13158a = matcher;
        this.f13159b = input;
        this.f13160c = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MatchResult e() {
        return this.f13158a;
    }

    @Override // kotlin.text.l
    public List a() {
        if (this.f13161d == null) {
            this.f13161d = new a();
        }
        List list = this.f13161d;
        kotlin.jvm.internal.r.b(list);
        return list;
    }

    @Override // kotlin.text.l
    public k b() {
        return this.f13160c;
    }

    @Override // kotlin.text.l
    public b9.c c() {
        return o.h(e());
    }

    @Override // kotlin.text.l
    public l next() {
        int iEnd = e().end() + (e().end() == e().start() ? 1 : 0);
        if (iEnd > this.f13159b.length()) {
            return null;
        }
        Matcher matcher = this.f13158a.pattern().matcher(this.f13159b);
        kotlin.jvm.internal.r.d(matcher, "matcher(...)");
        return o.f(matcher, iEnd, this.f13159b);
    }
}
