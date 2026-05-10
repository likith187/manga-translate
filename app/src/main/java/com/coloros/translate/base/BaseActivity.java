package com.coloros.translate.base;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import android.window.SystemOnBackInvokedCallbacks;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.b0;
import androidx.lifecycle.v0;
import androidx.lifecycle.y;
import com.coloros.translate.R;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.base.q;
import com.coloros.translate.observer.e;
import com.coloros.translate.privacysecuritypolicy.PrivacyPolicyManager;
import com.coloros.translate.ui.earphone.ConfigAudioChange;
import com.coloros.translate.utils.b1;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.f0;
import com.coloros.translate.utils.i1;
import com.coloros.translate.utils.n;
import com.coloros.translate.utils.w;
import com.coloros.translate.utils.w0;
import com.coui.appcompat.baseview.util.FoldSettingsHelper;
import com.coui.appcompat.theme.COUIThemeOverlay;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import n8.h0;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseActivity<T extends q> extends AppCompatActivity {

    /* JADX INFO: renamed from: n */
    public static final a f4768n = new a(null);

    /* JADX INFO: renamed from: a */
    private b f4769a;

    /* JADX INFO: renamed from: h */
    private OnBackInvokedCallback f4773h;

    /* JADX INFO: renamed from: k */
    private AudioManager.OnModeChangedListener f4776k;

    /* JADX INFO: renamed from: m */
    private volatile int f4778m;

    /* JADX INFO: renamed from: b */
    private final n8.j f4770b = n8.k.b(new e(this));

    /* JADX INFO: renamed from: c */
    private final n.a f4771c = new n.a();

    /* JADX INFO: renamed from: f */
    private final OnBackInvokedCallback f4772f = new OnBackInvokedCallback() { // from class: com.coloros.translate.base.e
        public final void onBackInvoked() {
            BaseActivity.i0(this.f4802a);
        }
    };

    /* JADX INFO: renamed from: i */
    private final e.a f4774i = new d();

    /* JADX INFO: renamed from: j */
    private final n8.j f4775j = n8.k.b(new f(this));

    /* JADX INFO: renamed from: l */
    private final n8.j f4777l = n8.k.b(new c(this));

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends ContentObserver {

        /* JADX INFO: renamed from: a */
        private WeakReference f4779a;

        /* JADX INFO: renamed from: b */
        private Handler f4780b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Handler handler, Context context) {
            super(handler);
            r.e(context, "context");
            this.f4779a = new WeakReference(context);
            this.f4780b = handler;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            super.onChange(z10);
            c0.f7098a.d("BaseActivity", "onChange");
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ BaseActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(BaseActivity<T> baseActivity) {
            super(0);
            this.this$0 = baseActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final AudioManager mo8invoke() {
            Object systemService = this.this$0.getSystemService("audio");
            r.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            return (AudioManager) systemService;
        }
    }

    public static final class d implements e.a {
        d() {
        }

        @Override // com.coloros.translate.observer.e.a
        public void a() {
            BaseActivity.this.w0();
        }

        @Override // com.coloros.translate.observer.e.a
        public void b() {
            BaseActivity.this.x0();
        }
    }

    static final class e extends s implements w8.a {
        final /* synthetic */ BaseActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(BaseActivity<T> baseActivity) {
            super(0);
            this.this$0 = baseActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final T mo8invoke() {
            return (T) v0.b(this.this$0).b(this.this$0.k0());
        }
    }

    static final class f extends s implements w8.a {
        final /* synthetic */ BaseActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(BaseActivity<T> baseActivity) {
            super(0);
            this.this$0 = baseActivity;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final Boolean mo8invoke() {
            return Boolean.valueOf(this.this$0.getClass().getAnnotation(ConfigAudioChange.class) != null);
        }
    }

    static final class g extends kotlin.coroutines.jvm.internal.l implements w8.p {
        int label;

        g(kotlin.coroutines.d dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final kotlin.coroutines.d create(Object obj, kotlin.coroutines.d dVar) {
            return new g(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object objF = kotlin.coroutines.intrinsics.b.f();
            int i10 = this.label;
            if (i10 == 0) {
                n8.s.b(obj);
                this.label = 1;
                if (k0.a(3000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n8.s.b(obj);
            }
            c0.f7098a.d("BaseActivity", "onNetAvailable updateLanguageConfig");
            com.coloros.translate.repository.d.f5439a.e().J();
            return h0.INSTANCE;
        }

        @Override // w8.p
        public final Object invoke(kotlinx.coroutines.c0 c0Var, kotlin.coroutines.d dVar) {
            return ((g) create(c0Var, dVar)).invokeSuspend(h0.INSTANCE);
        }
    }

    public static final void B0(BaseActivity this$0) {
        r.e(this$0, "this$0");
        c0.f7098a.d("BaseActivity", "registerOnBackInvokedCallback from onBackInvoked");
        this$0.onBackPressed();
    }

    private final void C0() {
        Object objM59constructorimpl;
        h0 h0Var;
        try {
            r.a aVar = n8.r.Companion;
            AudioManager.OnModeChangedListener onModeChangedListener = this.f4776k;
            if (onModeChangedListener != null) {
                m0().removeOnModeChangedListener(onModeChangedListener);
                h0Var = h0.INSTANCE;
            } else {
                h0Var = null;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BaseActivity", "unRegisterModeChange error");
        }
    }

    public static final void i0(BaseActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        c0.f7098a.d("BaseActivity", "backInvokedCallback");
        this$0.finish();
    }

    private final AudioManager m0() {
        return (AudioManager) this.f4777l.getValue();
    }

    private final boolean p0() {
        return ((Boolean) this.f4775j.getValue()).booleanValue();
    }

    public static final void t0(w8.l observer, Object obj) {
        kotlin.jvm.internal.r.e(observer, "$observer");
        observer.invoke(obj);
    }

    private final void y0() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            this.f4778m = m0().getMode();
            c0.f7098a.d("BaseActivity", "registerModeChange currentMode:" + this.f4778m);
            AudioManager.OnModeChangedListener onModeChangedListener = new AudioManager.OnModeChangedListener() { // from class: com.coloros.translate.base.d
                @Override // android.media.AudioManager.OnModeChangedListener
                public final void onModeChanged(int i10) {
                    BaseActivity.z0(this.f4801a, i10);
                }
            };
            this.f4776k = onModeChangedListener;
            m0().addOnModeChangedListener(w0.INSTANCE.b(), onModeChangedListener);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("BaseActivity", "registerModeChange error");
        }
    }

    public static final void z0(BaseActivity this$0, int i10) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        c0.f7098a.d("BaseActivity", "registerModeChange " + i10);
        this$0.f4778m = i10;
        this$0.v0();
    }

    public final void A0() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 36) {
            if (i10 >= 33) {
                getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: com.coloros.translate.base.f
                    public final void onBackInvoked() {
                        BaseActivity.B0(this.f4803a);
                    }
                });
            }
        } else {
            if (!r0() && PrivacyPolicyManager.f5415i.a()) {
                c0.f7098a.d("BaseActivity", "registerOnBackInvokedCallback register backInvokedCallback");
                getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.f4772f);
                return;
            }
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f4772f);
            c0.f7098a.d("BaseActivity", "registerOnBackInvokedCallback register finishAndRemoveTaskCallback");
            OnBackInvokedCallback onBackInvokedCallbackFinishAndRemoveTaskCallback = SystemOnBackInvokedCallbacks.finishAndRemoveTaskCallback(this);
            this.f4773h = onBackInvokedCallbackFinishAndRemoveTaskCallback;
            if (onBackInvokedCallbackFinishAndRemoveTaskCallback != null) {
                getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, onBackInvokedCallbackFinishAndRemoveTaskCallback);
            }
        }
    }

    @Override // android.app.Activity
    public void finishAndRemoveTask() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        kotlin.jvm.internal.r.d(stackTrace, "getStackTrace(...)");
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (kotlin.jvm.internal.r.a(stackTraceElement.getMethodName(), "onBackInvoked")) {
                c0.f7098a.d("BaseActivity", "finishAndRemoveTask from onBackInvoked");
                onBackPressed();
            }
        }
        super.finishAndRemoveTask();
    }

    public final View getStatusBarView() {
        i1.a aVar = i1.f7126a;
        Context baseContext = getBaseContext();
        kotlin.jvm.internal.r.d(baseContext, "getBaseContext(...)");
        int iC = aVar.c(baseContext);
        ImageView imageView = new ImageView(getBaseContext());
        imageView.setBackground(r.a.e(TranslationApplication.f4754b.a(), com.support.appcompat.R$color.coui_color_background_with_card));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, iC));
        return imageView;
    }

    public final boolean j0() {
        boolean zA = q.f4813f.a(this.f4778m);
        if (zA) {
            w.h(R.string.in_call_and_try_later, 0, 2, null);
        }
        c0.f7098a.i("BaseActivity", "checkInCallMode " + zA);
        return zA;
    }

    public abstract Class k0();

    protected abstract int l0();

    protected final e.a n0() {
        return this.f4774i;
    }

    protected final q o0() {
        return (q) this.f4770b.getValue();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4771c.d(SystemClock.elapsedRealtime());
        COUIThemeOverlay.getInstance().applyThemeOverlays(this);
        setContentView(l0());
        o0().k();
        Uri uriFor = Settings.Global.getUriFor(FoldSettingsHelper.SYSTEM_FOLDING_MODE_KEY);
        kotlin.jvm.internal.r.d(uriFor, "getUriFor(...)");
        this.f4769a = new b(new Handler(), this);
        ContentResolver contentResolver = getContentResolver();
        b bVar = this.f4769a;
        kotlin.jvm.internal.r.b(bVar);
        contentResolver.registerContentObserver(uriFor, false, bVar);
        Window window = getWindow();
        kotlin.jvm.internal.r.d(window, "getWindow(...)");
        f0.b(window);
        if (p0()) {
            y0();
        }
        A0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.f4771c.c(SystemClock.elapsedRealtime());
        if (this.f4769a != null) {
            ContentResolver contentResolver = getContentResolver();
            b bVar = this.f4769a;
            kotlin.jvm.internal.r.b(bVar);
            contentResolver.unregisterContentObserver(bVar);
        }
        if (p0()) {
            C0();
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 36 && this.f4773h != null) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            OnBackInvokedCallback onBackInvokedCallback = this.f4773h;
            kotlin.jvm.internal.r.b(onBackInvokedCallback);
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackInvokedCallback);
        }
        if (i10 >= 33) {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f4772f);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        kotlin.jvm.internal.r.e(item, "item");
        if (item.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        kotlin.jvm.internal.r.e(permissions, "permissions");
        kotlin.jvm.internal.r.e(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        if (i10 == 1) {
            Intent intent = getIntent();
            Bundle bundle = new Bundle();
            if ((grantResults.length == 0) || grantResults[0] != 0) {
                c0.f7098a.d("BaseActivity", "Microphone permission has been denied");
                bundle.putBoolean("permission_granted", false);
            } else {
                c0.f7098a.d("BaseActivity", "Microphone permission is granted");
                bundle.putBoolean("permission_granted", true);
            }
            intent.putExtras(bundle);
            com.coloros.translate.permission.a.f5407c.a().f(this, intent);
            return;
        }
        if (i10 != 2) {
            return;
        }
        Intent intent2 = getIntent();
        Bundle bundle2 = new Bundle();
        if ((grantResults.length == 0) || grantResults[0] != 0) {
            c0.f7098a.d("BaseActivity", "Microphone permission has been denied");
            bundle2.putBoolean("permission_granted", false);
        } else {
            c0.f7098a.d("BaseActivity", "Microphone permission is granted");
            bundle2.putBoolean("permission_granted", true);
        }
        intent2.putExtras(bundle2);
        com.coloros.translate.permission.a.f5407c.a().g(this, intent2);
    }

    protected final n.a q0() {
        return this.f4771c;
    }

    public boolean r0() {
        return false;
    }

    protected final void s0(y liveData, final w8.l observer) {
        kotlin.jvm.internal.r.e(liveData, "liveData");
        kotlin.jvm.internal.r.e(observer, "observer");
        liveData.g(this, new b0() { // from class: com.coloros.translate.base.g
            @Override // androidx.lifecycle.b0
            public final void b(Object obj) {
                BaseActivity.t0(observer, obj);
            }
        });
    }

    public void u0() {
        c0.f7098a.d("BaseActivity", "onAudioFocusLost");
        o0().j();
    }

    public void v0() {
        if (q.f4813f.a(this.f4778m)) {
            u0();
        }
    }

    public final void w0() {
        kotlinx.coroutines.g.b(d0.a(o0.b()), null, null, new g(null), 3, null);
    }

    public void x0() {
        b1.c(R.string.no_network, 0, 2, null);
    }
}
