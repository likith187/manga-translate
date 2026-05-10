package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ShortArrayBuilder extends PrimitiveArrayBuilder<short[]> {
    private short[] buffer;
    private int position;

    public ShortArrayBuilder(short[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(short s10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        short[] sArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        sArr[position$kotlinx_serialization_core] = s10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        short[] sArr = this.buffer;
        if (sArr.length < i10) {
            short[] sArrCopyOf = Arrays.copyOf(sArr, b9.d.c(i10, sArr.length * 2));
            r.d(sArrCopyOf, "copyOf(...)");
            this.buffer = sArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public short[] build$kotlinx_serialization_core() {
        short[] sArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(sArrCopyOf, "copyOf(...)");
        return sArrCopyOf;
    }
}
