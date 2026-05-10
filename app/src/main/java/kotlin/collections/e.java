package kotlin.collections;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e extends AbstractList implements List, x8.d {
    protected e() {
    }

    public abstract int a();

    public abstract Object c(int i10);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i10) {
        return c(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return a();
    }
}
