package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends kotlinx.coroutines.a implements kotlin.coroutines.jvm.internal.e {

    /* JADX INFO: renamed from: f */
    public final kotlin.coroutines.d f13257f;

    public c0(kotlin.coroutines.g gVar, kotlin.coroutines.d dVar) {
        super(gVar, true, true);
        this.f13257f = dVar;
    }

    @Override // kotlinx.coroutines.m1
    protected final boolean R() {
        return true;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public final kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d dVar = this.f13257f;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlinx.coroutines.m1
    protected void m(Object obj) {
        k.c(kotlin.coroutines.intrinsics.b.c(this.f13257f), kotlinx.coroutines.w.a(obj, this.f13257f), null, 2, null);
    }

    @Override // kotlinx.coroutines.a
    protected void x0(Object obj) {
        kotlin.coroutines.d dVar = this.f13257f;
        dVar.resumeWith(kotlinx.coroutines.w.a(obj, dVar));
    }
}
