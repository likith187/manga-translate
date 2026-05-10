package kotlinx.serialization.json.internal;

import kotlin.collections.h;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class CharArrayPoolBase {
    private final h arrays = new h();
    private int charsTotal;

    protected final void releaseImpl(char[] array) {
        r.e(array, "array");
        synchronized (this) {
            try {
                if (this.charsTotal + array.length < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                    this.charsTotal += array.length;
                    this.arrays.addLast(array);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final char[] take(int i10) {
        char[] cArr;
        synchronized (this) {
            cArr = (char[]) this.arrays.n();
            if (cArr != null) {
                this.charsTotal -= cArr.length;
            } else {
                cArr = null;
            }
        }
        return cArr == null ? new char[i10] : cArr;
    }
}
