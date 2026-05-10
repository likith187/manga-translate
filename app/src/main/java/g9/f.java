package g9;

import kotlinx.coroutines.x0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends x0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f12143f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f12144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f12145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f12146j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f12147k = F0();

    public f(int i10, int i11, long j10, String str) {
        this.f12143f = i10;
        this.f12144h = i11;
        this.f12145i = j10;
        this.f12146j = str;
    }

    private final a F0() {
        return new a(this.f12143f, this.f12144h, this.f12145i, this.f12146j);
    }

    public final void G0(Runnable runnable, i iVar, boolean z10) {
        this.f12147k.G(runnable, iVar, z10);
    }

    @Override // kotlinx.coroutines.y
    public void x0(kotlin.coroutines.g gVar, Runnable runnable) {
        a.I(this.f12147k, runnable, null, false, 6, null);
    }
}
