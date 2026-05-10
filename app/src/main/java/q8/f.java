package q8;

import java.util.Comparator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class f implements Comparator {
    public static final f INSTANCE = new f();

    private f() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable a10, Comparable b10) {
        r.e(a10, "a");
        r.e(b10, "b");
        return b10.compareTo(a10);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return e.INSTANCE;
    }
}
