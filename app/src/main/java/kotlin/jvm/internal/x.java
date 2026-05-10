package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public class x extends w {
    public x(c9.f fVar, String str, String str2) {
        super(e.NO_RECEIVER, ((g) fVar).d(), str, str2, !(fVar instanceof c9.c) ? 1 : 0);
    }

    @Override // kotlin.jvm.internal.w
    public Object get() {
        getGetter();
        throw null;
    }

    public x(Class cls, String str, String str2, int i10) {
        super(e.NO_RECEIVER, cls, str, str2, i10);
    }

    public x(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
