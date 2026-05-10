package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.h0;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f2053a;

    /* JADX INFO: Access modifiers changed from: private */
    static class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f2054a;

        a(View view) {
            this.f2054a = view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(View view) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
        }

        @Override // androidx.core.view.h0.c
        void a() {
            View view = this.f2054a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f2054a.getWindowToken(), 0);
            }
        }

        @Override // androidx.core.view.h0.c
        void b() {
            final View viewFindViewById = this.f2054a;
            if (viewFindViewById == null) {
                return;
            }
            if (viewFindViewById.isInEditMode() || viewFindViewById.onCheckIsTextEditor()) {
                viewFindViewById.requestFocus();
            } else {
                viewFindViewById = viewFindViewById.getRootView().findFocus();
            }
            if (viewFindViewById == null) {
                viewFindViewById = this.f2054a.getRootView().findViewById(R.id.content);
            }
            if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
                return;
            }
            viewFindViewById.post(new Runnable() { // from class: androidx.core.view.g0
                @Override // java.lang.Runnable
                public final void run() {
                    h0.a.d(viewFindViewById);
                }
            });
        }
    }

    private static class c {
        c() {
        }

        abstract void a();

        abstract void b();
    }

    public h0(View view) {
        this.f2053a = new b(view);
    }

    public void a() {
        this.f2053a.a();
    }

    public void b() {
        this.f2053a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f2055b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowInsetsController f2056c;

        b(View view) {
            super(view);
            this.f2055b = view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void f(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i10) {
            atomicBoolean.set((i10 & 8) != 0);
        }

        @Override // androidx.core.view.h0.a, androidx.core.view.h0.c
        void a() {
            View view;
            WindowInsetsController windowInsetsController = this.f2056c;
            if (windowInsetsController == null) {
                View view2 = this.f2055b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.a();
                return;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.core.view.i0
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i10) {
                    h0.b.f(atomicBoolean, windowInsetsController2, i10);
                }
            };
            windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            if (!atomicBoolean.get() && (view = this.f2055b) != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f2055b.getWindowToken(), 0);
            }
            windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            windowInsetsController.hide(WindowInsets.Type.ime());
        }

        @Override // androidx.core.view.h0.a, androidx.core.view.h0.c
        void b() {
            View view = this.f2055b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f2056c;
            if (windowInsetsController == null) {
                View view2 = this.f2055b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            }
            super.b();
        }

        b(WindowInsetsController windowInsetsController) {
            super(null);
            this.f2056c = windowInsetsController;
        }
    }

    h0(WindowInsetsController windowInsetsController) {
        this.f2053a = new b(windowInsetsController);
    }
}
