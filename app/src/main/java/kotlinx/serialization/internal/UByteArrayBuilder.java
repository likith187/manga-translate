package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import n8.y;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UByteArrayBuilder extends PrimitiveArrayBuilder<y> {
    private byte[] buffer;
    private int position;

    public /* synthetic */ UByteArrayBuilder(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    /* JADX INFO: renamed from: append-7apg3OU$kotlinx_serialization_core, reason: not valid java name */
    public final void m20append7apg3OU$kotlinx_serialization_core(byte b10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        byte[] bArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        y.o(bArr, position$kotlinx_serialization_core, b10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ y build$kotlinx_serialization_core() {
        return y.a(m21buildTcUX1vc$kotlinx_serialization_core());
    }

    /* JADX INFO: renamed from: build-TcUX1vc$kotlinx_serialization_core, reason: not valid java name */
    public byte[] m21buildTcUX1vc$kotlinx_serialization_core() {
        byte[] bArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(bArrCopyOf, "copyOf(...)");
        return y.d(bArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        if (y.k(this.buffer) < i10) {
            byte[] bArr = this.buffer;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, b9.d.c(i10, y.k(bArr) * 2));
            r.d(bArrCopyOf, "copyOf(...)");
            this.buffer = y.d(bArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    private UByteArrayBuilder(byte[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = y.k(bufferWithData);
        ensureCapacity$kotlinx_serialization_core(10);
    }
}
