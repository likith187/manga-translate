package t9;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class j extends b0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b0 f15760f;

    public j(b0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f15760f = delegate;
    }

    @Override // t9.b0
    public b0 a() {
        return this.f15760f.a();
    }

    @Override // t9.b0
    public b0 b() {
        return this.f15760f.b();
    }

    @Override // t9.b0
    public long c() {
        return this.f15760f.c();
    }

    @Override // t9.b0
    public b0 d(long j10) {
        return this.f15760f.d(j10);
    }

    @Override // t9.b0
    public boolean e() {
        return this.f15760f.e();
    }

    @Override // t9.b0
    public void f() throws InterruptedIOException {
        this.f15760f.f();
    }

    @Override // t9.b0
    public b0 g(long j10, TimeUnit unit) {
        kotlin.jvm.internal.r.e(unit, "unit");
        return this.f15760f.g(j10, unit);
    }

    public final b0 i() {
        return this.f15760f;
    }

    public final j j(b0 delegate) {
        kotlin.jvm.internal.r.e(delegate, "delegate");
        this.f15760f = delegate;
        return this;
    }
}
