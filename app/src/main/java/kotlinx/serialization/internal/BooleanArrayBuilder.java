package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class BooleanArrayBuilder extends PrimitiveArrayBuilder<boolean[]> {
    private boolean[] buffer;
    private int position;

    public BooleanArrayBuilder(boolean[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(boolean z10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        boolean[] zArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        zArr[position$kotlinx_serialization_core] = z10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        boolean[] zArr = this.buffer;
        if (zArr.length < i10) {
            boolean[] zArrCopyOf = Arrays.copyOf(zArr, b9.d.c(i10, zArr.length * 2));
            r.d(zArrCopyOf, "copyOf(...)");
            this.buffer = zArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public boolean[] build$kotlinx_serialization_core() {
        boolean[] zArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(zArrCopyOf, "copyOf(...)");
        return zArrCopyOf;
    }
}
