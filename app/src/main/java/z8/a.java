package z8;

import java.util.Random;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends c {
    public abstract Random a();

    @Override // z8.c
    public int nextBits(int i10) {
        return d.f(a().nextInt(), i10);
    }

    @Override // z8.c
    public boolean nextBoolean() {
        return a().nextBoolean();
    }

    @Override // z8.c
    public byte[] nextBytes(byte[] array) {
        r.e(array, "array");
        a().nextBytes(array);
        return array;
    }

    @Override // z8.c
    public double nextDouble() {
        return a().nextDouble();
    }

    @Override // z8.c
    public float nextFloat() {
        return a().nextFloat();
    }

    @Override // z8.c
    public int nextInt() {
        return a().nextInt();
    }

    @Override // z8.c
    public long nextLong() {
        return a().nextLong();
    }

    @Override // z8.c
    public int nextInt(int i10) {
        return a().nextInt(i10);
    }
}
