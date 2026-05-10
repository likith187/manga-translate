package kotlin.io;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
abstract class m extends l {
    public static final h l(File file, i direction) {
        kotlin.jvm.internal.r.e(file, "<this>");
        kotlin.jvm.internal.r.e(direction, "direction");
        return new h(file, direction);
    }

    public static final h m(File file) {
        kotlin.jvm.internal.r.e(file, "<this>");
        return l(file, i.BOTTOM_UP);
    }

    public static final h n(File file) {
        kotlin.jvm.internal.r.e(file, "<this>");
        return l(file, i.TOP_DOWN);
    }
}
