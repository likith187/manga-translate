package kotlin.jvm.internal;

import c9.h;
import c9.i;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w extends y implements c9.i {
    public w() {
    }

    @Override // kotlin.jvm.internal.e
    protected c9.b computeReflected() {
        return d0.d(this);
    }

    public abstract /* synthetic */ Object get();

    @Override // c9.i
    public Object getDelegate() {
        return ((c9.i) getReflected()).getDelegate();
    }

    @Override // kotlin.jvm.internal.y
    public /* bridge */ /* synthetic */ h.a getGetter() {
        getGetter();
        return null;
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public Object mo8invoke() {
        return get();
    }

    public w(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.y
    public i.a getGetter() {
        ((c9.i) getReflected()).getGetter();
        return null;
    }

    public w(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }
}
