package p7;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class n implements m {

    /* JADX INFO: renamed from: a */
    private m f15211a;

    private static class b {

        /* JADX INFO: renamed from: a */
        private static n f15212a = new n();
    }

    /* synthetic */ n(a aVar) {
        this();
    }

    private void b(Context context) {
        if (this.f15211a != null) {
            return;
        }
        if (s7.h.a(context)) {
            this.f15211a = new l();
        } else {
            this.f15211a = new q();
        }
    }

    public static n c() {
        return b.f15212a;
    }

    @Override // p7.m
    public void a(Context context, o7.f fVar) {
        b(context);
        this.f15211a.a(context, fVar);
    }

    private n() {
    }
}
