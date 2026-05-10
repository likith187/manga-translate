package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseIntArray f1826a = new SparseIntArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap f1827b = new HashMap();

    public interface a {
    }

    public void a(int i10, a aVar) {
        HashSet hashSet = (HashSet) this.f1827b.get(Integer.valueOf(i10));
        if (hashSet == null) {
            hashSet = new HashSet();
            this.f1827b.put(Integer.valueOf(i10), hashSet);
        }
        hashSet.add(new WeakReference(aVar));
    }

    public void b(int i10, a aVar) {
        HashSet<WeakReference> hashSet = (HashSet) this.f1827b.get(Integer.valueOf(i10));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (WeakReference weakReference : hashSet) {
            a aVar2 = (a) weakReference.get();
            if (aVar2 == null || aVar2 == aVar) {
                arrayList.add(weakReference);
            }
        }
        hashSet.removeAll(arrayList);
    }
}
