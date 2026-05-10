package x1;

import com.coloros.translate.engine.IRtasrListener;
import com.coloros.translate.engine.info.AsrResult;
import com.coloros.translate.engine.info.AsrTranslateResult;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public class n extends IRtasrListener.Stub {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f16227c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f16228a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f16229b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(n this$0, long j10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).onRecordTime(j10);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "setRunningType e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(n this$0, int i10, int i11, String str) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onResultStatus from = " + i10 + " code = " + i11 + " msg = " + str);
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).onResultStatus(i10, i11, str);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onResultStatus e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(n this$0, AsrResult asrResult) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).onRtasrResult(asrResult);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onRtasrResult e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(n this$0) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onStart");
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    IRtasrListener iRtasrListener = (IRtasrListener) entry.getValue();
                    if (iRtasrListener != null) {
                        iRtasrListener.onStart();
                    }
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStart e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(n this$0, int i10, String str) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onStatus code = " + i10 + " msg = " + str);
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).onStatus(i10, str);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStatus e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(n this$0) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onStop");
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    IRtasrListener iRtasrListener = (IRtasrListener) entry.getValue();
                    if (iRtasrListener != null) {
                        iRtasrListener.onStop();
                    }
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStop e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(n this$0, AsrTranslateResult asrTranslateResult) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(asrTranslateResult, "$asrTranslateResult");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onTranslateResult");
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    IRtasrListener iRtasrListener = (IRtasrListener) entry.getValue();
                    if (iRtasrListener != null) {
                        iRtasrListener.onTranslateResult(asrTranslateResult);
                    }
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onTranslateResult e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(n this$0, byte[] bArr) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).onVoiceData(bArr);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onVoiceData e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(n this$0, double d10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    IRtasrListener iRtasrListener = (IRtasrListener) entry.getValue();
                    if (iRtasrListener != null) {
                        iRtasrListener.onVoiceVolume(d10);
                    }
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onVoiceVolume e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(n this$0, int i10) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f16228a.size() > 0) {
            try {
                r.a aVar = n8.r.Companion;
                for (Map.Entry entry : this$0.f16228a.entrySet()) {
                    kotlin.jvm.internal.r.b(entry);
                    ((IRtasrListener) entry.getValue()).setRunningType(i10);
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "setRunningType e = " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    public final void m(int i10, int i11, String str) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onResultStatus, unable is true");
        } else {
            onStatus(i11, str);
            onResultStatus(i10, i11, str);
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onRecordTime(final long j10) {
        com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.g
            @Override // java.lang.Runnable
            public final void run() {
                n.k(this.f16205a, j10);
            }
        });
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onResultStatus(final int i10, final int i11, final String str) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onResultStatus, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.j
                @Override // java.lang.Runnable
                public final void run() {
                    n.l(this.f16212a, i10, i11, str);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onRtasrResult(final AsrResult asrResult) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onRtasrResult, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.i
                @Override // java.lang.Runnable
                public final void run() {
                    n.n(this.f16210a, asrResult);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onStart() {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStart, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.e
                @Override // java.lang.Runnable
                public final void run() {
                    n.o(this.f16198a);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onStatus(final int i10, final String str) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStatus, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.l
                @Override // java.lang.Runnable
                public final void run() {
                    n.p(this.f16220a, i10, str);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onStop() {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onStop, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.m
                @Override // java.lang.Runnable
                public final void run() {
                    n.q(this.f16225a);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onTranslateResult(final AsrTranslateResult asrTranslateResult) {
        kotlin.jvm.internal.r.e(asrTranslateResult, "asrTranslateResult");
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.d("BaseRtAsrWrapperListener", "onTranslateResult, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.h
                @Override // java.lang.Runnable
                public final void run() {
                    n.r(this.f16208a, asrTranslateResult);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onVoiceData(final byte[] bArr) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onVoiceData, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.k
                @Override // java.lang.Runnable
                public final void run() {
                    n.s(this.f16216a, bArr);
                }
            });
        }
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void onVoiceVolume(final double d10) {
        if (this.f16229b) {
            com.coloros.translate.utils.c0.f7098a.e("BaseRtAsrWrapperListener", "onVoiceVolume, unable is true");
        } else {
            com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.d
                @Override // java.lang.Runnable
                public final void run() {
                    n.t(this.f16195a, d10);
                }
            });
        }
    }

    public final void registerRtasrListener(String str, IRtasrListener iRtasrListener) {
        if (str == null || str.length() == 0 || iRtasrListener == null) {
            return;
        }
        this.f16228a.put(str, iRtasrListener);
    }

    @Override // com.coloros.translate.engine.IRtasrListener
    public void setRunningType(final int i10) {
        com.coloros.translate.utils.t0.e(new Runnable() { // from class: x1.f
            @Override // java.lang.Runnable
            public final void run() {
                n.u(this.f16200a, i10);
            }
        });
    }

    public final void unRegisterRtasrListener(String str) {
        kotlin.jvm.internal.i0.c(this.f16228a).remove(str);
    }
}
