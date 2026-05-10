package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.ExperimentalSerializationApi;
import n8.c0;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalSerializationApi
public final class ULongArrayBuilder extends PrimitiveArrayBuilder<c0> {
    private long[] buffer;
    private int position;

    public /* synthetic */ ULongArrayBuilder(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    /* JADX INFO: renamed from: append-VKZWuLQ$kotlinx_serialization_core, reason: not valid java name */
    public final void m36appendVKZWuLQ$kotlinx_serialization_core(long j10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        long[] jArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        c0.o(jArr, position$kotlinx_serialization_core, j10);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public /* bridge */ /* synthetic */ c0 build$kotlinx_serialization_core() {
        return c0.a(m37buildY2RjT0g$kotlinx_serialization_core());
    }

    /* JADX INFO: renamed from: build-Y2RjT0g$kotlinx_serialization_core, reason: not valid java name */
    public long[] m37buildY2RjT0g$kotlinx_serialization_core() {
        long[] jArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(jArrCopyOf, "copyOf(...)");
        return c0.d(jArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        if (c0.k(this.buffer) < i10) {
            long[] jArr = this.buffer;
            long[] jArrCopyOf = Arrays.copyOf(jArr, b9.d.c(i10, c0.k(jArr) * 2));
            r.d(jArrCopyOf, "copyOf(...)");
            this.buffer = c0.d(jArrCopyOf);
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    private ULongArrayBuilder(long[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = c0.k(bufferWithData);
        ensureCapacity$kotlinx_serialization_core(10);
    }
}
