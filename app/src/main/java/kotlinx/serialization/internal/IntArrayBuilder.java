package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class IntArrayBuilder extends PrimitiveArrayBuilder<int[]> {
    private int[] buffer;
    private int position;

    public IntArrayBuilder(int[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(int i10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        int[] iArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        iArr[position$kotlinx_serialization_core] = i10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        int[] iArr = this.buffer;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, b9.d.c(i10, iArr.length * 2));
            r.d(iArrCopyOf, "copyOf(...)");
            this.buffer = iArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int[] build$kotlinx_serialization_core() {
        int[] iArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(iArrCopyOf, "copyOf(...)");
        return iArrCopyOf;
    }
}
