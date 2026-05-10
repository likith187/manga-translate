package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import n8.f0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UShortArrayBuilder extends PrimitiveArrayBuilder<f0> {
    private short[] buffer;
    private int position;

    public /* synthetic */ UShortArrayBuilder(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    /* JADX INFO: renamed from: append-xj2QHRw$kotlinx_serialization_core, reason: not valid java name */
    public final void m44appendxj2QHRw$kotlinx_serialization_core(short s10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        short[] sArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        f0.o(sArr, position$kotlinx_serialization_core, s10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ f0 build$kotlinx_serialization_core() {
        return f0.a(m45buildamswpOA$kotlinx_serialization_core());
    }

    /* JADX INFO: renamed from: build-amswpOA$kotlinx_serialization_core, reason: not valid java name */
    public short[] m45buildamswpOA$kotlinx_serialization_core() {
        short[] sArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(sArrCopyOf, "copyOf(...)");
        return f0.d(sArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        if (f0.k(this.buffer) < i10) {
            short[] sArr = this.buffer;
            short[] sArrCopyOf = Arrays.copyOf(sArr, b9.d.c(i10, f0.k(sArr) * 2));
            r.d(sArrCopyOf, "copyOf(...)");
            this.buffer = f0.d(sArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    private UShortArrayBuilder(short[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = f0.k(bufferWithData);
        ensureCapacity$kotlinx_serialization_core(10);
    }
}
