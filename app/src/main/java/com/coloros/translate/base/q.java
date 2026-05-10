package com.coloros.translate.base;

import android.app.Application;
import android.media.AudioManager;
import androidx.lifecycle.a0;
import androidx.lifecycle.b0;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes.dex */
public class q extends androidx.lifecycle.a implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: f */
    public static final a f4813f = new a(null);

    /* JADX INFO: renamed from: c */
    private final n8.j f4814c;

    /* JADX INFO: renamed from: d */
    private boolean f4815d;

    /* JADX INFO: renamed from: e */
    private boolean f4816e;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(int i10) {
            return i10 == 2;
        }

        private a() {
        }
    }

    static final class b extends s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final AudioManager mo8invoke() {
            Object systemService = TranslationApplication.f4754b.a().getSystemService("audio");
            r.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            return (AudioManager) systemService;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Application application) {
        super(application);
        r.e(application, "application");
        this.f4814c = n8.k.b(b.INSTANCE);
    }

    private final AudioManager f() {
        return (AudioManager) this.f4814c.getValue();
    }

    @Override // androidx.lifecycle.s0
    protected void d() {
        super.d();
    }

    public final boolean g() {
        return this.f4815d;
    }

    public final boolean h(boolean z10) {
        c0.f7098a.d("BaseViewModel", "muteMusic：" + z10);
        if (z10) {
            int iRequestAudioFocus = f().requestAudioFocus(this, 3, 1);
            this.f4815d = false;
            if (iRequestAudioFocus != 1) {
                return false;
            }
        } else {
            int iAbandonAudioFocus = f().abandonAudioFocus(this);
            this.f4815d = true;
            if (iAbandonAudioFocus != 1) {
                return false;
            }
        }
        return true;
    }

    public final void i(a0 liveData, b0 observer) {
        r.e(liveData, "liveData");
        r.e(observer, "observer");
        c0.f7098a.d("BaseViewModel", "removeObserver");
        liveData.h(observer);
    }

    public void j() {
        c0.f7098a.d("BaseViewModel", "onAudioFocusLost");
    }

    public void k() {
    }

    public final void l() {
        this.f4816e = false;
        c0.f7098a.i("BaseViewModel", "registerAudioFocusChangeListener");
        h(false);
    }

    public final void m(a0 liveData, b0 observer) {
        r.e(liveData, "liveData");
        r.e(observer, "observer");
        c0.f7098a.d("BaseViewModel", "removeObserver");
        liveData.l(observer);
    }

    public final void n() {
        this.f4816e = true;
        c0.f7098a.i("BaseViewModel", "unregisterAudioFocusChangeListener");
        h(false);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i10) {
        if (i10 == -2 || i10 == -1) {
            com.coloros.translate.repository.remote.c cVarE = com.coloros.translate.repository.d.f5439a.e();
            c0.f7098a.d("BaseViewModel", "lost focus :" + this.f4816e);
            if (!this.f4816e && cVarE.C()) {
                j();
            }
            this.f4815d = true;
        }
    }
}
