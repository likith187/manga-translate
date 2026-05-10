package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public class e0 {
    public c9.g a(n nVar) {
        return nVar;
    }

    public c9.c b(Class cls) {
        return new h(cls);
    }

    public c9.f c(Class cls, String str) {
        return new v(cls, str);
    }

    public c9.i d(w wVar) {
        return wVar;
    }

    public String e(m mVar) {
        String string = mVar.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String f(s sVar) {
        return e(sVar);
    }
}
