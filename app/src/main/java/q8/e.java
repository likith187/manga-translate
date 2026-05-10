package q8;

import java.util.Comparator;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class e implements Comparator {
    public static final e INSTANCE = new e();

    private e() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a */
    public int compare(Comparable a10, Comparable b10) {
        r.e(a10, "a");
        r.e(b10, "b");
        return a10.compareTo(b10);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return f.INSTANCE;
    }
}
