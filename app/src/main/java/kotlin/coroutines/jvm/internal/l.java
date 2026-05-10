package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends d implements m {
    private final int arity;

    public l(int i10, kotlin.coroutines.d dVar) {
        super(dVar);
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.m
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        String strE = d0.e(this);
        r.d(strE, "renderLambdaToString(...)");
        return strE;
    }

    public l(int i10) {
        this(i10, null);
    }
}
