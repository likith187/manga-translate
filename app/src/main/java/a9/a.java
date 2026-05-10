package a9;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends z8.a {
    @Override // z8.a
    public Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        r.d(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }

    @Override // z8.c
    public double nextDouble(double d10) {
        return ThreadLocalRandom.current().nextDouble(d10);
    }

    @Override // z8.c
    public int nextInt(int i10, int i11) {
        return ThreadLocalRandom.current().nextInt(i10, i11);
    }

    @Override // z8.c
    public long nextLong(long j10) {
        return ThreadLocalRandom.current().nextLong(j10);
    }

    @Override // z8.c
    public long nextLong(long j10, long j11) {
        return ThreadLocalRandom.current().nextLong(j10, j11);
    }
}
