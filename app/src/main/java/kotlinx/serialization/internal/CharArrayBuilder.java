package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class CharArrayBuilder extends PrimitiveArrayBuilder<char[]> {
    private char[] buffer;
    private int position;

    public CharArrayBuilder(char[] bufferWithData) {
        r.e(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        ensureCapacity$kotlinx_serialization_core(10);
    }

    public final void append$kotlinx_serialization_core(char c10) {
        PrimitiveArrayBuilder.ensureCapacity$kotlinx_serialization_core$default(this, 0, 1, null);
        char[] cArr = this.buffer;
        int position$kotlinx_serialization_core = getPosition$kotlinx_serialization_core();
        this.position = position$kotlinx_serialization_core + 1;
        cArr[position$kotlinx_serialization_core] = c10;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public void ensureCapacity$kotlinx_serialization_core(int i10) {
        char[] cArr = this.buffer;
        if (cArr.length < i10) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, b9.d.c(i10, cArr.length * 2));
            r.d(cArrCopyOf, "copyOf(...)");
            this.buffer = cArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public int getPosition$kotlinx_serialization_core() {
        return this.position;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArrayBuilder
    public char[] build$kotlinx_serialization_core() {
        char[] cArrCopyOf = Arrays.copyOf(this.buffer, getPosition$kotlinx_serialization_core());
        r.d(cArrCopyOf, "copyOf(...)");
        return cArrCopyOf;
    }
}
