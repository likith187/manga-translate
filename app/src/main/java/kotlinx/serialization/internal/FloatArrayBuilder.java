package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatArrayBuilder extends PrimitiveArrayBuilder<float[]> {
    private float[] buffer;
    private int position;

    public FloatArrayBuilder(float[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(float f10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        float[] fArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        fArr[position$kotlinx_serialization_core] = f10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        float[] fArr = this.buffer;
        if (fArr.length < i10) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, b9.d.c(i10, fArr.length * 2));
            r.d(fArrCopyOf, "copyOf(...)");
            this.buffer = fArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public float[] build$kotlinx_serialization_core() {
        float[] fArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(fArrCopyOf, "copyOf(...)");
        return fArrCopyOf;
    }
}
