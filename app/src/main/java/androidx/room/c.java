package androidx.room;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends n {
    public c(h hVar) {
        super(hVar);
    }

    protected abstract void g(s0.f fVar, Object obj);

    public final void h(Iterable iterable) {
        s0.f fVarA = a();
        try {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g(fVarA, it.next());
                fVarA.w0();
            }
        } finally {
            f(fVarA);
        }
    }

    public final void i(Object obj) {
        s0.f fVarA = a();
        try {
            g(fVarA, obj);
            fVarA.w0();
        } finally {
            f(fVarA);
        }
    }

    public final long j(Object obj) {
        s0.f fVarA = a();
        try {
            g(fVarA, obj);
            return fVarA.w0();
        } finally {
            f(fVarA);
        }
    }

    public final List k(Collection collection) {
        s0.f fVarA = a();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator it = collection.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                g(fVarA, it.next());
                arrayList.add(i10, Long.valueOf(fVarA.w0()));
                i10++;
            }
            return arrayList;
        } finally {
            f(fVarA);
        }
    }
}
