package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class LongArrayBuilder extends PrimitiveArrayBuilder<long[]> {
    private long[] buffer;
    private int position;

    public LongArrayBuilder(long[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(long j10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        long[] jArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        jArr[position$kotlinx_serialization_core] = j10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        long[] jArr = this.buffer;
        if (jArr.length < i10) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, b9.d.c(i10, jArr.length * 2));
            r.d(jArrCopyOf, "copyOf(...)");
            this.buffer = jArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public long[] build$kotlinx_serialization_core() {
        long[] jArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(jArrCopyOf, "copyOf(...)");
        return jArrCopyOf;
    }
}
