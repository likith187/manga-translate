package androidx.coordinatorlayout.widget;

import androidx.collection.i;
import c0.e;
import c0.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f1887a = new f(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f1888b = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f1889c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f1890d = new HashSet();

    private void e(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f1888b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                e(arrayList2.get(i10), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    private ArrayList f() {
        ArrayList arrayList = (ArrayList) this.f1887a.b();
        return arrayList == null ? new ArrayList() : arrayList;
    }

    private void k(ArrayList arrayList) {
        arrayList.clear();
        this.f1887a.a(arrayList);
    }

    public void a(Object obj, Object obj2) {
        if (!this.f1888b.containsKey(obj) || !this.f1888b.containsKey(obj2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayListF = (ArrayList) this.f1888b.get(obj);
        if (arrayListF == null) {
            arrayListF = f();
            this.f1888b.put(obj, arrayListF);
        }
        arrayListF.add(obj2);
    }

    public void b(Object obj) {
        if (this.f1888b.containsKey(obj)) {
            return;
        }
        this.f1888b.put(obj, null);
    }

    public void c() {
        int size = this.f1888b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = (ArrayList) this.f1888b.k(i10);
            if (arrayList != null) {
                k(arrayList);
            }
        }
        this.f1888b.clear();
    }

    public boolean d(Object obj) {
        return this.f1888b.containsKey(obj);
    }

    public List g(Object obj) {
        return (List) this.f1888b.get(obj);
    }

    public List h(Object obj) {
        int size = this.f1888b.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList2 = (ArrayList) this.f1888b.k(i10);
            if (arrayList2 != null && arrayList2.contains(obj)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f1888b.g(i10));
            }
        }
        return arrayList;
    }

    public ArrayList i() {
        this.f1889c.clear();
        this.f1890d.clear();
        int size = this.f1888b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e(this.f1888b.g(i10), this.f1889c, this.f1890d);
        }
        return this.f1889c;
    }

    public boolean j(Object obj) {
        int size = this.f1888b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList arrayList = (ArrayList) this.f1888b.k(i10);
            if (arrayList != null && arrayList.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
