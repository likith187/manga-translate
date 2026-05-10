package b9;

import java.util.NoSuchElementException;
import kotlin.collections.h0;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4269c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4270f;

    public b(int i10, int i11, int i12) {
        this.f4267a = i12;
        this.f4268b = i11;
        boolean z10 = false;
        if (i12 <= 0 ? i10 >= i11 : i10 <= i11) {
            z10 = true;
        }
        this.f4269c = z10;
        this.f4270f = z10 ? i10 : i11;
    }

    @Override // kotlin.collections.h0
    public int a() {
        int i10 = this.f4270f;
        if (i10 != this.f4268b) {
            this.f4270f = this.f4267a + i10;
        } else {
            if (!this.f4269c) {
                throw new NoSuchElementException();
            }
            this.f4269c = false;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4269c;
    }
}
