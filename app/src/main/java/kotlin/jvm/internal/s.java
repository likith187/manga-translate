package kotlin.jvm.internal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s implements m, Serializable {
    private final int arity;

    public s(int i10) {
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.m
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strF = d0.f(this);
        r.d(strF, "renderLambdaToString(...)");
        return strF;
    }
}
