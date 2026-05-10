package kotlin.collections;

import java.util.AbstractCollection;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends AbstractCollection implements Collection, x8.b {
    protected d() {
    }

    public abstract int a();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }
}
