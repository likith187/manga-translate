package com.coloros.translate.engine.asr.voicetranslate;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import x1.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends x1.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4893g = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f4894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap f4895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n f4896f;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f4897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private IBinder f4898b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g f4899c;

        public b(g gVar, String mTag, IBinder iBinder) {
            r.e(mTag, "mTag");
            this.f4899c = gVar;
            this.f4897a = mTag;
            this.f4898b = iBinder;
            if (iBinder != null) {
                gVar.f4895e.put(this.f4897a, this);
            }
        }

        public final void a() {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            c0.f7098a.d("BaseTranslateRtAsrWrapper", "unbindDied");
            g gVar = this.f4899c;
            try {
                r.a aVar = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl((b) gVar.f4895e.remove(this.f4897a));
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("BaseTranslateRtAsrWrapper", "unbindDied error:" + thM62exceptionOrNullimpl.getMessage());
            }
            try {
                IBinder iBinder = this.f4898b;
                objM59constructorimpl2 = n8.r.m59constructorimpl(iBinder != null ? Boolean.valueOf(iBinder.unlinkToDeath(this, 0)) : null);
            } catch (Throwable th2) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl2 = n8.r.m59constructorimpl(s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("BaseTranslateRtAsrWrapper", "unbindDied error 2:" + thM62exceptionOrNullimpl2.getMessage());
            }
            this.f4898b = null;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a();
            this.f4899c.l();
        }
    }

    public static final class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            kotlin.jvm.internal.r.e(msg, "msg");
            c0.f7098a.d("BaseTranslateRtAsrWrapper", "slice time out");
            n nVarM = g.this.m();
            if (nVarM == null) {
                return false;
            }
            com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.SILENCE_TIMEOUT;
            nVarM.m(2, kVar.getCode(), kVar.getMessage());
            return false;
        }
    }

    public g(Context context) {
        super(context);
        this.f4894d = new Handler(Looper.getMainLooper(), new c());
        this.f4895e = new ConcurrentHashMap();
        this.f4896f = new n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l() {
        c0.f7098a.d("BaseTranslateRtAsrWrapper", "doBinderDied");
        if (this.f4895e.isEmpty()) {
            o();
        }
    }

    @Override // x1.a
    public void h() {
        n();
    }

    public final void k() {
        this.f4894d.removeMessages(ConfigPackage.FRAME_SIZE_5);
        c0.f7098a.d("BaseTranslateRtAsrWrapper", "clearScienceMsg");
    }

    public final n m() {
        return this.f4896f;
    }

    public void n() {
        k();
        this.f4894d.sendEmptyMessageDelayed(ConfigPackage.FRAME_SIZE_5, this.f16185b.d());
        c0.f7098a.d("BaseTranslateRtAsrWrapper", "onResetScienceMsg " + this.f16185b.d());
    }

    public void o() {
        c0.f7098a.e("BaseTranslateRtAsrWrapper", "realDoBinderDied");
    }

    public final void p() {
        Object objM59constructorimpl;
        try {
            r.a aVar = n8.r.Companion;
            Collection collectionValues = this.f4895e.values();
            kotlin.jvm.internal.r.d(collectionValues, "<get-values>(...)");
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a();
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BaseTranslateRtAsrWrapper", "removeAllBinderCallBack error 2:" + thM62exceptionOrNullimpl.getMessage());
        }
        this.f4895e.clear();
    }

    @Override // x1.o
    public void pauseRecord() {
        k();
    }

    @Override // x1.o
    public void registerRtasrListener(String tag, IRtasrListener listener) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(tag, "tag");
        kotlin.jvm.internal.r.e(listener, "listener");
        b bVar = (b) this.f4895e.get(tag);
        if (bVar != null) {
            bVar.a();
        }
        n nVar = this.f4896f;
        if (nVar != null) {
            nVar.registerRtasrListener(tag, listener);
        }
        try {
            r.a aVar = n8.r.Companion;
            IBinder iBinderAsBinder = listener.asBinder();
            iBinderAsBinder.linkToDeath(new b(this, tag, iBinderAsBinder), 0);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("BaseTranslateRtAsrWrapper", "registerRtasrListener error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    @Override // x1.o
    public void resumeRecord() {
        n();
    }

    @Override // x1.o
    public void sendAudioBytes(byte[] bArr) {
    }

    @Override // x1.o
    public void unRegisterRtasrListener(String tag) {
        kotlin.jvm.internal.r.e(tag, "tag");
        n nVar = this.f4896f;
        if (nVar != null) {
            nVar.unRegisterRtasrListener(tag);
        }
        k();
        b bVar = (b) this.f4895e.get(tag);
        if (bVar != null) {
            bVar.a();
        }
    }
}
