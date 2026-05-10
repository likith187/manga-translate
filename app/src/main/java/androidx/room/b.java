package androidx.room;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends n {
    public b(h hVar) {
        super(hVar);
    }

    protected abstract void g(s0.f fVar, Object obj);

    public final int h(Object obj) {
        s0.f fVarA = a();
        try {
            g(fVarA, obj);
            return fVarA.H();
        } finally {
            f(fVarA);
        }
    }

    public final int i(Iterable iterable) {
        s0.f fVarA = a();
        try {
            Iterator it = iterable.iterator();
            int iH = 0;
            while (it.hasNext()) {
                g(fVarA, it.next());
                iH += fVarA.H();
            }
            return iH;
        } finally {
            f(fVarA);
        }
    }
}
