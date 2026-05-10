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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class i extends ITranslateEngine.Stub implements a2.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f5191e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f5192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final IOfflineTranslateEngine f5193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.coloros.translate.engine.text.impl.a f5194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f5195d;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b extends IOfflineTranslateListener.Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ITranslateListener f5196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5197b;

        public b(ITranslateListener mResultListener, boolean z10) {
            r.e(mResultListener, "mResultListener");
            this.f5196a = mResultListener;
            this.f5197b = z10;
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineError(String msg, int i10) {
            r.e(msg, "msg");
            try {
                this.f5196a.onError("", "error info", 102);
            } catch (RemoteException e10) {
                c0.f7098a.e("TextTranslateEngine", "onOfflineError: " + e10.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineResult(List list) {
            r.e(list, "list");
            c0.a aVar = c0.f7098a;
            aVar.d("TextTranslateEngine", "transate result has calback");
            if (this.f5197b) {
                TranslateResult translateResult = (TranslateResult) list.get(0);
                aVar.d("TextTranslateEngine", "translate result=" + translateResult.c());
                try {
                    this.f5196a.onResult(new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null).r(translateResult));
                    return;
                } catch (RemoteException e10) {
                    c0.f7098a.e("TextTranslateEngine", "onOfflineResult1: " + e10.getMessage());
                    return;
                }
            }
            aVar.d("TextTranslateEngine", "translate result=" + list);
            try {
                ITranslateListener iTranslateListener = this.f5196a;
                ArrayList arrayList = new ArrayList(o.r(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new OnLineTranslateResult(null, null, null, null, null, false, 0, null, false, 511, null).r((TranslateResult) it.next()));
                }
                iTranslateListener.onResultList(arrayList);
            } catch (RemoteException e11) {
                c0.f7098a.e("TextTranslateEngine", "onOfflineResult: " + e11.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.IOfflineTranslateListener
        public void onOfflineStart() throws RemoteException {
            this.f5196a.onTranslateStart("");
        }
    }

    public i(Context context) {
        r.e(context, "context");
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
        r.d(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
        this.f5192a = executorServiceNewFixedThreadPool;
        this.f5193b = a0.INSTANCE.d(context, "text_offline");
        this.f5194c = new com.coloros.translate.engine.text.impl.a(context);
        this.f5195d = context;
    }

    private final void f(final String str, final String str2, final String str3, String str4, final IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException {
        if (this.f5193b != null) {
            this.f5192a.execute(new Runnable() { // from class: com.coloros.translate.engine.text.engine.h
                @Override // java.lang.Runnable
                public final void run() throws RemoteException {
                    i.g(this.f5186a, str, str2, str3, iOfflineTranslateListener);
                }
            });
        } else {
            c0.f7098a.d("TextTranslateEngine", "mOfflineTranslateEngine is null");
            iOfflineTranslateListener.onOfflineError("mOfflineTranslateEngine is null", 102);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(i this$0, String from, String to, String inputText, IOfflineTranslateListener listener) throws RemoteException {
        r.e(this$0, "this$0");
        r.e(from, "$from");
        r.e(to, "$to");
        r.e(inputText, "$inputText");
        r.e(listener, "$listener");
        this$0.f5193b.translate(from, to, inputText, listener);
    }

    private final void h(final String str, final String str2, final List list, String str3, final IOfflineTranslateListener iOfflineTranslateListener) throws RemoteException {
        if (this.f5193b != null) {
            this.f5192a.execute(new Runnable() { // from class: com.coloros.translate.engine.text.engine.g
                @Override // java.lang.Runnable
                public final void run() throws RemoteException {
                    i.i(this.f5181a, str, str2, list, iOfflineTranslateListener);
                }
            });
        } else {
            c0.f7098a.d("TextTranslateEngine", "mOfflineTranslateEngine is null");
            iOfflineTranslateListener.onOfflineError("mOfflineTranslateEngine is null", 102);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(i this$0, String from, String to, List inputTextList, IOfflineTranslateListener listener) throws RemoteException {
        r.e(this$0, "this$0");
        r.e(from, "$from");
        r.e(to, "$to");
        r.e(inputTextList, "$inputTextList");
        r.e(listener, "$listener");
        this$0.f5193b.translateList(from, to, inputTextList, listener);
    }

    private final void j(final String str, final String str2, final String str3, String str4, final ITranslateListener iTranslateListener) {
        this.f5192a.execute(new Runnable() { // from class: com.coloros.translate.engine.text.engine.e
            @Override // java.lang.Runnable
            public final void run() {
                i.k(this.f5171a, str, str2, str3, iTranslateListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(i this$0, String from, String to, String inputText, ITranslateListener iTranslateListener) {
        r.e(this$0, "this$0");
        r.e(from, "$from");
        r.e(to, "$to");
        r.e(inputText, "$inputText");
        this$0.f5194c.l(from, to, inputText, iTranslateListener);
    }

    private final void l(final String str, final String str2, final List list, String str3, final ITranslateListener iTranslateListener) {
        this.f5192a.execute(new Runnable() { // from class: com.coloros.translate.engine.text.engine.f
            @Override // java.lang.Runnable
            public final void run() {
                i.m(this.f5176a, str, str2, list, iTranslateListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(i this$0, String from, String to, List inputTexts, ITranslateListener iTranslateListener) {
        r.e(this$0, "this$0");
        r.e(from, "$from");
        r.e(to, "$to");
        r.e(inputTexts, "$inputTexts");
        this$0.f5194c.m(from, to, inputTexts, iTranslateListener);
    }

    @Override // a2.a
    public void a() throws RemoteException {
        this.f5192a.shutdown();
        IOfflineTranslateEngine iOfflineTranslateEngine = this.f5193b;
        if (iOfflineTranslateEngine != null) {
            iOfflineTranslateEngine.destroy();
        }
        this.f5194c.g();
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public boolean existsOfflinePackage(String from, String to) {
        r.e(from, "from");
        r.e(to, "to");
        IOfflineTranslateEngine iOfflineTranslateEngine = this.f5193b;
        if (iOfflineTranslateEngine != null) {
            return iOfflineTranslateEngine.existsOfflinePackage(from, to);
        }
        c0.f7098a.q("TextTranslateEngine", "offline engine is not existed");
        return false;
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public Bundle invokeMethod(String str, Bundle bundle) {
        return new Bundle();
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public void translate(String from, String to, String inputText, ITranslateListener listener) throws RemoteException {
        r.e(from, "from");
        r.e(to, "to");
        r.e(inputText, "inputText");
        r.e(listener, "listener");
        if (TextUtils.isEmpty(from) || TextUtils.isEmpty(to) || TextUtils.isEmpty(inputText)) {
            c0.f7098a.q("TextTranslateEngine", "translate some param is null, just return!");
            listener.onError("", "translate from to or inputText is empty", 102);
        } else if (com.coloros.translate.utils.i.a(this.f5195d)) {
            c0.f7098a.d("TextTranslateEngine", "translate net is ok --> translateOnline");
            j(from, to, inputText, "", listener);
        } else {
            c0.f7098a.d("TextTranslateEngine", "translate net is no --> offline only");
            f(from, to, inputText, "", new b(listener, true));
        }
    }

    @Override // com.coloros.translate.engine.ITranslateEngine
    public void translateList(String from, String to, List inputTextList, ITranslateListener listener) throws RemoteException {
        r.e(from, "from");
        r.e(to, "to");
        r.e(inputTextList, "inputTextList");
        r.e(listener, "listener");
        if (TextUtils.isEmpty(from) || TextUtils.isEmpty(to) || inputTextList.isEmpty()) {
            c0.f7098a.q("TextTranslateEngine", "translateList some param is null, just return!");
            listener.onError("", "translatelist from to or inputText is empty", 102);
        } else if (com.coloros.translate.utils.i.a(this.f5195d)) {
            c0.f7098a.d("TextTranslateEngine", "translateList net is ok --> translateOnline");
            l(from, to, inputTextList, "", listener);
        } else {
            c0.f7098a.d("TextTranslateEngine", "translateList net is no --> translateOffline");
            h(from, to, inputTextList, "", new b(listener, false));
        }
    }
}
