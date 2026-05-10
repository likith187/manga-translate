package androidx.core.view;

import android.os.Build;
import android.view.ScrollFeedbackProvider;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f2039a;

    private static class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ScrollFeedbackProvider f2040a;

        b(View view) {
            this.f2040a = ScrollFeedbackProvider.createProvider(view);
        }

        @Override // androidx.core.view.e0.d
        public void a(int i10, int i11, int i12, boolean z10) {
            this.f2040a.onScrollLimit(i10, i11, i12, z10);
        }

        @Override // androidx.core.view.e0.d
        public void b(int i10, int i11, int i12, int i13) {
            this.f2040a.onScrollProgress(i10, i11, i12, i13);
        }
    }

    private static class c implements d {
        private c() {
        }

        @Override // androidx.core.view.e0.d
        public void a(int i10, int i11, int i12, boolean z10) {
        }

        @Override // androidx.core.view.e0.d
        public void b(int i10, int i11, int i12, int i13) {
        }
    }

    private interface d {
        void a(int i10, int i11, int i12, boolean z10);

        void b(int i10, int i11, int i12, int i13);
    }

    private e0(View view) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f2039a = new b(view);
        } else {
            this.f2039a = new c();
        }
    }

    public static e0 a(View view) {
        return new e0(view);
    }

    public void b(int i10, int i11, int i12, boolean z10) {
        this.f2039a.a(i10, i11, i12, z10);
    }

    public void c(int i10, int i11, int i12, int i13) {
        this.f2039a.b(i10, i11, i12, i13);
    }
}
