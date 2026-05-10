package o8;

import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends kotlin.collections.f {
    public final boolean c(Map.Entry element) {
        r.e(element, "element");
        return d(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return c((Map.Entry) obj);
        }
        return false;
    }

    public abstract boolean d(Map.Entry entry);

    public abstract /* bridge */ boolean e(Map.Entry entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }
}
