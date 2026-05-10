package kotlinx.serialization.json.internal;

import com.oplus.aiunit.core.ConfigPackage;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayPool extends ByteArrayPoolBase {
    public static final ByteArrayPool INSTANCE = new ByteArrayPool();

    private ByteArrayPool() {
    }

    public final void release(byte[] array) {
        r.e(array, "array");
        releaseImpl(array);
    }

    public final byte[] take() {
        return super.take(ConfigPackage.FRAME_SIZE_1);
    }
}
