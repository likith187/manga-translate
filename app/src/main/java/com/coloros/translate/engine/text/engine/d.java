package com.coloros.translate.engine.text.engine;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.coloros.translate.engine.IOfflineTranslateEngine;
import com.coloros.translate.engine.IOfflineTranslateListener;
import com.coloros.translate.engine.ITranslateEngine;
import com.coloros.translate.engine.ITranslateListener;
import com.coloros.translate.engine.info.OnLineTranslateResult;
import com.coloros.translate.engine.info.TranslateResult;
import com.coloros.translate.engine.offline.a0;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.z0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ITranslateEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5164d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IOfflineTranslateEngine f5165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.coloros.translate.engine.text.engine.a f5166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f5167c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b extends IOfflineTranslateListener.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ITranslateListener f5169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f5170c;

        public b(String str, ITranslateListener iTranslateListener, boolean z10) {
            this.f5168a = str;
            this.f5169b = iTranslateListener;
            this.f5170c = z10;
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineError(String str, int i10) {
            Object objM59constructorimpl;
            h0 h0Var;
            try {
                r.a aVar = r.Companion;
                ITranslateListener iTranslateListener = this.f5169b;
                if (iTranslateListener != null) {
                    iTranslateListener.onStreamError(this.f5168a, "error info", 102);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("StreamTextTranslateEngine", "onOfflineError:" + thM62exceptionOrNullimpl.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineResult(List list) {
            Object objM59constructorimpl;
            Object objM59constructorimpl2;
            kotlin.jvm.internal.r.e(list, "list");
            c0.a aVar = c0.f7098a;
            aVar.d("StreamTextTranslateEngine", "onOfflineResult result has calback " + this.f5169b);
            h0 h0Var = null;
            if (this.f5170c) {
                try {
                    r.a aVar2 = r.Companion;
                    TranslateResult translateResult = (TranslateResult) list.get(0);
                    aVar.d("StreamTextTranslateEngine", "translate result=" + translateResult.c());
                    ITranslateListener iTranslateListener = this.f5169b;
                    if (iTranslateListener != null) {
                        iTranslateListener.onStreamResult(this.f5168a, false, new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null).r(translateResult));
                        h0Var = h0.INSTANCE;
                    }
                    objM59constructorimpl = r.m59constructorimpl(h0Var);
                } catch (Throwable th) {
                    r.a aVar3 = r.Companion;
                    objM59constructorimpl = r.m59constructorimpl(s.a(th));
                }
                Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("StreamTextTranslateEngine", "onOfflineResult1: " + thM62exceptionOrNullimpl.getMessage());
                    return;
                }
                return;
            }
            try {
                r.a aVar4 = r.Companion;
                aVar.d("StreamTextTranslateEngine", "translate result=" + list.size());
                ITranslateListener iTranslateListener2 = this.f5169b;
                if (iTranslateListener2 != null) {
                    String str = this.f5168a;
                    ArrayList arrayList = new ArrayList(o.r(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null).r((TranslateResult) it.next()));
                    }
                    iTranslateListener2.onStreamResultList(str, arrayList);
                    h0Var = h0.INSTANCE;
                }
                objM59constructorimpl2 = r.m59constructorimpl(h0Var);
            } catch (Throwable th2) {
                r.a aVar5 = r.Companion;
                objM59constructorimpl2 = r.m59constructorimpl(s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = r.m62exceptionOrNullimpl(objM59constructorimpl2);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.e("StreamTextTranslateEngine", "onOfflineResult: " + thM62exceptionOrNullimpl2.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineStart() {
            Object objM59constructorimpl;
            h0 h0Var;
            try {
                r.a aVar = r.Companion;
                ITranslateListener iTranslateListener = this.f5169b;
                if (iTranslateListener != null) {
                    iTranslateListener.onStreamTranslateStart(this.f5168a);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                objM59constructorimpl = r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl != null) {
                c0.f7098a.e("StreamTextTranslateEngine", "onStreamTranslateStart error:" + thM62exceptionOrNullimpl.getMessage());
            }
        }
    }

    static final class c extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ String $from;
        final /* synthetic */ String $inputText;
        final /* synthetic */ IOfflineTranslateListener $listener;
        final /* synthetic */ String $requestId;
        final /* synthetic */ String $to;
        final /* synthetic */ d this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, d dVar, String str2, String str3, String str4, IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$requestId = str;
            this.this$0 = dVar;
            this.$from = str2;
            this.$to = str3;
            this.$inputText = str4;
            this.$listener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            c0.a aVar = c0.f7098a;
            aVar.d("StreamTextTranslateEngine", "translateOffline time start requestId:" + this.$requestId);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.this$0.f5165a.translate(this.$from, this.$to, this.$inputText, this.$listener);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            aVar.d("StreamTextTranslateEngine", "translateOffline time end requestId:" + this.$requestId + " time:" + jCurrentTimeMillis2);
        }
    }

    /* JADX INFO: renamed from: com.coloros.translate.engine.text.engine.d$d, reason: collision with other inner class name */
    static final class C0067d extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ String $from;
        final /* synthetic */ List<String> $inputTextList;
        final /* synthetic */ IOfflineTranslateListener $listener;
        final /* synthetic */ String $to;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0067d(String str, String str2, List<String> list, IOfflineTranslateListener iOfflineTranslateListener) {
            super(0);
            this.$from = str;
            this.$to = str2;
            this.$inputTextList = list;
            this.$listener = iOfflineTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() throws RemoteException {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() throws RemoteException {
            d.this.f5165a.translateList(this.$from, this.$to, this.$inputTextList, this.$listener);
        }
    }

    static final class e extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ String $from;
        final /* synthetic */ String $inputText;
        final /* synthetic */ ITranslateListener $listener;
        final /* synthetic */ String $requestId;
        final /* synthetic */ String $to;
        final /* synthetic */ d this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, d dVar, String str2, String str3, String str4, ITranslateListener iTranslateListener) {
            super(0);
            this.$requestId = str;
            this.this$0 = dVar;
            this.$from = str2;
            this.$to = str3;
            this.$inputText = str4;
            this.$listener = iTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            c0.a aVar = c0.f7098a;
            aVar.d("StreamTextTranslateEngine", "translateOnline time start requestId:" + this.$requestId);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.this$0.f5166b.i(this.$from, this.$to, this.$requestId, this.$inputText, this.$listener);
            long jCurrentTimeMillis2 = (System.currentTimeMillis() - jCurrentTimeMillis) / ((long) 1000);
            aVar.d("StreamTextTranslateEngine", "translateOnline time end requestId:" + this.$requestId + " time:" + jCurrentTimeMillis2);
        }
    }

    static final class f extends kotlin.jvm.internal.s implements w8.a {
        final /* synthetic */ String $from;
        final /* synthetic */ List<String> $inputTexts;
        final /* synthetic */ ITranslateListener $listener;
        final /* synthetic */ String $requestId;
        final /* synthetic */ String $to;
        final /* synthetic */ d this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, d dVar, String str2, String str3, List<String> list, ITranslateListener iTranslateListener) {
            super(0);
            this.$requestId = str;
            this.this$0 = dVar;
            this.$from = str2;
            this.$to = str3;
            this.$inputTexts = list;
            this.$listener = iTranslateListener;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            invoke();
            return h0.INSTANCE;
        }

        public final void invoke() {
            c0.a aVar = c0.f7098a;
            aVar.d("StreamTextTranslateEngine", "translateOnlineList time start requestId:" + this.$requestId);
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.this$0.f5166b.j(this.$from, this.$to, this.$requestId, this.$inputTexts, this.$listener);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            aVar.d("StreamTextTranslateEngine", "translateOnlineList time end requestId:" + this.$requestId + " time:" + jCurrentTimeMillis2);
        }
    }

    public d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        this.f5165a = a0.INSTANCE.d(context, "stream_text_offline");
        this.f5166b = new com.coloros.translate.engine.text.engine.a(context);
        this.f5167c = context;
    }

    private final String d() {
        return System.currentTimeMillis() + z8.c.Default.nextInt(100) + "-sensitive";
    }

    private final void e(String str, String str2, String str3, String str4, IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException {
        if (this.f5165a != null) {
            z0.d(0L, new c(str4, this, str, str2, str3, iOfflineTranslateListener), 1, null);
            return;
        }
        c0.f7098a.d("StreamTextTranslateEngine", "mOfflineTranslateEngine is null");
        if (iOfflineTranslateListener != null) {
            iOfflineTranslateListener.onOfflineError("mOfflineTranslateEngine is null", 102);
        }
    }

    private final void f(String str, String str2, List list, String str3, IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException {
        if (this.f5165a != null) {
            z0.d(0L, new C0067d(str, str2, list, iOfflineTranslateListener), 1, null);
            return;
        }
        c0.f7098a.d("StreamTextTranslateEngine", "mOfflineTranslateEngine is null");
        if (iOfflineTranslateListener != null) {
            iOfflineTranslateListener.onOfflineError("mOfflineTranslateEngine is null", 102);
        }
    }

    private final void g(String str, String str2, String str3, String str4, ITranslateListener iTranslateListener) {
        z0.d(0L, new e(str4, this, str, str2, str3, iTranslateListener), 1, null);
    }

    private final void h(String str, String str2, List list, String str3, ITranslateListener iTranslateListener) {
        z0.d(0L, new f(str3, this, str, str2, list, iTranslateListener), 1, null);
    }

    @Override // a2.a
    public void a() throws RemoteException {
        IOfflineTranslateEngine iOfflineTranslateEngine = this.f5165a;
        if (iOfflineTranslateEngine != null) {
            iOfflineTranslateEngine.destroy();
        }
        this.f5166b.d();
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public boolean existsOfflinePackage(String from, String to) {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        IOfflineTranslateEngine iOfflineTranslateEngine = this.f5165a;
        if (iOfflineTranslateEngine != null) {
            return iOfflineTranslateEngine.existsOfflinePackage(from, to);
        }
        c0.f7098a.q("StreamTextTranslateEngine", "offline engine is not existed");
        return false;
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public Bundle invokeMethod(String str, Bundle bundle) {
        String string;
        if (kotlin.jvm.internal.r.a("cancelStreamTextTranslate", str) && bundle != null && (string = bundle.getString("requestId", null)) != null) {
            this.f5166b.c(string);
        }
        return new Bundle();
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public void translate(String from, String to, String inputText, ITranslateListener listener) throws RemoteException {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(inputText, "inputText");
        kotlin.jvm.internal.r.e(listener, "listener");
        if (TextUtils.isEmpty(from) || TextUtils.isEmpty(to) || TextUtils.isEmpty(inputText)) {
            c0.f7098a.q("StreamTextTranslateEngine", "translate some param is null, just return!");
            listener.onError("", "translate from to or inputText is empty", 102);
            return;
        }
        String strD = d();
        if (com.coloros.translate.utils.i.a(this.f5167c)) {
            c0.f7098a.d("StreamTextTranslateEngine", "translate net is ok --> translateOnline");
            g(from, to, inputText, strD, listener);
        } else {
            c0.f7098a.d("StreamTextTranslateEngine", "translate net is no --> offline only");
            e(from, to, inputText, strD, new b(strD, listener, true));
        }
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public void translateList(String from, String to, List inputTextList, ITranslateListener listener) throws RemoteException {
        kotlin.jvm.internal.r.e(from, "from");
        kotlin.jvm.internal.r.e(to, "to");
        kotlin.jvm.internal.r.e(inputTextList, "inputTextList");
        kotlin.jvm.internal.r.e(listener, "listener");
        if (TextUtils.isEmpty(from) || TextUtils.isEmpty(to) || inputTextList.isEmpty()) {
            c0.f7098a.q("StreamTextTranslateEngine", "translateList some param is null, just return!");
            listener.onError("", "translateList from to or inputText is empty", 102);
            return;
        }
        String strD = d();
        if (com.coloros.translate.utils.i.a(this.f5167c)) {
            c0.f7098a.d("StreamTextTranslateEngine", "translateList net is ok --> translateOnline");
            h(from, to, inputTextList, strD, listener);
        } else {
            c0.f7098a.d("StreamTextTranslateEngine", "translateList net is no --> translateOffline");
            f(from, to, inputTextList, strD, new b(strD, listener, false));
        }
    }
}
