package r8;

import java.io.Serializable;
import kotlin.collections.i;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class c extends kotlin.collections.c implements a, Serializable {
    private final Enum<Object>[] entries;

    public c(Enum<Object>[] entries) {
        r.e(entries, "entries");
        this.entries = entries;
    }

    private final Object writeReplace() {
        return new d(this.entries);
    }

    @Override // kotlin.collections.a, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return contains((Enum<Object>) obj);
        }
        return false;
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.entries.length;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return indexOf((Enum<Object>) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Enum) {
            return lastIndexOf((Enum<Object>) obj);
        }
        return -1;
    }

    public boolean contains(Enum<Object> element) {
        r.e(element, "element");
        return ((Enum) i.H(this.entries, element.ordinal())) == element;
    }

    @Override // kotlin.collections.c, java.util.List
    public Enum<Object> get(int i10) {
        kotlin.collections.c.Companion.b(i10, this.entries.length);
        return this.entries[i10];
    }

    public int indexOf(Enum<Object> element) {
        r.e(element, "element");
        int iOrdinal = element.ordinal();
        if (((Enum) i.H(this.entries, iOrdinal)) == element) {
            return iOrdinal;
        }
        return -1;
    }

    public int lastIndexOf(Enum<Object> element) {
        r.e(element, "element");
        return indexOf((Object) element);
    }
}
