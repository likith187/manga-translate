package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import n8.a0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class UIntArrayBuilder extends PrimitiveArrayBuilder<a0> {
    private int[] buffer;
    private int position;

    public /* synthetic */ UIntArrayBuilder(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    /* JADX INFO: renamed from: append-WZ4Q5Ns$kotlinx_serialization_core, reason: not valid java name */
    public final void m28appendWZ4Q5Ns$kotlinx_serialization_core(int i10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        int[] iArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        a0.o(iArr, position$kotlinx_serialization_core, i10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ a0 build$kotlinx_serialization_core() {
        return a0.a(m29buildhP7Qyg$kotlinx_serialization_core());
    }

    /* JADX INFO: renamed from: build--hP7Qyg$kotlinx_serialization_core, reason: not valid java name */
    public int[] m29buildhP7Qyg$kotlinx_serialization_core() {
        int[] iArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(iArrCopyOf, "copyOf(...)");
        return a0.d(iArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        if (a0.k(this.buffer) < i10) {
            int[] iArr = this.buffer;
            int[] iArrCopyOf = Arrays.copyOf(iArr, b9.d.c(i10, a0.k(iArr) * 2));
            r.d(iArrCopyOf, "copyOf(...)");
            this.buffer = a0.d(iArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    private UIntArrayBuilder(int[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = a0.k(bufferWithData);
        ensureCapacity$kotlinx_serialization_core(10);
    }
}
