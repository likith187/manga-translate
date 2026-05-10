package com.coloros.translate.engine.text.impl;

import android.content.Context;
import android.os.RemoteException;
import androidx.lifecycle.b0;
import com.coloros.translate.engine.ITranslateListener;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.engine.text.impl.a;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.o;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.Callback;
import com.oplus.aiunit.translation.callback.ITranslateConfig;
import com.oplus.aiunit.translation.callback.TextTranslateCallback;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import com.oplus.aiunit.translation.model.TextTranslateData;
import com.oplus.aiunit.translation.request.TextTranslateRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: g */
    public static final C0068a f5198g = new C0068a(null);

    /* JADX INFO: renamed from: a */
    private final Context f5199a;

    /* JADX INFO: renamed from: b */
    private ITranslateListener f5200b;

    /* JADX INFO: renamed from: c */
    private String f5201c;

    /* JADX INFO: renamed from: d */
    private boolean f5202d;

    /* JADX INFO: renamed from: e */
    private final Object f5203e;

    /* JADX INFO: renamed from: f */
    private final j f5204f;

    /* JADX INFO: renamed from: com.coloros.translate.engine.text.impl.a$a */
    public static final class C0068a {
        public /* synthetic */ C0068a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0068a() {
        }
    }

    static final class b extends s implements w8.a {
        b() {
            super(0);
        }

        public static final void invoke$lambda$0(a this$0, Boolean bool) {
            r.e(this$0, "this$0");
            if (r.a(bool, Boolean.FALSE)) {
                c0.f7098a.i("AiUnitOnlineTextTranslateClient", "aiunit died");
                this$0.f5202d = false;
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b0 mo8invoke() {
            final a aVar = a.this;
            return new b0() { // from class: com.coloros.translate.engine.text.impl.b
                @Override // androidx.lifecycle.b0
                public final void b(Object obj) {
                    a.b.invoke$lambda$0(aVar, (Boolean) obj);
                }
            };
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ String $currentRequestId;
        final /* synthetic */ String $from;
        final /* synthetic */ List<String> $text;
        final /* synthetic */ String $to;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, String str2, String str3, List<String> list) {
            super(0);
            this.$from = str;
            this.$to = str2;
            this.$currentRequestId = str3;
            this.$text = list;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            c0.f7098a.d("AiUnitOnlineTextTranslateClient", "doTranslate, from = " + this.$from + ", to = " + this.$to + ", requestId = " + this.$currentRequestId + ", text.size = " + this.$text.size());
        }
    }

    public static final class d implements TextTranslateCallback {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ TextTranslateRequest f5206b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ String f5207c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f5208d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ String f5209e;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ String f5210f;

        d(TextTranslateRequest textTranslateRequest, String str, int i10, String str2, String str3) {
            this.f5206b = textTranslateRequest;
            this.f5207c = str;
            this.f5208d = i10;
            this.f5209e = str2;
            this.f5210f = str3;
        }

        @Override // com.oplus.aiunit.translation.callback.TextTranslateCallback
        public void onError(int i10, String str) {
            try {
                ITranslateListener iTranslateListener = a.this.f5200b;
                if (iTranslateListener != null) {
                    String requestId = this.f5206b.getRequestId();
                    String str2 = str == null ? "" : str;
                    int i11 = 100030;
                    if (i10 != 100030) {
                        i11 = -2000;
                    }
                    iTranslateListener.onError(requestId, str2, i11);
                }
                c0.f7098a.e("AiUnitOnlineTextTranslateClient", "generateTextTranslate, onFailure:" + str);
            } catch (RemoteException unused) {
                c0.f7098a.e("AiUnitOnlineTextTranslateClient", "generateTextTranslate, onFailure error");
            }
        }

        @Override // com.oplus.aiunit.translation.callback.TextTranslateCallback
        public void onSuccess(String requestId, List data, int i10) {
            r.e(requestId, "requestId");
            r.e(data, "data");
            c0.f7098a.d("AiUnitOnlineTextTranslateClient", "generateTextTranslate, requestId = " + this.f5207c);
            int i11 = this.f5208d;
            if (i11 == 0) {
                a.this.f(this.f5209e, this.f5210f, data, i10, requestId);
            } else {
                if (i11 != 1) {
                    return;
                }
                a.this.e(this.f5209e, this.f5210f, data, i10, requestId);
            }
        }
    }

    public static final class e implements ITranslateConfig {
        e() {
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
            c0.f7098a.d("AiUnitOnlineTextTranslateClient", "initTranslate max task count:30");
            return 30;
        }

        @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
        public long getTextTranslateTimeout() {
            return ITranslateConfig.DefaultImpls.getTextTranslateTimeout(this);
        }
    }

    public static final class f implements Callback {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ CountDownLatch f5211a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ a f5212b;

        f(CountDownLatch countDownLatch, a aVar) {
            this.f5211a = countDownLatch;
            this.f5212b = aVar;
        }

        @Override // com.oplus.aiunit.translation.callback.Callback
        public void onError(String str) {
            try {
                this.f5211a.countDown();
                ITranslateListener iTranslateListener = this.f5212b.f5200b;
                if (iTranslateListener != null) {
                    iTranslateListener.onError("", str == null ? "" : str, -2000);
                }
                c0.f7098a.e("AiUnitOnlineTextTranslateClient", "initTranslate, onFailure:" + str);
            } catch (RemoteException unused) {
                c0.f7098a.e("AiUnitOnlineTextTranslateClient", "initTranslate, onFailure error");
            }
        }

        @Override // com.oplus.aiunit.translation.callback.Callback
        public void onSuccess() {
            c0.f7098a.d("AiUnitOnlineTextTranslateClient", "initTranslate, onSuccess");
            this.f5212b.f5202d = true;
            this.f5211a.countDown();
        }
    }

    public a(Context mContext) {
        r.e(mContext, "mContext");
        this.f5199a = mContext;
        this.f5203e = new Object();
        this.f5204f = k.b(new b());
        com.coloros.translate.observer.c.f5327o.c(i());
    }

    public final void e(String str, String str2, List list, int i10, String str3) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TextTranslateData textTranslateData = (TextTranslateData) it.next();
                OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
                onLineTranslateResult.m(textTranslateData.getSourceText());
                onLineTranslateResult.j(str);
                onLineTranslateResult.p(str2);
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(textTranslateData.getTranslateText());
                onLineTranslateResult.q(arrayList2);
                onLineTranslateResult.h(new ArrayList(0));
                onLineTranslateResult.l(true);
                onLineTranslateResult.g(i10);
                onLineTranslateResult.n(str3);
                arrayList.add(onLineTranslateResult);
            }
            ITranslateListener iTranslateListener = this.f5200b;
            if (iTranslateListener != null) {
                iTranslateListener.onResultList(arrayList);
            }
        } catch (RemoteException e10) {
            c0.f7098a.e("AiUnitOnlineTextTranslateClient", "convertToListTranslateResult error : " + e10.getMessage());
        }
    }

    public final void f(String str, String str2, List list, int i10, String str3) {
        try {
            OnLineTranslateResult onLineTranslateResult = new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null);
            onLineTranslateResult.m(this.f5201c);
            onLineTranslateResult.j(str);
            onLineTranslateResult.p(str2);
            onLineTranslateResult.q(new ArrayList());
            onLineTranslateResult.l(true);
            onLineTranslateResult.g(i10);
            onLineTranslateResult.n(str3);
            if (!list.isEmpty()) {
                onLineTranslateResult.o(((TextTranslateData) list.get(0)).getIfSafe());
                c0.f7098a.d("AiUnitOnlineTextTranslateClient", "convertToSingleTranslateResult data[0].ifSafe : " + ((TextTranslateData) list.get(0)).getIfSafe());
            }
            String strA = b2.a.a(str2);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((TextTranslateData) it.next()).getTranslateText());
            }
            List listD = onLineTranslateResult.d();
            String strJoin = String.join(strA, arrayList);
            r.d(strJoin, "join(...)");
            listD.add(strJoin);
            ITranslateListener iTranslateListener = this.f5200b;
            if (iTranslateListener != null) {
                iTranslateListener.onResult(onLineTranslateResult);
            }
        } catch (RemoteException e10) {
            c0.f7098a.e("AiUnitOnlineTextTranslateClient", "convertToSingleTranslateResult error: " + e10.getMessage());
        }
    }

    private final void h(String str, String str2, List list, int i10, String str3) {
        j();
        TextTranslateRequest textTranslateRequest = new TextTranslateRequest();
        textTranslateRequest.setRequestId(str3);
        textTranslateRequest.setSource(str);
        textTranslateRequest.setTarget(str2);
        textTranslateRequest.setText(list);
        textTranslateRequest.setEnableLLM(false);
        String strA = o.a();
        r.d(strA, "getPersistRegion(...)");
        textTranslateRequest.setRegion(strA);
        k(new c(str, str2, str3, list));
        TextRecognizeHelper.INSTANCE.generateTextTranslate(textTranslateRequest, new d(textTranslateRequest, str3, i10, str, str2));
    }

    private final b0 i() {
        return (b0) this.f5204f.getValue();
    }

    private final void j() {
        if (this.f5202d) {
            return;
        }
        synchronized (this.f5203e) {
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitOnlineTextTranslateClient", "initTranslate if necessary:" + this.f5202d);
            if (this.f5202d) {
                return;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            aVar.d("AiUnitOnlineTextTranslateClient", DcsTrackingPoint.Method.initTranslate);
            TextRecognizeHelper.INSTANCE.initTranslate(this.f5199a, new e(), new f(countDownLatch, this));
            try {
                countDownLatch.await(5L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                c0.f7098a.e("AiUnitOnlineTextTranslateClient", "initTranslate e = " + e10.getMessage());
                h0 h0Var = h0.INSTANCE;
            }
        }
    }

    private final void k(w8.a aVar) {
        if (c0.f7098a.l()) {
            aVar.mo8invoke();
        }
    }

    public final void g() {
        com.coloros.translate.observer.c.f5327o.e(i());
        this.f5200b = null;
    }

    public final void l(String from, String to, String str, ITranslateListener iTranslateListener) {
        r.e(from, "from");
        r.e(to, "to");
        c0.f7098a.d("AiUnitOnlineTextTranslateClient", "translateSingleText");
        this.f5201c = str;
        this.f5200b = iTranslateListener;
        ArrayList arrayList = new ArrayList();
        if (str == null) {
            str = "";
        }
        b2.a.b(arrayList, str);
        String str2 = System.currentTimeMillis() + z8.c.Default.nextInt(100) + "-sensitive";
        try {
            ITranslateListener iTranslateListener2 = this.f5200b;
            if (iTranslateListener2 != null) {
                iTranslateListener2.onTranslateStart(str2);
            }
        } catch (RemoteException e10) {
            c0.f7098a.e("AiUnitOnlineTextTranslateClient", "translateSingleText error: " + e10.getMessage());
        }
        h(from, to, arrayList, 0, str2);
    }

    public final void m(String from, String to, List inputTextList, ITranslateListener iTranslateListener) {
        r.e(from, "from");
        r.e(to, "to");
        r.e(inputTextList, "inputTextList");
        c0.f7098a.d("AiUnitOnlineTextTranslateClient", "translateTextList");
        this.f5200b = iTranslateListener;
        String str = System.currentTimeMillis() + z8.c.Default.nextInt(100) + "-sensitive";
        try {
            ITranslateListener iTranslateListener2 = this.f5200b;
            if (iTranslateListener2 != null) {
                iTranslateListener2.onTranslateStart(str);
            }
        } catch (RemoteException e10) {
            c0.f7098a.e("AiUnitOnlineTextTranslateClient", "translateTextList error: " + e10.getMessage());
        }
        h(from, to, inputTextList, 1, str);
    }
}
