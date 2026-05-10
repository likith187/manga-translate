package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class CharArrayPool extends CharArrayPoolBase {
    public static final CharArrayPool INSTANCE = new CharArrayPool();

    private CharArrayPool() {
    }

    public final void release(char[] array) {
        r.e(array, "array");
        releaseImpl(array);
    }

    public final char[] take() {
        return super.take(128);
    }
}
