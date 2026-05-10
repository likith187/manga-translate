package kotlin.jvm.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f13071a;

    public g0(int i10) {
        this.f13071a = new ArrayList(i10);
    }

    public void a(Object obj) {
        this.f13071a.add(obj);
    }

    public void b(Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                ArrayList arrayList = this.f13071a;
                arrayList.ensureCapacity(arrayList.size() + objArr.length);
                Collections.addAll(this.f13071a, objArr);
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            this.f13071a.addAll((Collection) obj);
            return;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                this.f13071a.add(it.next());
            }
            return;
        }
        if (obj instanceof Iterator) {
            Iterator it2 = (Iterator) obj;
            while (it2.hasNext()) {
                this.f13071a.add(it2.next());
            }
        } else {
            throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
        }
    }

    public int c() {
        return this.f13071a.size();
    }

    public Object[] d(Object[] objArr) {
        return this.f13071a.toArray(objArr);
    }
}
