package g4;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f12063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g4.b f12064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f12065c;

    private static class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private OnBackInvokedCallback f12066a;

        private b() {
        }

        @Override // g4.c.d
        public void a(g4.b bVar, View view, boolean z10) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f12066a == null && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback onBackInvokedCallbackC = c(bVar);
                this.f12066a = onBackInvokedCallbackC;
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(z10 ? 1000000 : 0, onBackInvokedCallbackC);
            }
        }

        @Override // g4.c.d
        public void b(View view) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (onBackInvokedDispatcherFindOnBackInvokedDispatcher == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f12066a);
            this.f12066a = null;
        }

        OnBackInvokedCallback c(final g4.b bVar) {
            Objects.requireNonNull(bVar);
            return new OnBackInvokedCallback() { // from class: g4.d
                public final void onBackInvoked() {
                    bVar.handleBackInvoked();
                }
            };
        }

        boolean d() {
            return this.f12066a != null;
        }
    }

    /* JADX INFO: renamed from: g4.c$c, reason: collision with other inner class name */
    private static class C0144c extends b {

        /* JADX INFO: renamed from: g4.c$c$a */
        class a implements OnBackAnimationCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ g4.b f12067a;

            a(g4.b bVar) {
                this.f12067a = bVar;
            }

            public void onBackCancelled() {
                if (C0144c.this.d()) {
                    this.f12067a.cancelBackProgress();
                }
            }

            public void onBackInvoked() {
                this.f12067a.handleBackInvoked();
            }

            public void onBackProgressed(BackEvent backEvent) {
                if (C0144c.this.d()) {
                    this.f12067a.updateBackProgress(new androidx.activity.b(backEvent));
                }
            }

            public void onBackStarted(BackEvent backEvent) {
                if (C0144c.this.d()) {
                    this.f12067a.startBackProgress(new androidx.activity.b(backEvent));
                }
            }
        }

        private C0144c() {
            super();
        }

        @Override // g4.c.b
        OnBackInvokedCallback c(g4.b bVar) {
            return new a(bVar);
        }
    }

    private interface d {
        void a(g4.b bVar, View view, boolean z10);

        void b(View view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(View view) {
        this((g4.b) view, view);
    }

    private static d a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            return new C0144c();
        }
        if (i10 >= 33) {
            return new b();
        }
        return null;
    }

    private void d(boolean z10) {
        d dVar = this.f12063a;
        if (dVar != null) {
            dVar.a(this.f12064b, this.f12065c, z10);
        }
    }

    public boolean b() {
        return this.f12063a != null;
    }

    public void c() {
        d(false);
    }

    public void e() {
        d(true);
    }

    public void f() {
        d dVar = this.f12063a;
        if (dVar != null) {
            dVar.b(this.f12065c);
        }
    }

    public c(g4.b bVar, View view) {
        this.f12063a = a();
        this.f12064b = bVar;
        this.f12065c = view;
    }
}
