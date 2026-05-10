package kotlinx.serialization.json.internal;

import kotlin.collections.h;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayPoolBase {
    private final h arrays = new h();
    private int bytesTotal;

    protected final void releaseImpl(byte[] array) {
        r.e(array, "array");
        synchronized (this) {
            try {
                if (this.bytesTotal + array.length < ArrayPoolsKt.MAX_CHARS_IN_POOL) {
                    this.bytesTotal += array.length / 2;
                    this.arrays.addLast(array);
                }
                h0 h0Var = h0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final byte[] take(int i10) {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.arrays.n();
            if (bArr != null) {
                this.bytesTotal -= bArr.length / 2;
            } else {
                bArr = null;
            }
        }
        return bArr == null ? new byte[i10] : bArr;
    }
}
