package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.h0;
import androidx.appcompat.widget.n0;
import androidx.appcompat.widget.o0;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.k;
import androidx.core.view.m0;
import androidx.core.view.u0;
import androidx.core.view.w0;
import androidx.lifecycle.l;
import com.google.android.material.internal.ViewUtils;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import t.h;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl extends androidx.appcompat.app.f implements MenuBuilder.Callback, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final androidx.collection.i f317m0 = new androidx.collection.i();

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final boolean f318n0 = false;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final int[] f319o0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final boolean f320p0 = !"robolectric".equals(Build.FINGERPRINT);
    Runnable A;
    u0 B;
    private boolean C;
    private boolean D;
    ViewGroup E;
    private TextView F;
    private View G;
    private boolean H;
    private boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    private boolean O;
    private PanelFeatureState[] P;
    private PanelFeatureState Q;
    private boolean R;
    private boolean S;
    private boolean T;
    boolean U;
    private Configuration V;
    private int W;
    private int X;
    private int Y;
    private boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private p f321a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private p f322b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    boolean f323c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    int f324d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final Runnable f325e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f326f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private Rect f327g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private Rect f328h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private androidx.appcompat.app.q f329i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private androidx.appcompat.app.r f330j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private OnBackInvokedDispatcher f331k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private OnBackInvokedCallback f332l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Object f333m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final Context f334n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Window f335o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private n f336p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final androidx.appcompat.app.d f337q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    androidx.appcompat.app.a f338r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    MenuInflater f339s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f340t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.appcompat.widget.s f341u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private h f342v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private s f343w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    androidx.appcompat.view.b f344x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ActionBarContextView f345y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    PopupWindow f346z;

    protected static final class PanelFeatureState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f349c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f350d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f351e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f352f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ViewGroup f353g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f354h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f355i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        MenuBuilder f356j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        ListMenuPresenter f357k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Context f358l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f359m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f360n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f361o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f362p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f363q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f364r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Bundle f365s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f366a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f367b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            Bundle f368c;

            class a implements Parcelable.ClassLoaderCreator {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f366a = parcel.readInt();
                boolean z10 = parcel.readInt() == 1;
                savedState.f367b = z10;
                if (z10) {
                    savedState.f368c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f366a);
                parcel.writeInt(this.f367b ? 1 : 0);
                if (this.f367b) {
                    parcel.writeBundle(this.f368c);
                }
            }
        }

        PanelFeatureState(int i10) {
            this.f347a = i10;
        }

        MenuView a(MenuPresenter.Callback callback) {
            if (this.f356j == null) {
                return null;
            }
            if (this.f357k == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.f358l, R$layout.abc_list_menu_item_layout);
                this.f357k = listMenuPresenter;
                listMenuPresenter.setCallback(callback);
                this.f356j.addMenuPresenter(this.f357k);
            }
            return this.f357k.getMenuView(this.f353g);
        }

        public boolean b() {
            if (this.f354h == null) {
                return false;
            }
            return this.f355i != null || this.f357k.getAdapter().getCount() > 0;
        }

        void c(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.f356j;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.removeMenuPresenter(this.f357k);
            }
            this.f356j = menuBuilder;
            if (menuBuilder == null || (listMenuPresenter = this.f357k) == null) {
                return;
            }
            menuBuilder.addMenuPresenter(listMenuPresenter);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                themeNewTheme.applyStyle(i10, true);
            }
            themeNewTheme.resolveAttribute(R$attr.panelMenuListTheme, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                themeNewTheme.applyStyle(i11, true);
            } else {
                themeNewTheme.applyStyle(R$style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.f358l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(R$styleable.AppCompatTheme);
            this.f348b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_panelBackground, 0);
            this.f352f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.f324d0 & 1) != 0) {
                appCompatDelegateImpl.i0(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.f324d0 & ConfigPackage.FRAME_SIZE_5) != 0) {
                appCompatDelegateImpl2.i0(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.f323c0 = false;
            appCompatDelegateImpl3.f324d0 = 0;
        }
    }

    class b implements a0 {
        b() {
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            int iM = a1Var.m();
            int iE1 = AppCompatDelegateImpl.this.e1(a1Var, null);
            if (iM != iE1) {
                a1Var = a1Var.s(a1Var.k(), iE1, a1Var.l(), a1Var.j());
            }
            return m0.V(view, a1Var);
        }
    }

    class c implements ContentFrameLayout.a {
        c() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.g0();
        }
    }

    class d implements Runnable {

        class a extends w0 {
            a() {
            }

            @Override // androidx.core.view.v0
            public void b(View view) {
                AppCompatDelegateImpl.this.f345y.setAlpha(1.0f);
                AppCompatDelegateImpl.this.B.i(null);
                AppCompatDelegateImpl.this.B = null;
            }

            @Override // androidx.core.view.w0, androidx.core.view.v0
            public void c(View view) {
                AppCompatDelegateImpl.this.f345y.setVisibility(0);
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.f346z.showAtLocation(appCompatDelegateImpl.f345y, 55, 0, 0);
            AppCompatDelegateImpl.this.j0();
            if (!AppCompatDelegateImpl.this.U0()) {
                AppCompatDelegateImpl.this.f345y.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f345y.setVisibility(0);
            } else {
                AppCompatDelegateImpl.this.f345y.setAlpha(0.0f);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.B = m0.d(appCompatDelegateImpl2.f345y).b(1.0f);
                AppCompatDelegateImpl.this.B.i(new a());
            }
        }
    }

    class e extends w0 {
        e() {
        }

        @Override // androidx.core.view.v0
        public void b(View view) {
            AppCompatDelegateImpl.this.f345y.setAlpha(1.0f);
            AppCompatDelegateImpl.this.B.i(null);
            AppCompatDelegateImpl.this.B = null;
        }

        @Override // androidx.core.view.w0, androidx.core.view.v0
        public void c(View view) {
            AppCompatDelegateImpl.this.f345y.setVisibility(0);
            if (AppCompatDelegateImpl.this.f345y.getParent() instanceof View) {
                m0.f0((View) AppCompatDelegateImpl.this.f345y.getParent());
            }
        }
    }

    private class f implements androidx.appcompat.app.b {
        f() {
        }
    }

    interface g {
        boolean a(int i10);

        View onCreatePanelView(int i10);
    }

    private final class h implements MenuPresenter.Callback {
        h() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
            AppCompatDelegateImpl.this.Z(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callbackV0 = AppCompatDelegateImpl.this.v0();
            if (callbackV0 == null) {
                return true;
            }
            callbackV0.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    class i implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.a f377a;

        class a extends w0 {
            a() {
            }

            @Override // androidx.core.view.v0
            public void b(View view) {
                AppCompatDelegateImpl.this.f345y.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f346z;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f345y.getParent() instanceof View) {
                    m0.f0((View) AppCompatDelegateImpl.this.f345y.getParent());
                }
                AppCompatDelegateImpl.this.f345y.k();
                AppCompatDelegateImpl.this.B.i(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.B = null;
                m0.f0(appCompatDelegateImpl2.E);
            }
        }

        public i(b.a aVar) {
            this.f377a = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(androidx.appcompat.view.b bVar, Menu menu) {
            m0.f0(AppCompatDelegateImpl.this.E);
            return this.f377a.a(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public void b(androidx.appcompat.view.b bVar) {
            this.f377a.b(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f346z != null) {
                appCompatDelegateImpl.f335o.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.A);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f345y != null) {
                appCompatDelegateImpl2.j0();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.B = m0.d(appCompatDelegateImpl3.f345y).b(0.0f);
                AppCompatDelegateImpl.this.B.i(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            androidx.appcompat.app.d dVar = appCompatDelegateImpl4.f337q;
            if (dVar != null) {
                dVar.onSupportActionModeFinished(appCompatDelegateImpl4.f344x);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f344x = null;
            m0.f0(appCompatDelegateImpl5.E);
            AppCompatDelegateImpl.this.c1();
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f377a.c(bVar, menuItem);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f377a.d(bVar, menu);
        }
    }

    static class j {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    static class k {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        static z.f b(Configuration configuration) {
            return z.f.b(configuration.getLocales().toLanguageTags());
        }

        public static void c(z.f fVar) {
            LocaleList.setDefault(LocaleList.forLanguageTags(fVar.g()));
        }

        static void d(Configuration configuration, z.f fVar) {
            configuration.setLocales(LocaleList.forLanguageTags(fVar.g()));
        }
    }

    static class l {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.colorMode & 3;
            int i11 = configuration2.colorMode;
            if (i10 != (i11 & 3)) {
                configuration3.colorMode |= i11 & 3;
            }
            int i12 = configuration.colorMode & 12;
            int i13 = configuration2.colorMode;
            if (i12 != (i13 & 12)) {
                configuration3.colorMode |= i13 & 12;
            }
        }
    }

    static class m {
        static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.m
                public final void onBackInvoked() {
                    appCompatDelegateImpl.D0();
                }
            };
            androidx.appcompat.app.i.a(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        static void c(Object obj, Object obj2) {
            androidx.appcompat.app.i.a(obj).unregisterOnBackInvokedCallback(androidx.appcompat.app.h.a(obj2));
        }
    }

    class n extends androidx.appcompat.view.i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private g f380b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f381c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f382f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f383h;

        n(Window.Callback callback) {
            super(callback);
        }

        public boolean b(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f382f = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f382f = false;
            }
        }

        public void c(Window.Callback callback) {
            try {
                this.f381c = true;
                callback.onContentChanged();
            } finally {
                this.f381c = false;
            }
        }

        public void d(Window.Callback callback, int i10, Menu menu) {
            try {
                this.f383h = true;
                callback.onPanelClosed(i10, menu);
            } finally {
                this.f383h = false;
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.f382f ? a().dispatchKeyEvent(keyEvent) : AppCompatDelegateImpl.this.h0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.G0(keyEvent.getKeyCode(), keyEvent);
        }

        void e(g gVar) {
            this.f380b = gVar;
        }

        final ActionMode f(ActionMode.Callback callback) {
            f.a aVar = new f.a(AppCompatDelegateImpl.this.f334n, callback);
            androidx.appcompat.view.b bVarO = AppCompatDelegateImpl.this.O(aVar);
            if (bVarO != null) {
                return aVar.e(bVarO);
            }
            return null;
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
            if (this.f381c) {
                a().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i10) {
            View viewOnCreatePanelView;
            g gVar = this.f380b;
            return (gVar == null || (viewOnCreatePanelView = gVar.onCreatePanelView(i10)) == null) ? super.onCreatePanelView(i10) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            AppCompatDelegateImpl.this.J0(i10);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onPanelClosed(int i10, Menu menu) {
            if (this.f383h) {
                a().onPanelClosed(i10, menu);
            } else {
                super.onPanelClosed(i10, menu);
                AppCompatDelegateImpl.this.K0(i10);
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i10 == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(true);
            }
            g gVar = this.f380b;
            boolean zOnPreparePanel = gVar != null && gVar.a(i10);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i10, view, menu);
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List list, Menu menu, int i10) {
            MenuBuilder menuBuilder;
            PanelFeatureState panelFeatureStateT0 = AppCompatDelegateImpl.this.t0(0, true);
            if (panelFeatureStateT0 == null || (menuBuilder = panelFeatureStateT0.f356j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i10);
            }
        }

        @Override // android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            return (AppCompatDelegateImpl.this.B0() && i10 == 0) ? f(callback) : super.onWindowStartingActionMode(callback, i10);
        }
    }

    private class o extends p {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PowerManager f385c;

        o(Context context) {
            super();
            this.f385c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        public int c() {
            return j.a(this.f385c) ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        public void d() {
            AppCompatDelegateImpl.this.T();
        }
    }

    abstract class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f387a;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                p.this.d();
            }
        }

        p() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f387a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f334n.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f387a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f387a == null) {
                this.f387a = new a();
            }
            AppCompatDelegateImpl.this.f334n.registerReceiver(this.f387a, intentFilterB);
        }
    }

    private class q extends p {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final w f390c;

        q(w wVar) {
            super();
            this.f390c = wVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        public int c() {
            return this.f390c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.p
        public void d() {
            AppCompatDelegateImpl.this.T();
        }
    }

    private class r extends ContentFrameLayout {
        public r(Context context) {
            super(context);
        }

        private boolean b(int i10, int i11) {
            return i10 < -5 || i11 < -5 || i10 > getWidth() + 5 || i11 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.h0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !b((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.b0(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(e.a.b(getContext(), i10));
        }
    }

    private final class s implements MenuPresenter.Callback {
        s() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z11 = rootMenu != menuBuilder;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z11) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState panelFeatureStateM0 = appCompatDelegateImpl.m0(menuBuilder);
            if (panelFeatureStateM0 != null) {
                if (!z11) {
                    AppCompatDelegateImpl.this.c0(panelFeatureStateM0, z10);
                } else {
                    AppCompatDelegateImpl.this.Y(panelFeatureStateM0.f347a, panelFeatureStateM0, rootMenu);
                    AppCompatDelegateImpl.this.c0(panelFeatureStateM0, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callbackV0;
            if (menuBuilder != menuBuilder.getRootMenu()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.J || (callbackV0 = appCompatDelegateImpl.v0()) == null || AppCompatDelegateImpl.this.U) {
                return true;
            }
            callbackV0.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    private void A0(int i10) {
        this.f324d0 = (1 << i10) | this.f324d0;
        if (this.f323c0) {
            return;
        }
        m0.a0(this.f335o.getDecorView(), this.f325e0);
        this.f323c0 = true;
    }

    private boolean F0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState panelFeatureStateT0 = t0(i10, true);
        if (panelFeatureStateT0.f361o) {
            return false;
        }
        return P0(panelFeatureStateT0, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean I0(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            androidx.appcompat.view.b r0 = r4.f344x
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r2 = r4.t0(r5, r0)
            if (r5 != 0) goto L43
            androidx.appcompat.widget.s r5 = r4.f341u
            if (r5 == 0) goto L43
            boolean r5 = r5.g()
            if (r5 == 0) goto L43
            android.content.Context r5 = r4.f334n
            android.view.ViewConfiguration r5 = android.view.ViewConfiguration.get(r5)
            boolean r5 = r5.hasPermanentMenuKey()
            if (r5 != 0) goto L43
            androidx.appcompat.widget.s r5 = r4.f341u
            boolean r5 = r5.b()
            if (r5 != 0) goto L3c
            boolean r5 = r4.U
            if (r5 != 0) goto L62
            boolean r5 = r4.P0(r2, r6)
            if (r5 == 0) goto L62
            androidx.appcompat.widget.s r5 = r4.f341u
            boolean r0 = r5.f()
            goto L68
        L3c:
            androidx.appcompat.widget.s r5 = r4.f341u
            boolean r0 = r5.e()
            goto L68
        L43:
            boolean r5 = r2.f361o
            if (r5 != 0) goto L64
            boolean r3 = r2.f360n
            if (r3 == 0) goto L4c
            goto L64
        L4c:
            boolean r5 = r2.f359m
            if (r5 == 0) goto L62
            boolean r5 = r2.f364r
            if (r5 == 0) goto L5b
            r2.f359m = r1
            boolean r5 = r4.P0(r2, r6)
            goto L5c
        L5b:
            r5 = r0
        L5c:
            if (r5 == 0) goto L62
            r4.M0(r2, r6)
            goto L68
        L62:
            r0 = r1
            goto L68
        L64:
            r4.c0(r2, r0)
            r0 = r5
        L68:
            if (r0 == 0) goto L85
            android.content.Context r4 = r4.f334n
            android.content.Context r4 = r4.getApplicationContext()
            java.lang.String r5 = "audio"
            java.lang.Object r4 = r4.getSystemService(r5)
            android.media.AudioManager r4 = (android.media.AudioManager) r4
            if (r4 == 0) goto L7e
            r4.playSoundEffect(r1)
            goto L85
        L7e:
            java.lang.String r4 = "AppCompatDelegate"
            java.lang.String r5 = "Couldn't get audio manager"
            android.util.Log.w(r4, r5)
        L85:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.I0(int, android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void M0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r12, android.view.KeyEvent r13) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.M0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    private boolean O0(PanelFeatureState panelFeatureState, int i10, KeyEvent keyEvent, int i11) {
        MenuBuilder menuBuilder;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f359m || P0(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.f356j) != null) {
            zPerformShortcut = menuBuilder.performShortcut(i10, keyEvent, i11);
        }
        if (zPerformShortcut && (i11 & 1) == 0 && this.f341u == null) {
            c0(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private boolean P0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        androidx.appcompat.widget.s sVar;
        androidx.appcompat.widget.s sVar2;
        androidx.appcompat.widget.s sVar3;
        if (this.U) {
            return false;
        }
        if (panelFeatureState.f359m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.Q;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            c0(panelFeatureState2, false);
        }
        Window.Callback callbackV0 = v0();
        if (callbackV0 != null) {
            panelFeatureState.f355i = callbackV0.onCreatePanelView(panelFeatureState.f347a);
        }
        int i10 = panelFeatureState.f347a;
        boolean z10 = i10 == 0 || i10 == 108;
        if (z10 && (sVar3 = this.f341u) != null) {
            sVar3.c();
        }
        if (panelFeatureState.f355i == null && (!z10 || !(N0() instanceof u))) {
            MenuBuilder menuBuilder = panelFeatureState.f356j;
            if (menuBuilder == null || panelFeatureState.f364r) {
                if (menuBuilder == null && (!z0(panelFeatureState) || panelFeatureState.f356j == null)) {
                    return false;
                }
                if (z10 && this.f341u != null) {
                    if (this.f342v == null) {
                        this.f342v = new h();
                    }
                    this.f341u.a(panelFeatureState.f356j, this.f342v);
                }
                panelFeatureState.f356j.stopDispatchingItemsChanged();
                if (!callbackV0.onCreatePanelMenu(panelFeatureState.f347a, panelFeatureState.f356j)) {
                    panelFeatureState.c(null);
                    if (z10 && (sVar = this.f341u) != null) {
                        sVar.a(null, this.f342v);
                    }
                    return false;
                }
                panelFeatureState.f364r = false;
            }
            panelFeatureState.f356j.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.f365s;
            if (bundle != null) {
                panelFeatureState.f356j.restoreActionViewStates(bundle);
                panelFeatureState.f365s = null;
            }
            if (!callbackV0.onPreparePanel(0, panelFeatureState.f355i, panelFeatureState.f356j)) {
                if (z10 && (sVar2 = this.f341u) != null) {
                    sVar2.a(null, this.f342v);
                }
                panelFeatureState.f356j.startDispatchingItemsChanged();
                return false;
            }
            boolean z11 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f362p = z11;
            panelFeatureState.f356j.setQwertyMode(z11);
            panelFeatureState.f356j.startDispatchingItemsChanged();
        }
        panelFeatureState.f359m = true;
        panelFeatureState.f360n = false;
        this.Q = panelFeatureState;
        return true;
    }

    private void Q0(boolean z10) {
        androidx.appcompat.widget.s sVar = this.f341u;
        if (sVar == null || !sVar.g() || (ViewConfiguration.get(this.f334n).hasPermanentMenuKey() && !this.f341u.d())) {
            PanelFeatureState panelFeatureStateT0 = t0(0, true);
            panelFeatureStateT0.f363q = true;
            c0(panelFeatureStateT0, false);
            M0(panelFeatureStateT0, null);
            return;
        }
        Window.Callback callbackV0 = v0();
        if (this.f341u.b() && z10) {
            this.f341u.e();
            if (this.U) {
                return;
            }
            callbackV0.onPanelClosed(108, t0(0, true).f356j);
            return;
        }
        if (callbackV0 == null || this.U) {
            return;
        }
        if (this.f323c0 && (this.f324d0 & 1) != 0) {
            this.f335o.getDecorView().removeCallbacks(this.f325e0);
            this.f325e0.run();
        }
        PanelFeatureState panelFeatureStateT02 = t0(0, true);
        MenuBuilder menuBuilder = panelFeatureStateT02.f356j;
        if (menuBuilder == null || panelFeatureStateT02.f364r || !callbackV0.onPreparePanel(0, panelFeatureStateT02.f355i, menuBuilder)) {
            return;
        }
        callbackV0.onMenuOpened(108, panelFeatureStateT02.f356j);
        this.f341u.f();
    }

    private boolean R(boolean z10) {
        return S(z10, true);
    }

    private int R0(int i10) {
        if (i10 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i10 != 9) {
            return i10;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean S(boolean z10, boolean z11) {
        if (this.U) {
            return false;
        }
        int iX = X();
        int iC0 = C0(this.f334n, iX);
        z.f fVarW = Build.VERSION.SDK_INT < 33 ? W(this.f334n) : null;
        if (!z11 && fVarW != null) {
            fVarW = s0(this.f334n.getResources().getConfiguration());
        }
        boolean zB1 = b1(iC0, fVarW, z10);
        if (iX == 0) {
            r0(this.f334n).e();
        } else {
            p pVar = this.f321a0;
            if (pVar != null) {
                pVar.a();
            }
        }
        if (iX == 3) {
            q0(this.f334n).e();
        } else {
            p pVar2 = this.f322b0;
            if (pVar2 != null) {
                pVar2.a();
            }
        }
        return zB1;
    }

    private void U() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.E.findViewById(R.id.content);
        View decorView = this.f335o.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f334n.obtainStyledAttributes(R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private void V(Window window) {
        if (this.f335o != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof n) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        n nVar = new n(callback);
        this.f336p = nVar;
        window.setCallback(nVar);
        h0 h0VarV = h0.v(this.f334n, null, f319o0);
        Drawable drawableH = h0VarV.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        h0VarV.y();
        this.f335o = window;
        if (Build.VERSION.SDK_INT < 33 || this.f331k0 != null) {
            return;
        }
        K(null);
    }

    private boolean V0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f335o.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ((View) viewParent).isAttachedToWindow()) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private int X() {
        int i10 = this.W;
        return i10 != -100 ? i10 : androidx.appcompat.app.f.k();
    }

    private void Y0() {
        if (this.D) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private AppCompatActivity Z0() {
        for (Context baseContext = this.f334n; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof AppCompatActivity) {
                return (AppCompatActivity) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void a0() {
        p pVar = this.f321a0;
        if (pVar != null) {
            pVar.a();
        }
        p pVar2 = this.f322b0;
        if (pVar2 != null) {
            pVar2.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a1(Configuration configuration) {
        Activity activity = (Activity) this.f333m;
        if (activity instanceof androidx.lifecycle.s) {
            if (((androidx.lifecycle.s) activity).getLifecycle().b().isAtLeast(l.b.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.T || this.U) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean b1(int r10, z.f r11, boolean r12) {
        /*
            r9 = this;
            android.content.Context r1 = r9.f334n
            r4 = 0
            r5 = 0
            r0 = r9
            r2 = r10
            r3 = r11
            android.content.res.Configuration r0 = r0.d0(r1, r2, r3, r4, r5)
            android.content.Context r1 = r9.f334n
            int r1 = r9.p0(r1)
            android.content.res.Configuration r2 = r9.V
            if (r2 != 0) goto L1f
            android.content.Context r2 = r9.f334n
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
        L1f:
            int r3 = r2.uiMode
            r3 = r3 & 48
            int r4 = r0.uiMode
            r4 = r4 & 48
            z.f r2 = r9.s0(r2)
            r5 = 0
            if (r11 != 0) goto L30
            r6 = r5
            goto L34
        L30:
            z.f r6 = r9.s0(r0)
        L34:
            r7 = 0
            if (r3 == r4) goto L3a
            r3 = 512(0x200, float:7.17E-43)
            goto L3b
        L3a:
            r3 = r7
        L3b:
            if (r6 == 0) goto L45
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto L45
            r3 = r3 | 8196(0x2004, float:1.1485E-41)
        L45:
            int r2 = ~r1
            r2 = r2 & r3
            r8 = 1
            if (r2 == 0) goto L86
            if (r12 == 0) goto L86
            boolean r12 = r9.S
            if (r12 == 0) goto L86
            boolean r12 = androidx.appcompat.app.AppCompatDelegateImpl.f320p0
            if (r12 != 0) goto L58
            boolean r12 = r9.T
            if (r12 == 0) goto L86
        L58:
            java.lang.Object r12 = r9.f333m
            boolean r2 = r12 instanceof android.app.Activity
            if (r2 == 0) goto L86
            android.app.Activity r12 = (android.app.Activity) r12
            boolean r12 = r12.isChild()
            if (r12 != 0) goto L86
            r12 = r3 & 8192(0x2000, float:1.148E-41)
            if (r12 == 0) goto L7d
            java.lang.Object r12 = r9.f333m
            android.app.Activity r12 = (android.app.Activity) r12
            android.view.Window r12 = r12.getWindow()
            android.view.View r12 = r12.getDecorView()
            int r0 = r0.getLayoutDirection()
            r12.setLayoutDirection(r0)
        L7d:
            java.lang.Object r12 = r9.f333m
            android.app.Activity r12 = (android.app.Activity) r12
            androidx.core.app.a.n(r12)
            r12 = r8
            goto L87
        L86:
            r12 = r7
        L87:
            if (r12 != 0) goto L94
            if (r3 == 0) goto L94
            r12 = r3 & r1
            if (r12 != r3) goto L90
            r7 = r8
        L90:
            r9.d1(r4, r6, r7, r5)
            goto L95
        L94:
            r8 = r12
        L95:
            if (r8 == 0) goto Lb1
            java.lang.Object r12 = r9.f333m
            boolean r0 = r12 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto Lb1
            r0 = r3 & 512(0x200, float:7.17E-43)
            if (r0 == 0) goto La6
            androidx.appcompat.app.AppCompatActivity r12 = (androidx.appcompat.app.AppCompatActivity) r12
            r12.onNightModeChanged(r10)
        La6:
            r10 = r3 & 4
            if (r10 == 0) goto Lb1
            java.lang.Object r10 = r9.f333m
            androidx.appcompat.app.AppCompatActivity r10 = (androidx.appcompat.app.AppCompatActivity) r10
            r10.onLocalesChanged(r11)
        Lb1:
            if (r6 == 0) goto Lc4
            android.content.Context r10 = r9.f334n
            android.content.res.Resources r10 = r10.getResources()
            android.content.res.Configuration r10 = r10.getConfiguration()
            z.f r10 = r9.s0(r10)
            r9.T0(r10)
        Lc4:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b1(int, z.f, boolean):boolean");
    }

    private Configuration d0(Context context, int i10, z.f fVar, Configuration configuration, boolean z10) {
        int i11 = i10 != 1 ? i10 != 2 ? z10 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        if (fVar != null) {
            S0(configuration2, fVar);
        }
        return configuration2;
    }

    private void d1(int i10, z.f fVar, boolean z10, Configuration configuration) {
        Resources resources = this.f334n.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        if (fVar != null) {
            S0(configuration2, fVar);
        }
        resources.updateConfiguration(configuration2, null);
        int i11 = this.X;
        if (i11 != 0) {
            this.f334n.setTheme(i11);
            this.f334n.getTheme().applyStyle(this.X, true);
        }
        if (z10 && (this.f333m instanceof Activity)) {
            a1(configuration2);
        }
    }

    private ViewGroup e0() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f334n.obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
            F(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
            F(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            F(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            F(10);
        }
        this.M = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        l0();
        this.f335o.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f334n);
        if (this.N) {
            viewGroup = this.L ? (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.M) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
            this.K = false;
            this.J = false;
        } else if (this.J) {
            TypedValue typedValue = new TypedValue();
            this.f334n.getTheme().resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.f334n, typedValue.resourceId) : this.f334n).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
            androidx.appcompat.widget.s sVar = (androidx.appcompat.widget.s) viewGroup.findViewById(R$id.decor_content_parent);
            this.f341u = sVar;
            sVar.setWindowCallback(v0());
            if (this.K) {
                this.f341u.h(109);
            }
            if (this.H) {
                this.f341u.h(2);
            }
            if (this.I) {
                this.f341u.h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.J + ", windowActionBarOverlay: " + this.K + ", android:windowIsFloating: " + this.M + ", windowActionModeOverlay: " + this.L + ", windowNoTitle: " + this.N + " }");
        }
        m0.y0(viewGroup, new b());
        if (this.f341u == null) {
            this.F = (TextView) viewGroup.findViewById(R$id.title);
        }
        o0.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f335o.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f335o.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new c());
        return viewGroup;
    }

    private void f1(View view) {
        view.setBackgroundColor((m0.H(view) & ConfigPackage.FRAME_SIZE_6) != 0 ? r.a.c(this.f334n, R$color.abc_decor_view_status_guard_light) : r.a.c(this.f334n, R$color.abc_decor_view_status_guard));
    }

    private void k0() {
        if (this.D) {
            return;
        }
        this.E = e0();
        CharSequence charSequenceU0 = u0();
        if (!TextUtils.isEmpty(charSequenceU0)) {
            androidx.appcompat.widget.s sVar = this.f341u;
            if (sVar != null) {
                sVar.setWindowTitle(charSequenceU0);
            } else if (N0() != null) {
                N0().u(charSequenceU0);
            } else {
                TextView textView = this.F;
                if (textView != null) {
                    textView.setText(charSequenceU0);
                }
            }
        }
        U();
        L0(this.E);
        this.D = true;
        PanelFeatureState panelFeatureStateT0 = t0(0, false);
        if (this.U) {
            return;
        }
        if (panelFeatureStateT0 == null || panelFeatureStateT0.f356j == null) {
            A0(108);
        }
    }

    private void l0() {
        if (this.f335o == null) {
            Object obj = this.f333m;
            if (obj instanceof Activity) {
                V(((Activity) obj).getWindow());
            }
        }
        if (this.f335o == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration n0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f10 = configuration.fontScale;
            float f11 = configuration2.fontScale;
            if (f10 != f11) {
                configuration3.fontScale = f11;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            k.a(configuration, configuration2, configuration3);
            int i14 = configuration.touchscreen;
            int i15 = configuration2.touchscreen;
            if (i14 != i15) {
                configuration3.touchscreen = i15;
            }
            int i16 = configuration.keyboard;
            int i17 = configuration2.keyboard;
            if (i16 != i17) {
                configuration3.keyboard = i17;
            }
            int i18 = configuration.keyboardHidden;
            int i19 = configuration2.keyboardHidden;
            if (i18 != i19) {
                configuration3.keyboardHidden = i19;
            }
            int i20 = configuration.navigation;
            int i21 = configuration2.navigation;
            if (i20 != i21) {
                configuration3.navigation = i21;
            }
            int i22 = configuration.navigationHidden;
            int i23 = configuration2.navigationHidden;
            if (i22 != i23) {
                configuration3.navigationHidden = i23;
            }
            int i24 = configuration.orientation;
            int i25 = configuration2.orientation;
            if (i24 != i25) {
                configuration3.orientation = i25;
            }
            int i26 = configuration.screenLayout & 15;
            int i27 = configuration2.screenLayout;
            if (i26 != (i27 & 15)) {
                configuration3.screenLayout |= i27 & 15;
            }
            int i28 = configuration.screenLayout & 192;
            int i29 = configuration2.screenLayout;
            if (i28 != (i29 & 192)) {
                configuration3.screenLayout |= i29 & 192;
            }
            int i30 = configuration.screenLayout & 48;
            int i31 = configuration2.screenLayout;
            if (i30 != (i31 & 48)) {
                configuration3.screenLayout |= i31 & 48;
            }
            int i32 = configuration.screenLayout & ViewUtils.EDGE_TO_EDGE_FLAGS;
            int i33 = configuration2.screenLayout;
            if (i32 != (i33 & ViewUtils.EDGE_TO_EDGE_FLAGS)) {
                configuration3.screenLayout |= i33 & ViewUtils.EDGE_TO_EDGE_FLAGS;
            }
            l.a(configuration, configuration2, configuration3);
            int i34 = configuration.uiMode & 15;
            int i35 = configuration2.uiMode;
            if (i34 != (i35 & 15)) {
                configuration3.uiMode |= i35 & 15;
            }
            int i36 = configuration.uiMode & 48;
            int i37 = configuration2.uiMode;
            if (i36 != (i37 & 48)) {
                configuration3.uiMode |= i37 & 48;
            }
            int i38 = configuration.screenWidthDp;
            int i39 = configuration2.screenWidthDp;
            if (i38 != i39) {
                configuration3.screenWidthDp = i39;
            }
            int i40 = configuration.screenHeightDp;
            int i41 = configuration2.screenHeightDp;
            if (i40 != i41) {
                configuration3.screenHeightDp = i41;
            }
            int i42 = configuration.smallestScreenWidthDp;
            int i43 = configuration2.smallestScreenWidthDp;
            if (i42 != i43) {
                configuration3.smallestScreenWidthDp = i43;
            }
            int i44 = configuration.densityDpi;
            int i45 = configuration2.densityDpi;
            if (i44 != i45) {
                configuration3.densityDpi = i45;
            }
        }
        return configuration3;
    }

    private int p0(Context context) {
        if (!this.Z && (this.f333m instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f333m.getClass()), 269221888);
                if (activityInfo != null) {
                    this.Y = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException e10) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e10);
                this.Y = 0;
            }
        }
        this.Z = true;
        return this.Y;
    }

    private p q0(Context context) {
        if (this.f322b0 == null) {
            this.f322b0 = new o(context);
        }
        return this.f322b0;
    }

    private p r0(Context context) {
        if (this.f321a0 == null) {
            this.f321a0 = new q(w.a(context));
        }
        return this.f321a0;
    }

    private void w0() {
        k0();
        if (this.J && this.f338r == null) {
            Object obj = this.f333m;
            if (obj instanceof Activity) {
                this.f338r = new x((Activity) this.f333m, this.K);
            } else if (obj instanceof Dialog) {
                this.f338r = new x((Dialog) this.f333m);
            }
            androidx.appcompat.app.a aVar = this.f338r;
            if (aVar != null) {
                aVar.r(this.f326f0);
            }
        }
    }

    private boolean x0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f355i;
        if (view != null) {
            panelFeatureState.f354h = view;
            return true;
        }
        if (panelFeatureState.f356j == null) {
            return false;
        }
        if (this.f343w == null) {
            this.f343w = new s();
        }
        View view2 = (View) panelFeatureState.a(this.f343w);
        panelFeatureState.f354h = view2;
        return view2 != null;
    }

    private boolean y0(PanelFeatureState panelFeatureState) {
        panelFeatureState.d(o0());
        panelFeatureState.f353g = new r(panelFeatureState.f358l);
        panelFeatureState.f349c = 81;
        return true;
    }

    private boolean z0(PanelFeatureState panelFeatureState) {
        Resources.Theme themeNewTheme;
        Context context = this.f334n;
        int i10 = panelFeatureState.f347a;
        if ((i10 == 0 || i10 == 108) && this.f341u != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
                themeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.c(menuBuilder);
        return true;
    }

    @Override // androidx.appcompat.app.f
    public void A(Bundle bundle) {
    }

    @Override // androidx.appcompat.app.f
    public void B() {
        S(true, false);
    }

    public boolean B0() {
        return this.C;
    }

    @Override // androidx.appcompat.app.f
    public void C() {
        androidx.appcompat.app.a aVarQ = q();
        if (aVarQ != null) {
            aVarQ.t(false);
        }
    }

    int C0(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return r0(context).c();
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    return q0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i10;
    }

    boolean D0() {
        boolean z10 = this.R;
        this.R = false;
        PanelFeatureState panelFeatureStateT0 = t0(0, false);
        if (panelFeatureStateT0 != null && panelFeatureStateT0.f361o) {
            if (!z10) {
                c0(panelFeatureStateT0, true);
            }
            return true;
        }
        androidx.appcompat.view.b bVar = this.f344x;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        androidx.appcompat.app.a aVarQ = q();
        return aVarQ != null && aVarQ.h();
    }

    boolean E0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            this.R = (keyEvent.getFlags() & 128) != 0;
        } else if (i10 == 82) {
            F0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public boolean F(int i10) {
        int iR0 = R0(i10);
        if (this.N && iR0 == 108) {
            return false;
        }
        if (this.J && iR0 == 1) {
            this.J = false;
        }
        if (iR0 == 1) {
            Y0();
            this.N = true;
            return true;
        }
        if (iR0 == 2) {
            Y0();
            this.H = true;
            return true;
        }
        if (iR0 == 5) {
            Y0();
            this.I = true;
            return true;
        }
        if (iR0 == 10) {
            Y0();
            this.L = true;
            return true;
        }
        if (iR0 == 108) {
            Y0();
            this.J = true;
            return true;
        }
        if (iR0 != 109) {
            return this.f335o.requestFeature(iR0);
        }
        Y0();
        this.K = true;
        return true;
    }

    @Override // androidx.appcompat.app.f
    public void G(int i10) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.E.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f334n).inflate(i10, viewGroup);
        this.f336p.c(this.f335o.getCallback());
    }

    boolean G0(int i10, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarQ = q();
        if (aVarQ != null && aVarQ.o(i10, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.Q;
        if (panelFeatureState != null && O0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.Q;
            if (panelFeatureState2 != null) {
                panelFeatureState2.f360n = true;
            }
            return true;
        }
        if (this.Q == null) {
            PanelFeatureState panelFeatureStateT0 = t0(0, true);
            P0(panelFeatureStateT0, keyEvent);
            boolean zO0 = O0(panelFeatureStateT0, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateT0.f359m = false;
            if (zO0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void H(View view) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.E.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f336p.c(this.f335o.getCallback());
    }

    boolean H0(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            if (i10 == 82) {
                I0(0, keyEvent);
                return true;
            }
        } else if (D0()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void I(View view, ViewGroup.LayoutParams layoutParams) {
        k0();
        ViewGroup viewGroup = (ViewGroup) this.E.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f336p.c(this.f335o.getCallback());
    }

    @Override // androidx.appcompat.app.f
    public void J(int i10) {
        if (this.W != i10) {
            this.W = i10;
            if (this.S) {
                T();
            }
        }
    }

    void J0(int i10) {
        androidx.appcompat.app.a aVarQ;
        if (i10 != 108 || (aVarQ = q()) == null) {
            return;
        }
        aVarQ.i(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    @Override // androidx.appcompat.app.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void K(android.window.OnBackInvokedDispatcher r3) {
        /*
            r2 = this;
            super.K(r3)
            android.window.OnBackInvokedDispatcher r0 = r2.f331k0
            if (r0 == 0) goto L11
            android.window.OnBackInvokedCallback r1 = r2.f332l0
            if (r1 == 0) goto L11
            androidx.appcompat.app.AppCompatDelegateImpl.m.c(r0, r1)
            r0 = 0
            r2.f332l0 = r0
        L11:
            if (r3 != 0) goto L2c
            java.lang.Object r0 = r2.f333m
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L2c
            android.app.Activity r0 = (android.app.Activity) r0
            android.view.Window r0 = r0.getWindow()
            if (r0 == 0) goto L2c
            java.lang.Object r3 = r2.f333m
            android.app.Activity r3 = (android.app.Activity) r3
            android.window.OnBackInvokedDispatcher r3 = androidx.appcompat.app.AppCompatDelegateImpl.m.a(r3)
            r2.f331k0 = r3
            goto L2e
        L2c:
            r2.f331k0 = r3
        L2e:
            r2.c1()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.K(android.window.OnBackInvokedDispatcher):void");
    }

    void K0(int i10) {
        if (i10 == 108) {
            androidx.appcompat.app.a aVarQ = q();
            if (aVarQ != null) {
                aVarQ.i(false);
                return;
            }
            return;
        }
        if (i10 == 0) {
            PanelFeatureState panelFeatureStateT0 = t0(i10, true);
            if (panelFeatureStateT0.f361o) {
                c0(panelFeatureStateT0, false);
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public void L(Toolbar toolbar) {
        if (this.f333m instanceof Activity) {
            androidx.appcompat.app.a aVarQ = q();
            if (aVarQ instanceof x) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f339s = null;
            if (aVarQ != null) {
                aVarQ.n();
            }
            this.f338r = null;
            if (toolbar != null) {
                u uVar = new u(toolbar, u0(), this.f336p);
                this.f338r = uVar;
                this.f336p.e(uVar.f420c);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f336p.e(null);
            }
            s();
        }
    }

    void L0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.f
    public void M(int i10) {
        this.X = i10;
    }

    @Override // androidx.appcompat.app.f
    public final void N(CharSequence charSequence) {
        this.f340t = charSequence;
        androidx.appcompat.widget.s sVar = this.f341u;
        if (sVar != null) {
            sVar.setWindowTitle(charSequence);
            return;
        }
        if (N0() != null) {
            N0().u(charSequence);
            return;
        }
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    final androidx.appcompat.app.a N0() {
        return this.f338r;
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.view.b O(b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.b bVar = this.f344x;
        if (bVar != null) {
            bVar.a();
        }
        i iVar = new i(aVar);
        androidx.appcompat.app.a aVarQ = q();
        if (aVarQ != null) {
            androidx.appcompat.view.b bVarV = aVarQ.v(iVar);
            this.f344x = bVarV;
            if (bVarV != null && (dVar = this.f337q) != null) {
                dVar.onSupportActionModeStarted(bVarV);
            }
        }
        if (this.f344x == null) {
            this.f344x = X0(iVar);
        }
        c1();
        return this.f344x;
    }

    void S0(Configuration configuration, z.f fVar) {
        k.d(configuration, fVar);
    }

    public boolean T() {
        return R(true);
    }

    void T0(z.f fVar) {
        k.c(fVar);
    }

    final boolean U0() {
        ViewGroup viewGroup;
        return this.D && (viewGroup = this.E) != null && viewGroup.isLaidOut();
    }

    z.f W(Context context) {
        z.f fVarP;
        if (Build.VERSION.SDK_INT >= 33 || (fVarP = androidx.appcompat.app.f.p()) == null) {
            return null;
        }
        z.f fVarS0 = s0(context.getApplicationContext().getResources().getConfiguration());
        z.f fVarB = androidx.appcompat.app.s.b(fVarP, fVarS0);
        return fVarB.e() ? fVarS0 : fVarB;
    }

    boolean W0() {
        if (this.f331k0 == null) {
            return false;
        }
        PanelFeatureState panelFeatureStateT0 = t0(0, false);
        return (panelFeatureStateT0 != null && panelFeatureStateT0.f361o) || this.f344x != null;
    }

    androidx.appcompat.view.b X0(b.a aVar) {
        androidx.appcompat.view.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.d dVar2;
        j0();
        androidx.appcompat.view.b bVar = this.f344x;
        if (bVar != null) {
            bVar.a();
        }
        if (!(aVar instanceof i)) {
            aVar = new i(aVar);
        }
        androidx.appcompat.app.d dVar3 = this.f337q;
        if (dVar3 == null || this.U) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = dVar3.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.f344x = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.f345y == null) {
                if (this.M) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f334n.getTheme();
                    theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f334n.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.view.d(this.f334n, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f334n;
                    }
                    this.f345y = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, R$attr.actionModePopupWindowStyle);
                    this.f346z = popupWindow;
                    androidx.core.widget.i.b(popupWindow, 2);
                    this.f346z.setContentView(this.f345y);
                    this.f346z.setWidth(-1);
                    dVar.getTheme().resolveAttribute(R$attr.actionBarSize, typedValue, true);
                    this.f345y.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.f346z.setHeight(-2);
                    this.A = new d();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.E.findViewById(R$id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(o0()));
                        this.f345y = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.f345y != null) {
                j0();
                this.f345y.k();
                androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.f345y.getContext(), this.f345y, aVar, this.f346z == null);
                if (aVar.d(eVar, eVar.c())) {
                    eVar.i();
                    this.f345y.h(eVar);
                    this.f344x = eVar;
                    if (U0()) {
                        this.f345y.setAlpha(0.0f);
                        u0 u0VarB = m0.d(this.f345y).b(1.0f);
                        this.B = u0VarB;
                        u0VarB.i(new e());
                    } else {
                        this.f345y.setAlpha(1.0f);
                        this.f345y.setVisibility(0);
                        if (this.f345y.getParent() instanceof View) {
                            m0.f0((View) this.f345y.getParent());
                        }
                    }
                    if (this.f346z != null) {
                        this.f335o.getDecorView().post(this.A);
                    }
                } else {
                    this.f344x = null;
                }
            }
        }
        androidx.appcompat.view.b bVar2 = this.f344x;
        if (bVar2 != null && (dVar2 = this.f337q) != null) {
            dVar2.onSupportActionModeStarted(bVar2);
        }
        c1();
        return this.f344x;
    }

    void Y(int i10, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i10 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.P;
                if (i10 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i10];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f356j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f361o) && !this.U) {
            this.f336p.d(this.f335o.getCallback(), i10, menu);
        }
    }

    void Z(MenuBuilder menuBuilder) {
        if (this.O) {
            return;
        }
        this.O = true;
        this.f341u.i();
        Window.Callback callbackV0 = v0();
        if (callbackV0 != null && !this.U) {
            callbackV0.onPanelClosed(108, menuBuilder);
        }
        this.O = false;
    }

    void b0(int i10) {
        c0(t0(i10, true), true);
    }

    @Override // androidx.appcompat.app.f
    public void c(View view, ViewGroup.LayoutParams layoutParams) {
        k0();
        ((ViewGroup) this.E.findViewById(R.id.content)).addView(view, layoutParams);
        this.f336p.c(this.f335o.getCallback());
    }

    void c0(PanelFeatureState panelFeatureState, boolean z10) {
        ViewGroup viewGroup;
        androidx.appcompat.widget.s sVar;
        if (z10 && panelFeatureState.f347a == 0 && (sVar = this.f341u) != null && sVar.b()) {
            Z(panelFeatureState.f356j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f334n.getSystemService("window");
        if (windowManager != null && panelFeatureState.f361o && (viewGroup = panelFeatureState.f353g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                Y(panelFeatureState.f347a, panelFeatureState, null);
            }
        }
        panelFeatureState.f359m = false;
        panelFeatureState.f360n = false;
        panelFeatureState.f361o = false;
        panelFeatureState.f354h = null;
        panelFeatureState.f363q = true;
        if (this.Q == panelFeatureState) {
            this.Q = null;
        }
        if (panelFeatureState.f347a == 0) {
            c1();
        }
    }

    void c1() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean zW0 = W0();
            if (zW0 && this.f332l0 == null) {
                this.f332l0 = m.b(this.f331k0, this);
            } else {
                if (zW0 || (onBackInvokedCallback = this.f332l0) == null) {
                    return;
                }
                m.c(this.f331k0, onBackInvokedCallback);
                this.f332l0 = null;
            }
        }
    }

    @Override // androidx.appcompat.app.f
    public Context e(Context context) {
        this.S = true;
        int iC0 = C0(context, X());
        if (androidx.appcompat.app.f.t(context)) {
            androidx.appcompat.app.f.Q(context);
        }
        z.f fVarW = W(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(d0(context, iC0, fVarW, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(d0(context, iC0, fVarW, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f320p0) {
            return super.e(context);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = context.createConfigurationContext(configuration).getResources().getConfiguration();
        Configuration configuration3 = context.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration configurationD0 = d0(context, iC0, fVarW, !configuration2.equals(configuration3) ? n0(configuration2, configuration3) : null, true);
        androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, R$style.Theme_AppCompat_Empty);
        dVar.a(configurationD0);
        try {
            if (context.getTheme() != null) {
                h.f.a(dVar.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.e(dVar);
    }

    final int e1(a1 a1Var, Rect rect) {
        boolean z10;
        boolean z11;
        int iM = a1Var != null ? a1Var.m() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f345y;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f345y.getLayoutParams();
            if (this.f345y.isShown()) {
                if (this.f327g0 == null) {
                    this.f327g0 = new Rect();
                    this.f328h0 = new Rect();
                }
                Rect rect2 = this.f327g0;
                Rect rect3 = this.f328h0;
                if (a1Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(a1Var.k(), a1Var.m(), a1Var.l(), a1Var.j());
                }
                o0.a(this.E, rect2, rect3);
                int i10 = rect2.top;
                int i11 = rect2.left;
                int i12 = rect2.right;
                a1 a1VarC = m0.C(this.E);
                int iK = a1VarC == null ? 0 : a1VarC.k();
                int iL = a1VarC == null ? 0 : a1VarC.l();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z11 = true;
                }
                if (i10 <= 0 || this.G != null) {
                    View view = this.G;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iK || marginLayoutParams2.rightMargin != iL) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iK;
                            marginLayoutParams2.rightMargin = iL;
                            this.G.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f334n);
                    this.G = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iK;
                    layoutParams.rightMargin = iL;
                    this.E.addView(this.G, -1, layoutParams);
                }
                View view3 = this.G;
                z = view3 != null;
                if (z && view3.getVisibility() != 0) {
                    f1(this.G);
                }
                if (!this.L && z) {
                    iM = 0;
                }
                z10 = z;
                z = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                z = false;
            }
            if (z) {
                this.f345y.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.G;
        if (view4 != null) {
            view4.setVisibility(z10 ? 0 : 8);
        }
        return iM;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View f0(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        if (this.f329i0 == null) {
            TypedArray typedArrayObtainStyledAttributes = this.f334n.obtainStyledAttributes(R$styleable.AppCompatTheme);
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.AppCompatTheme_viewInflaterClass);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f329i0 = new androidx.appcompat.app.q();
            } else {
                try {
                    this.f329i0 = (androidx.appcompat.app.q) this.f334n.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f329i0 = new androidx.appcompat.app.q();
                }
            }
        }
        boolean z11 = f318n0;
        boolean zV0 = false;
        if (z11) {
            if (this.f330j0 == null) {
                this.f330j0 = new androidx.appcompat.app.r();
            }
            if (this.f330j0.a(attributeSet)) {
                z10 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zV0 = V0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zV0 = true;
                }
                z10 = zV0;
            }
        } else {
            z10 = zV0;
        }
        return this.f329i0.createView(view, str, context, attributeSet, z10, z11, true, n0.c());
    }

    void g0() {
        MenuBuilder menuBuilder;
        androidx.appcompat.widget.s sVar = this.f341u;
        if (sVar != null) {
            sVar.i();
        }
        if (this.f346z != null) {
            this.f335o.getDecorView().removeCallbacks(this.A);
            if (this.f346z.isShowing()) {
                try {
                    this.f346z.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f346z = null;
        }
        j0();
        PanelFeatureState panelFeatureStateT0 = t0(0, false);
        if (panelFeatureStateT0 == null || (menuBuilder = panelFeatureStateT0.f356j) == null) {
            return;
        }
        menuBuilder.close();
    }

    @Override // androidx.appcompat.app.f
    public View h(int i10) {
        k0();
        return this.f335o.findViewById(i10);
    }

    boolean h0(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f333m;
        if (((obj instanceof k.a) || (obj instanceof androidx.appcompat.app.o)) && (decorView = this.f335o.getDecorView()) != null && androidx.core.view.k.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f336p.b(this.f335o.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? E0(keyCode, keyEvent) : H0(keyCode, keyEvent);
    }

    void i0(int i10) {
        PanelFeatureState panelFeatureStateT0;
        PanelFeatureState panelFeatureStateT02 = t0(i10, true);
        if (panelFeatureStateT02.f356j != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateT02.f356j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateT02.f365s = bundle;
            }
            panelFeatureStateT02.f356j.stopDispatchingItemsChanged();
            panelFeatureStateT02.f356j.clear();
        }
        panelFeatureStateT02.f364r = true;
        panelFeatureStateT02.f363q = true;
        if ((i10 != 108 && i10 != 0) || this.f341u == null || (panelFeatureStateT0 = t0(0, false)) == null) {
            return;
        }
        panelFeatureStateT0.f359m = false;
        P0(panelFeatureStateT0, null);
    }

    @Override // androidx.appcompat.app.f
    public Context j() {
        return this.f334n;
    }

    void j0() {
        u0 u0Var = this.B;
        if (u0Var != null) {
            u0Var.c();
        }
    }

    @Override // androidx.appcompat.app.f
    public final androidx.appcompat.app.b l() {
        return new f();
    }

    @Override // androidx.appcompat.app.f
    public int m() {
        return this.W;
    }

    PanelFeatureState m0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.P;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
            if (panelFeatureState != null && panelFeatureState.f356j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater o() {
        if (this.f339s == null) {
            w0();
            androidx.appcompat.app.a aVar = this.f338r;
            this.f339s = new androidx.appcompat.view.g(aVar != null ? aVar.k() : this.f334n);
        }
        return this.f339s;
    }

    final Context o0() {
        androidx.appcompat.app.a aVarQ = q();
        Context contextK = aVarQ != null ? aVarQ.k() : null;
        return contextK == null ? this.f334n : contextK;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return f0(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateM0;
        Window.Callback callbackV0 = v0();
        if (callbackV0 == null || this.U || (panelFeatureStateM0 = m0(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return callbackV0.onMenuItemSelected(panelFeatureStateM0.f347a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        Q0(true);
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a q() {
        w0();
        return this.f338r;
    }

    @Override // androidx.appcompat.app.f
    public void r() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f334n);
        if (layoutInflaterFrom.getFactory() == null) {
            androidx.core.view.l.a(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.f
    public void s() {
        if (N0() == null || q().l()) {
            return;
        }
        A0(0);
    }

    z.f s0(Configuration configuration) {
        return k.b(configuration);
    }

    protected PanelFeatureState t0(int i10, boolean z10) {
        PanelFeatureState[] panelFeatureStateArr = this.P;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i10) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i10 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.P = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i10);
        panelFeatureStateArr[i10] = panelFeatureState2;
        return panelFeatureState2;
    }

    final CharSequence u0() {
        Object obj = this.f333m;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f340t;
    }

    @Override // androidx.appcompat.app.f
    public void v(Configuration configuration) {
        androidx.appcompat.app.a aVarQ;
        if (this.J && this.D && (aVarQ = q()) != null) {
            aVarQ.m(configuration);
        }
        androidx.appcompat.widget.g.b().g(this.f334n);
        this.V = new Configuration(this.f334n.getResources().getConfiguration());
        S(false, false);
    }

    final Window.Callback v0() {
        return this.f335o.getCallback();
    }

    @Override // androidx.appcompat.app.f
    public void w(Bundle bundle) {
        String strC;
        this.S = true;
        R(false);
        l0();
        Object obj = this.f333m;
        if (obj instanceof Activity) {
            try {
                strC = androidx.core.app.f.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarN0 = N0();
                if (aVarN0 == null) {
                    this.f326f0 = true;
                } else {
                    aVarN0.r(true);
                }
            }
            androidx.appcompat.app.f.b(this);
        }
        this.V = new Configuration(this.f334n.getResources().getConfiguration());
        this.T = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    @Override // androidx.appcompat.app.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void x() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f333m
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            androidx.appcompat.app.f.D(r3)
        L9:
            boolean r0 = r3.f323c0
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.f335o
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f325e0
            r0.removeCallbacks(r1)
        L18:
            r0 = 1
            r3.U = r0
            int r0 = r3.W
            r1 = -100
            if (r0 == r1) goto L45
            java.lang.Object r0 = r3.f333m
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L45
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L45
            androidx.collection.i r0 = androidx.appcompat.app.AppCompatDelegateImpl.f317m0
            java.lang.Object r1 = r3.f333m
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.W
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L54
        L45:
            androidx.collection.i r0 = androidx.appcompat.app.AppCompatDelegateImpl.f317m0
            java.lang.Object r1 = r3.f333m
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L54:
            androidx.appcompat.app.a r0 = r3.f338r
            if (r0 == 0) goto L5b
            r0.n()
        L5b:
            r3.a0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.x():void");
    }

    @Override // androidx.appcompat.app.f
    public void y(Bundle bundle) {
        k0();
    }

    @Override // androidx.appcompat.app.f
    public void z() {
        androidx.appcompat.app.a aVarQ = q();
        if (aVarQ != null) {
            aVarQ.t(true);
        }
    }

    AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        AppCompatActivity appCompatActivityZ0;
        this.B = null;
        this.C = true;
        this.W = -100;
        this.f325e0 = new a();
        this.f334n = context;
        this.f337q = dVar;
        this.f333m = obj;
        if (this.W == -100 && (obj instanceof Dialog) && (appCompatActivityZ0 = Z0()) != null) {
            this.W = appCompatActivityZ0.getDelegate().m();
        }
        if (this.W == -100) {
            androidx.collection.i iVar = f317m0;
            Integer num = (Integer) iVar.get(obj.getClass().getName());
            if (num != null) {
                this.W = num.intValue();
                iVar.remove(obj.getClass().getName());
            }
        }
        if (window != null) {
            V(window);
        }
        androidx.appcompat.widget.g.h();
    }
}
