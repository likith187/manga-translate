package com.coloros.translate.engine.text.engine;

import android.content.Context;
import android.os.RemoteException;
import androidx.lifecycle.b0;
import com.coloros.translate.engine.ITranslateListener;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.engine.text.engine.a;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.Callback;
import com.oplus.aiunit.translation.callback.ITranslateConfig;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import com.oplus.aiunit.translation.request.StreamTextTranslateRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: f */
    public static final C0066a f5147f = new C0066a(null);

    /* JADX INFO: renamed from: a */
    private final Context f5148a;

    /* JADX INFO: renamed from: b */
    private c2.a f5149b;

    /* JADX INFO: renamed from: c */
    private boolean f5150c;

    /* JADX INFO: renamed from: d */
    private final Object f5151d;

    /* JADX INFO: renamed from: e */
    private final j f5152e;

    /* JADX INFO: renamed from: com.coloros.translate.engine.text.engine.a$a */
    public static final class C0066a {
        public /* synthetic */ C0066a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0066a() {
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        public static final void invoke$lambda$0(a this$0, Boolean bool) {
            r.e(this$0, "this$0");
            if (r.a(bool, Boolean.FALSE)) {
                c0.f7098a.i("AiUnitOnlineStreamTextTranslateClient", "aiunit died");
                this$0.f5150c = false;
                this$0.f5149b.d(-2001);
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b0 mo8invoke() {
            final a aVar = a.this;
            return new b0() { // from class: com.coloros.translate.engine.text.engine.b
                @Override // androidx.lifecycle.b0
                public final void b(Object obj) {
                    a.b.invoke$lambda$0(aVar, (Boolean) obj);
                }
            };
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ String $currentRequestId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(0);
            this.$currentRequestId = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Object objM59constructorimpl;
            String str = this.$currentRequestId;
            try {
                r.a aVar = n8.r.Companion;
                TextRecognizeHelper.INSTANCE.cancelStreamTextTranslate(str);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "cancelStreamTextTranslate error: " + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    static final class d extends s implements w8.a {
        final /* synthetic */ ArrayList<String> $ids;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(ArrayList<String> arrayList) {
            super(0);
            this.$ids = arrayList;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            Object objM59constructorimpl;
            for (String str : this.$ids) {
                try {
                    r.a aVar = n8.r.Companion;
                    c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "cancelStreamTextTranslate id:" + str);
                    TextRecognizeHelper.INSTANCE.cancelStreamTextTranslate(str);
                    objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "cancelStreamTextTranslate error: " + thM62exceptionOrNullimpl.getMessage());
                }
            }
        }
    }

    static final class e extends s implements w8.a {
        final /* synthetic */ String $currentRequestId;
        final /* synthetic */ String $from;
        final /* synthetic */ StreamTextTranslateRequest $request;
        final /* synthetic */ String $to;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, String str2, String str3, StreamTextTranslateRequest streamTextTranslateRequest) {
            super(0);
            this.$from = str;
            this.$to = str2;
            this.$currentRequestId = str3;
            this.$request = streamTextTranslateRequest;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate, from = " + this.$from + ", to = " + this.$to + ", requestId = " + this.$currentRequestId + ", text = " + aVar.g(this.$request.getText()));
        }
    }

    public static final class f extends com.coloros.translate.engine.text.engine.c {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f5153b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ kotlin.jvm.internal.b0 f5154c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ a f5155d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ StreamTextTranslateRequest f5156e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ String f5157f;

        /* JADX INFO: renamed from: g */
        final /* synthetic */ String f5158g;

        f(String str, kotlin.jvm.internal.b0 b0Var, a aVar, StreamTextTranslateRequest streamTextTranslateRequest, String str2, String str3) {
            this.f5153b = str;
            this.f5154c = b0Var;
            this.f5155d = aVar;
            this.f5156e = streamTextTranslateRequest;
            this.f5157f = str2;
            this.f5158g = str3;
        }

        @Override // com.coloros.translate.engine.text.engine.c, com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
        public void onDataAvailable(String requestId, String translate_text) {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            h0 h0Var;
            kotlin.jvm.internal.r.e(requestId, "requestId");
            kotlin.jvm.internal.r.e(translate_text, "translate_text");
            super.onDataAvailable(requestId, translate_text);
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onDataAvailable requestId = " + this.f5153b);
            String str = this.f5153b;
            kotlin.jvm.internal.b0 b0Var = this.f5154c;
            StreamTextTranslateRequest streamTextTranslateRequest = this.f5156e;
            String str2 = this.f5157f;
            String str3 = this.f5158g;
            a aVar2 = this.f5155d;
            try {
                r.a aVar3 = n8.r.Companion;
                String string = new JSONObject(translate_text).getString("translate_text");
                if (string == null) {
                    string = "";
                } else {
                    kotlin.jvm.internal.r.b(string);
                }
                aVar.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate time onDataAvailable data requestId:" + str + " length:" + string.length() + " time:" + (System.currentTimeMillis() - b0Var.element));
                try {
                    OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
                    onLineTranslateResult.m(streamTextTranslateRequest.getText());
                    onLineTranslateResult.j(str2);
                    onLineTranslateResult.p(str3);
                    onLineTranslateResult.q(o.d(string));
                    ITranslateListener iTranslateListenerG = aVar2.f5149b.g(str);
                    if (iTranslateListenerG != null) {
                        iTranslateListenerG.onStreamResult(requestId, false, onLineTranslateResult);
                        h0Var = h0.INSTANCE;
                    } else {
                        h0Var = null;
                    }
                    objM59constructorimpl2 = n8.r.m59constructorimpl(h0Var);
                } catch (Throwable th) {
                    r.a aVar4 = n8.r.Companion;
                    objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "convertToSingleTranslateResult error:" + thM62exceptionOrNullimpl.getMessage());
                }
                objM59constructorimpl = n8.r.m59constructorimpl(n8.r.m58boximpl(objM59constructorimpl2));
            } catch (Throwable th2) {
                r.a aVar5 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onDataAvailable error:" + thM62exceptionOrNullimpl2.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.text.engine.c, com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
        public void onError(String requestId, int i10, String str) {
            Object objM59constructorimpl;
            kotlin.jvm.internal.r.e(requestId, "requestId");
            super.onError(requestId, i10, str);
            c0.a aVar = c0.f7098a;
            aVar.i("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, errorCode:" + i10);
            a aVar2 = this.f5155d;
            String str2 = this.f5153b;
            try {
                r.a aVar3 = n8.r.Companion;
                ITranslateListener iTranslateListenerG = aVar2.f5149b.g(str2);
                if (iTranslateListenerG == null) {
                    aVar.q("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onFailure:" + str + " reject");
                }
                if (iTranslateListenerG != null) {
                    iTranslateListenerG.onStreamError(requestId, str == null ? "" : str, -2000);
                }
                aVar.i("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onFailure:" + str);
                objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onFailure error:" + thM62exceptionOrNullimpl.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.text.engine.c, com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
        public void onFinished(String requestId, String str) {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            h0 h0Var;
            kotlin.jvm.internal.r.e(requestId, "requestId");
            super.onFinished(requestId, str);
            StreamTextTranslateRequest streamTextTranslateRequest = this.f5156e;
            String str2 = this.f5157f;
            String str3 = this.f5158g;
            a aVar = this.f5155d;
            String str4 = this.f5153b;
            try {
                r.a aVar2 = n8.r.Companion;
                String string = new JSONObject(str).getString(TranslationClient.PARAM_KEY_FINISH_FULL_TEXT);
                if (string == null) {
                    string = "";
                } else {
                    kotlin.jvm.internal.r.b(string);
                }
                int i10 = new JSONObject(str).getInt("event_code");
                OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
                onLineTranslateResult.m(streamTextTranslateRequest.getText());
                onLineTranslateResult.j(str2);
                onLineTranslateResult.p(str3);
                onLineTranslateResult.q(o.d(string));
                onLineTranslateResult.g(i10);
                ITranslateListener iTranslateListenerG = aVar.f5149b.g(str4);
                if (iTranslateListenerG != null) {
                    iTranslateListenerG.onStreamResult(str4, true, onLineTranslateResult);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate onFinished e1:" + thM62exceptionOrNullimpl.getMessage());
            }
            try {
                this.f5155d.f5149b.k(requestId);
                objM59constructorimpl2 = n8.r.m59constructorimpl(h0.INSTANCE);
            } catch (Throwable th2) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl2 = n8.r.m59constructorimpl(n8.s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onFinished e2:" + thM62exceptionOrNullimpl2.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.text.engine.c, com.oplus.aiunit.translation.callback.StreamTextTranslateCallback
        public void onStart(String requestId) {
            Object objM59constructorimpl;
            h0 h0Var;
            kotlin.jvm.internal.r.e(requestId, "requestId");
            super.onStart(requestId);
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate time onStart requestId:" + this.f5153b + " time:" + (System.currentTimeMillis() - this.f5154c.element));
            a aVar2 = this.f5155d;
            String str = this.f5153b;
            try {
                r.a aVar3 = n8.r.Companion;
                ITranslateListener iTranslateListenerG = aVar2.f5149b.g(str);
                if (iTranslateListenerG == null) {
                    aVar.q("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onStart requestId: " + requestId + " reject");
                }
                if (iTranslateListenerG != null) {
                    iTranslateListenerG.onStreamTranslateStart(requestId);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "generateStreamTextTranslate, onStart error:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    static final class g extends s implements w8.a {
        final /* synthetic */ String $currentRequestId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str) {
            super(0);
            this.$currentRequestId = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate end requestId = " + this.$currentRequestId);
        }
    }

    public static final class h implements ITranslateConfig {
        h() {
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public int getImageTranslateMaxTaskCount() {
            return ITranslateConfig.DefaultImpls.getImageTranslateMaxTaskCount(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public long getImageTranslateTimeout() {
            return ITranslateConfig.DefaultImpls.getImageTranslateTimeout(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public String getPackageName() {
            return "com.coloros.translate";
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public int getPhotoTranslateMaxTaskCount() {
            return ITranslateConfig.DefaultImpls.getPhotoTranslateMaxTaskCount(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public long getPhotoTranslateTimeout() {
            return ITranslateConfig.DefaultImpls.getPhotoTranslateTimeout(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public int getSSETextTranslateMaxTaskCount() {
            return ITranslateConfig.DefaultImpls.getSSETextTranslateMaxTaskCount(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public long getSSETextTranslateTimeout() {
            return ITranslateConfig.DefaultImpls.getSSETextTranslateTimeout(this);
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public int getTextTranslateMaxTaskCount() {
            c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "initTranslate max task count:30");
            return 30;
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public long getTextTranslateTimeout() {
            return ITranslateConfig.DefaultImpls.getTextTranslateTimeout(this);
        }
    }

    public static final class i implements Callback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CountDownLatch f5159a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ a f5160b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f5161c;

        i(CountDownLatch countDownLatch, a aVar, String str) {
            this.f5159a = countDownLatch;
            this.f5160b = aVar;
            this.f5161c = str;
        }

        @Override // com.oplus.aiunit.translation.callback.Callback
        public void onError(String str) {
            try {
                this.f5159a.countDown();
                ITranslateListener iTranslateListenerG = this.f5160b.f5149b.g(this.f5161c);
                if (iTranslateListenerG != null) {
                    iTranslateListenerG.onStreamError(this.f5161c, str == null ? "" : str, -2000);
                }
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "initTranslate, onFailure:" + str);
            } catch (RemoteException unused) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "initTranslate, onFailure error");
            }
        }

        @Override // com.oplus.aiunit.translation.callback.Callback
        public void onSuccess() {
            c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "initTranslate, onSuccess");
            this.f5160b.f5150c = true;
            this.f5159a.countDown();
        }
    }

    public a(Context mContext) {
        kotlin.jvm.internal.r.e(mContext, "mContext");
        this.f5148a = mContext;
        this.f5149b = new c2.a();
        this.f5151d = new Object();
        this.f5152e = k.b(new b());
        com.coloros.translate.observer.c.f5327o.c(f());
    }

    private final void e(String str, String str2, String str3, List list) {
        String strA = com.coloros.translate.utils.b.a(this.f5148a);
        g(str3);
        StreamTextTranslateRequest streamTextTranslateRequest = new StreamTextTranslateRequest();
        streamTextTranslateRequest.setRequestId(str3);
        streamTextTranslateRequest.setAppId(strA);
        streamTextTranslateRequest.setSource(str);
        streamTextTranslateRequest.setTarget(str2);
        streamTextTranslateRequest.setText(o.a0(list, "", null, null, 0, null, null, 62, null));
        h(new e(str, str2, str3, streamTextTranslateRequest));
        kotlin.jvm.internal.b0 b0Var = new kotlin.jvm.internal.b0();
        b0Var.element = System.currentTimeMillis();
        c0.a aVar = c0.f7098a;
        aVar.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate time start requestId:" + str3 + " time:0 length:" + streamTextTranslateRequest.getText().length());
        TextRecognizeHelper.INSTANCE.generateStreamTextTranslate(streamTextTranslateRequest, new f(str3, b0Var, this, streamTextTranslateRequest, str, str2));
        long jCurrentTimeMillis = System.currentTimeMillis() - b0Var.element;
        b0Var.element = jCurrentTimeMillis;
        aVar.d("AiUnitOnlineStreamTextTranslateClient", "doTranslate time end requestId:" + str3 + " time:" + jCurrentTimeMillis);
        h(new g(str3));
    }

    private final b0 f() {
        return (b0) this.f5152e.getValue();
    }

    private final void g(String str) {
        if (this.f5150c) {
            return;
        }
        synchronized (this.f5151d) {
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitOnlineStreamTextTranslateClient", "initTranslate if necessary:" + this.f5150c);
            if (this.f5150c) {
                return;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            aVar.d("AiUnitOnlineStreamTextTranslateClient", DcsTrackingPoint.Method.initTranslate);
            TextRecognizeHelper.INSTANCE.initTranslate(this.f5148a, new h(), new i(countDownLatch, this, str));
            try {
                countDownLatch.await(5L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "initTranslate e = " + e10.getMessage());
                h0 h0Var = h0.INSTANCE;
            }
        }
    }

    private final void h(w8.a aVar) {
        if (c0.f7098a.l()) {
            aVar.mo8invoke();
        }
    }

    public final void c(String currentRequestId) {
        kotlin.jvm.internal.r.e(currentRequestId, "currentRequestId");
        c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "cancelStreamTextTranslate id:" + currentRequestId);
        this.f5149b.k(currentRequestId);
        z0.d(0L, new c(currentRequestId), 1, null);
    }

    public final void d() {
        com.coloros.translate.observer.c.f5327o.e(f());
        ArrayList arrayListF = this.f5149b.f();
        this.f5149b.j();
        z0.d(0L, new d(arrayListF), 1, null);
    }

    public final void i(String from, String to, String requestId, String str, ITranslateListener iTranslateListener) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(requestId, "requestId");
        c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "translateSingleText");
        this.f5149b.i(requestId, iTranslateListener);
        if (iTranslateListener != null) {
            try {
                iTranslateListener.onStreamTranslateStart(requestId);
            } catch (RemoteException e10) {
                c0.f7098a.e("AiUnitOnlineStreamTextTranslateClient", "translateSingleText error: " + e10.getMessage());
            }
        }
        if (str == null) {
            str = "";
        }
        e(from, to, requestId, o.m(str));
    }

    public final void j(String from, String to, String requestId, List inputTextList, ITranslateListener iTranslateListener) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(requestId, "requestId");
        kotlin.jvm.internal.r.e(inputTextList, "inputTextList");
        c0.f7098a.d("AiUnitOnlineStreamTextTranslateClient", "translateTextList");
        this.f5149b.i(requestId, iTranslateListener);
        e(from, to, requestId, inputTextList);
    }
}
