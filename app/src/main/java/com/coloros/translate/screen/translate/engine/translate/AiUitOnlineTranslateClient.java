package com.coloros.translate.screen.translate.engine.translate;

import android.content.Context;
import android.os.RemoteException;
import androidx.lifecycle.b0;
import com.coloros.translate.screen.translate.engine.language.f;
import com.coloros.translate.screen.translate.engine.translate.AiUitOnlineTranslateClient;
import com.coloros.translate.screen.utils.t;
import com.coloros.translate.screen.utils.v;
import com.coloros.translate.utils.c0;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.ITranslateConfig;
import com.oplus.aiunit.translation.callback.ImageTranslateCallback;
import com.oplus.aiunit.translation.callback.ImgTransConfigCallback;
import com.oplus.aiunit.translation.callback.TextTranslateCallback;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import com.oplus.aiunit.translation.model.ImageTranslateResult;
import com.oplus.aiunit.translation.model.TextTranslateData;
import com.oplus.aiunit.translation.model.YoudaoInfo;
import com.oplus.aiunit.translation.request.ImageTranslateRequest;
import com.oplus.aiunit.translation.request.ImgTransConfigRequest;
import com.oplus.aiunit.translation.request.TextTranslateRequest;
import java.util.ArrayList;
import java.util.Iterator;
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
public final class AiUitOnlineTranslateClient {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f5672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private YoudaoInfo f5674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageTranslateListener f5675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f5676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j f5677j;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static final class a extends s implements w8.a {
        a() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$0(AiUitOnlineTranslateClient this$0, Boolean bool) {
            r.e(this$0, "this$0");
            if (r.a(bool, Boolean.FALSE)) {
                c0.f7098a.i("AiUitOnlineTranslateClient", "aiunit died");
                this$0.f5671d = false;
            }
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final b0 mo8invoke() {
            final AiUitOnlineTranslateClient aiUitOnlineTranslateClient = AiUitOnlineTranslateClient.this;
            return new b0() { // from class: com.coloros.translate.screen.translate.engine.translate.b
                @Override // androidx.lifecycle.b0
                public final void b(Object obj) {
                    AiUitOnlineTranslateClient.a.invoke$lambda$0(aiUitOnlineTranslateClient, (Boolean) obj);
                }
            };
        }
    }

    public AiUitOnlineTranslateClient(Context mContext) {
        r.e(mContext, "mContext");
        this.f5668a = mContext;
        this.f5669b = "";
        this.f5670c = "";
        this.f5672e = new Object();
        this.f5677j = k.b(new a());
        com.coloros.translate.screen.aiunit.c.f5505o.c(f());
    }

    private final void b() {
        if (this.f5670c.length() > 0) {
            c0.f7098a.d("AiUitOnlineTranslateClient", "cancelImageTranslate:" + this.f5670c);
            TextRecognizeHelper.INSTANCE.cancelImageTranslate(this.f5670c);
            this.f5670c = "";
        }
    }

    private final void c() {
        if (this.f5669b.length() > 0) {
            c0.f7098a.d("AiUitOnlineTranslateClient", "cancelTextTranslate:" + this.f5669b);
            TextRecognizeHelper.INSTANCE.cancelTextTranslate(this.f5669b);
            this.f5669b = "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(final String str, String str2, final List list, final int i10) {
        try {
            String strB = v.b(str2);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((TextTranslateData) it.next()).getTranslateText());
            }
            final String strJoin = String.join(strB, arrayList);
            t.g(new Runnable() { // from class: com.coloros.translate.screen.translate.engine.translate.a
                @Override // java.lang.Runnable
                public final void run() {
                    AiUitOnlineTranslateClient.e(list, this, str, strJoin, i10);
                }
            });
        } catch (RemoteException e10) {
            c0.f7098a.e("AiUitOnlineTranslateClient", "convertToSingleTranslateResult error: " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(List data, AiUitOnlineTranslateClient this$0, String requestId, String str, int i10) {
        r.e(data, "$data");
        r.e(this$0, "this$0");
        r.e(requestId, "$requestId");
        boolean ifSafe = !data.isEmpty() ? ((TextTranslateData) data.get(0)).getIfSafe() : true;
        c0.f7098a.d("AiUitOnlineTranslateClient", "generateImageTranslate:" + ifSafe);
        ImageTranslateListener imageTranslateListener = this$0.f5675h;
        if (imageTranslateListener != null) {
            r.b(str);
            imageTranslateListener.onTextResult(requestId, str, i10, ifSafe);
        }
    }

    private final b0 f() {
        return (b0) this.f5677j.getValue();
    }

    private final void g() {
        if (this.f5671d) {
            return;
        }
        synchronized (this.f5672e) {
            c0.a aVar = c0.f7098a;
            aVar.d("AiUitOnlineTranslateClient", "initTranslate if necessary:" + this.f5671d);
            if (this.f5671d) {
                return;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            aVar.d("AiUitOnlineTranslateClient", DcsTrackingPoint.Method.initTranslate);
            TextRecognizeHelper.INSTANCE.initTranslate(this.f5668a, new ITranslateConfig() { // from class: com.coloros.translate.screen.translate.engine.translate.AiUitOnlineTranslateClient$initTranslateIfNecessary$1$1
                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public int getImageTranslateMaxTaskCount() {
                    c0.f7098a.d("AiUitOnlineTranslateClient", "initTranslate image translate max task count:30");
                    return 30;
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getImageTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getImageTranslateTimeout(this);
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public String getPackageName() {
                    String packageName = this.f5679a.f5668a.getPackageName();
                    r.d(packageName, "getPackageName(...)");
                    return packageName;
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
                    c0.f7098a.d("AiUitOnlineTranslateClient", "initTranslate text translate max task count:30");
                    return 30;
                }

                @Override // com.oplus.aiunit.translation.callback.ITranslateConfig
                public long getTextTranslateTimeout() {
                    return ITranslateConfig.DefaultImpls.getTextTranslateTimeout(this);
                }
            }, new AiUitOnlineTranslateClient$initTranslateIfNecessary$1$2(countDownLatch, this));
            try {
                countDownLatch.await(5L, TimeUnit.SECONDS);
            } catch (InterruptedException e10) {
                c0.f7098a.e("AiUitOnlineTranslateClient", "initTranslate e = " + e10.getMessage());
                h0 h0Var = h0.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str) {
        Object objM59constructorimpl;
        if (str == null || str.length() == 0) {
            c0.f7098a.q("AiUitOnlineTranslateClient", "parseAuthCfg:empty data");
            return;
        }
        try {
            r.a aVar = n8.r.Companion;
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("picture_translate_model")) {
                int i10 = jSONObject.getInt("picture_translate_model");
                this.f5673f = i10;
                c0.f7098a.d("AiUitOnlineTranslateClient", "parseAuthCfg: picture_translate_model:" + i10);
            } else {
                c0.f7098a.q("AiUitOnlineTranslateClient", "parseAuthCfg: picture_translate_model is empty authCfg");
            }
            if (jSONObject.has("authCfg")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("authCfg");
                String strOptString = jSONObject2.optString("appKey");
                String strOptString2 = jSONObject2.optString("appSecret");
                String strOptString3 = jSONObject2.optString("url");
                String strOptString4 = jSONObject2.optString("private");
                kotlin.jvm.internal.r.b(strOptString);
                kotlin.jvm.internal.r.b(strOptString2);
                kotlin.jvm.internal.r.b(strOptString3);
                kotlin.jvm.internal.r.b(strOptString4);
                this.f5674g = new YoudaoInfo(strOptString, strOptString2, strOptString3, strOptString4);
            } else {
                c0.f7098a.q("AiUitOnlineTranslateClient", "parseAuthCfg:empty authCfg");
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiUitOnlineTranslateClient", "parseAuthCfg onFailure:" + thM62exceptionOrNullimpl);
        }
    }

    public final void cancelTranslate() {
        c();
        b();
    }

    public final void destroy() {
        c0.f7098a.d("AiUitOnlineTranslateClient", "destroy");
        com.coloros.translate.screen.aiunit.c.f5505o.e(f());
        this.f5675h = null;
        this.f5676i = null;
    }

    public final void getImgTransConfig(f listener) {
        kotlin.jvm.internal.r.e(listener, "listener");
        c0.f7098a.d("AiUitOnlineTranslateClient", DcsTrackingPoint.Method.getImgTransConfig);
        this.f5676i = listener;
        g();
        ImgTransConfigRequest imgTransConfigRequest = new ImgTransConfigRequest();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iNextInt = z8.c.Default.nextInt(100);
        StringBuilder sb = new StringBuilder();
        sb.append(jCurrentTimeMillis);
        sb.append(iNextInt);
        imgTransConfigRequest.setRequestId(sb.toString());
        TextRecognizeHelper.INSTANCE.getImgTransConfig(this.f5668a, imgTransConfigRequest, new ImgTransConfigCallback() { // from class: com.coloros.translate.screen.translate.engine.translate.AiUitOnlineTranslateClient$getImgTransConfig$callback$1
            @Override // com.oplus.aiunit.translation.callback.ImgTransConfigCallback
            public void onError(int i10, String str) {
                c0.f7098a.e("AiUitOnlineTranslateClient", "getImgTransConfig onError:" + i10 + " ,errorMsg: " + str);
                f fVar = this.f5678a.f5676i;
                if (fVar != null) {
                    fVar.a();
                }
                this.f5678a.f5676i = null;
            }

            @Override // com.oplus.aiunit.translation.callback.ImgTransConfigCallback
            public void onSuccess(String data) {
                kotlin.jvm.internal.r.e(data, "data");
                c0.f7098a.d("AiUitOnlineTranslateClient", "getImgTransConfig onSuccess");
                this.f5678a.h(data);
                f fVar = this.f5678a.f5676i;
                if (fVar != null) {
                    fVar.onSuccess(data);
                }
                this.f5678a.f5676i = null;
            }
        });
    }

    public final void translateImage(ScreenTranslateRequest request, ImageTranslateListener listener) {
        kotlin.jvm.internal.r.e(request, "request");
        kotlin.jvm.internal.r.e(listener, "listener");
        b();
        this.f5675h = listener;
        g();
        ImageTranslateRequest imageTranslateRequest = new ImageTranslateRequest();
        this.f5670c = request.getRequestId();
        imageTranslateRequest.setRequestId(request.getRequestId());
        imageTranslateRequest.setSourceLanguage(request.getSourceLanguage());
        imageTranslateRequest.setTargetLanguage(request.getTargetLanguage());
        imageTranslateRequest.setImageBytes(request.getImageBytes());
        imageTranslateRequest.setPictureTransModel(this.f5673f);
        if (request.getImageModel() == 0) {
            imageTranslateRequest.setImageModel(0);
        } else {
            imageTranslateRequest.setImageModel(1);
        }
        if (this.f5673f == 2) {
            imageTranslateRequest.setYoudaoInfo(this.f5674g);
        }
        final String str = this.f5670c;
        c0.f7098a.d("AiUitOnlineTranslateClient", "generateImageTranslate:" + str + "," + this.f5673f);
        TextRecognizeHelper.INSTANCE.generateImageTranslate(imageTranslateRequest, new ImageTranslateCallback() { // from class: com.coloros.translate.screen.translate.engine.translate.AiUitOnlineTranslateClient.translateImage.2
            @Override // com.oplus.aiunit.translation.callback.ImageTranslateCallback
            public void onError(int i10, String str2) {
                if (!kotlin.jvm.internal.r.a(AiUitOnlineTranslateClient.this.f5670c, str)) {
                    c0.f7098a.q("AiUitOnlineTranslateClient", "generateImageTranslate:onError,requestId has changed:" + str + " ,mImageRequestId:" + AiUitOnlineTranslateClient.this.f5670c);
                    return;
                }
                c0.f7098a.d("AiUitOnlineTranslateClient", "generateImageTranslate onError:" + i10 + " ,requestId:" + AiUitOnlineTranslateClient.this.f5670c);
                ImageTranslateListener imageTranslateListener = AiUitOnlineTranslateClient.this.f5675h;
                if (imageTranslateListener != null) {
                    imageTranslateListener.onError(str, "", i10);
                }
                AiUitOnlineTranslateClient.this.f5670c = "";
            }

            @Override // com.oplus.aiunit.translation.callback.ImageTranslateCallback
            public void onTranslated(ImageTranslateResult result) {
                kotlin.jvm.internal.r.e(result, "result");
                if (!kotlin.jvm.internal.r.a(AiUitOnlineTranslateClient.this.f5670c, str)) {
                    c0.f7098a.q("AiUitOnlineTranslateClient", "generateImageTranslate:onSuccess,requestId has changed:" + str + " ,mImageRequestId:" + AiUitOnlineTranslateClient.this.f5670c);
                    return;
                }
                c0.f7098a.d("AiUitOnlineTranslateClient", "generateImageTranslate onTranslated: requestId:" + str);
                ImageTranslateListener imageTranslateListener = AiUitOnlineTranslateClient.this.f5675h;
                if (imageTranslateListener != null) {
                    imageTranslateListener.onImageResult(str, result);
                }
                AiUitOnlineTranslateClient.this.f5670c = "";
            }
        });
    }

    public final void translateText(final TextTranslateParams translateParams, ImageTranslateListener listener) {
        kotlin.jvm.internal.r.e(translateParams, "translateParams");
        kotlin.jvm.internal.r.e(listener, "listener");
        this.f5675h = listener;
        g();
        c();
        final String str = System.currentTimeMillis() + z8.c.Default.nextInt(100) + "-sensitive";
        TextTranslateRequest textTranslateRequest = new TextTranslateRequest();
        c0.a aVar = c0.f7098a;
        aVar.d("AiUitOnlineTranslateClient", "translateText:" + translateParams.getSourceLanguage() + "," + translateParams.getTargetLanguage());
        textTranslateRequest.setRequestId(str);
        textTranslateRequest.setSource(translateParams.getSourceLanguage());
        textTranslateRequest.setTarget(translateParams.getTargetLanguage());
        textTranslateRequest.setText(o.m(translateParams.getText()));
        textTranslateRequest.setRegion(translateParams.getRegion());
        aVar.d("AiUitOnlineTranslateClient", "doTranslate, requestId = " + str);
        this.f5669b = str;
        TextRecognizeHelper.INSTANCE.generateTextTranslate(textTranslateRequest, new TextTranslateCallback() { // from class: com.coloros.translate.screen.translate.engine.translate.AiUitOnlineTranslateClient.translateText.2
            @Override // com.oplus.aiunit.translation.callback.TextTranslateCallback
            public void onError(int i10, String str2) {
                if (!kotlin.jvm.internal.r.a(AiUitOnlineTranslateClient.this.f5669b, str)) {
                    c0.f7098a.q("AiUitOnlineTranslateClient", "generateTextTranslate:onError,requestId has changed:" + str + " ,mTextRequestId:" + AiUitOnlineTranslateClient.this.f5669b);
                    return;
                }
                if (i10 == 100030) {
                    ImageTranslateListener imageTranslateListener = AiUitOnlineTranslateClient.this.f5675h;
                    if (imageTranslateListener != null) {
                        imageTranslateListener.onTextResult(AiUitOnlineTranslateClient.this.f5669b, translateParams.getText(), 100030, false);
                    }
                    AiUitOnlineTranslateClient.this.f5669b = "";
                } else {
                    ImageTranslateListener imageTranslateListener2 = AiUitOnlineTranslateClient.this.f5675h;
                    if (imageTranslateListener2 != null) {
                        imageTranslateListener2.onError("", str2 == null ? "" : str2, -2000);
                    }
                }
                c0.f7098a.e("AiUitOnlineTranslateClient", "generateTextTranslate, onFailure:" + i10 + "," + str2);
            }

            @Override // com.oplus.aiunit.translation.callback.TextTranslateCallback
            public void onSuccess(String requestId, List<TextTranslateData> data, int i10) {
                kotlin.jvm.internal.r.e(requestId, "requestId");
                kotlin.jvm.internal.r.e(data, "data");
                if (!kotlin.jvm.internal.r.a(AiUitOnlineTranslateClient.this.f5669b, requestId)) {
                    c0.f7098a.q("AiUitOnlineTranslateClient", "generateTextTranslate:onSuccess,requestId has changed:" + str + " ,mTextRequestId:" + AiUitOnlineTranslateClient.this.f5669b);
                    return;
                }
                c0.f7098a.d("AiUitOnlineTranslateClient", "generateTextTranslate, requestId = " + requestId + "," + i10);
                AiUitOnlineTranslateClient aiUitOnlineTranslateClient = AiUitOnlineTranslateClient.this;
                aiUitOnlineTranslateClient.d(aiUitOnlineTranslateClient.f5669b, translateParams.getTargetLanguage(), data, i10);
                AiUitOnlineTranslateClient.this.f5669b = "";
            }
        });
    }
}
