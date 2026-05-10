package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayPool8k extends ByteArrayPoolBase {
    public static final ByteArrayPool8k INSTANCE = new ByteArrayPool8k();

    private ByteArrayPool8k() {
    }

    public final void release(byte[] array) {
        r.e(array, "array");
        releaseImpl(array);
    }

    public final byte[] take() {
        return super.take(8196);
    }
}
