package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayBuilder extends PrimitiveArrayBuilder<byte[]> {
    private byte[] buffer;
    private int position;

    public ByteArrayBuilder(byte[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(byte b10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        byte[] bArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        bArr[position$kotlinx_serialization_core] = b10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        byte[] bArr = this.buffer;
        if (bArr.length < i10) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, b9.d.c(i10, bArr.length * 2));
            r.d(bArrCopyOf, "copyOf(...)");
            this.buffer = bArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public byte[] build$kotlinx_serialization_core() {
        byte[] bArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }
}
