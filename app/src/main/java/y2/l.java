package y2;

import y2.b;

/* JADX INFO: loaded from: classes.dex */
abstract class l {

    public static abstract class a {
        public abstract l a();

        abstract a b(w2.b bVar);

        abstract a c(w2.c cVar);

        abstract a d(w2.e eVar);

        public abstract a e(m mVar);

        public abstract a f(String str);
    }

    l() {
    }

    public static a a() {
        return new b.C0242b();
    }

    public abstract w2.b b();

    abstract w2.c c();

    public byte[] d() {
        return (byte[]) e().apply(c().b());
    }

    abstract w2.e e();

    public abstract m f();

    public abstract String g();
}
