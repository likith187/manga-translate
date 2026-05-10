package com.coloros.translate.engine.tts;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.lifecycle.b0;
import com.coloros.translate.engine.info.TtsParams;
import com.coloros.translate.engine.tts.e;
import com.coloros.translate.engine.tts.m;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.v0;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.toolkits.AISettings;
import com.oplus.aiunit.translation.TextRecognizeHelper;
import com.oplus.aiunit.translation.callback.WsTtsInitStatusCallback;
import com.oplus.aiunit.translation.model.OdinWebsocketBaseRsp;
import com.oplus.aiunit.translation.request.WsTtsRequest;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: s */
    public static final a f5222s = new a(null);

    /* JADX INFO: renamed from: t */
    private static final ArrayList f5223t = kotlin.collections.o.d("low", "normal", "high", "higher");

    /* JADX INFO: renamed from: a */
    private final Context f5224a;

    /* JADX INFO: renamed from: b */
    private final n8.j f5225b;

    /* JADX INFO: renamed from: c */
    private q f5226c;

    /* JADX INFO: renamed from: d */
    private Bundle f5227d;

    /* JADX INFO: renamed from: e */
    private volatile n f5228e;

    /* JADX INFO: renamed from: f */
    private v0 f5229f;

    /* JADX INFO: renamed from: g */
    private m f5230g;

    /* JADX INFO: renamed from: h */
    private volatile boolean f5231h;

    /* JADX INFO: renamed from: i */
    private volatile b0 f5232i;

    /* JADX INFO: renamed from: j */
    private Handler f5233j;

    /* JADX INFO: renamed from: k */
    private volatile String f5234k;

    /* JADX INFO: renamed from: l */
    private volatile Integer f5235l;

    /* JADX INFO: renamed from: m */
    private volatile boolean f5236m;

    /* JADX INFO: renamed from: n */
    private volatile boolean f5237n;

    /* JADX INFO: renamed from: o */
    private final c f5238o;

    /* JADX INFO: renamed from: p */
    private TtsParams f5239p;

    /* JADX INFO: renamed from: q */
    private final LinkedBlockingQueue f5240q;

    /* JADX INFO: renamed from: r */
    private volatile String f5241r;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            try {
                r.a aVar = r.Companion;
                List<AIConfig> configList = AISettings.getDetectData$default(com.coloros.translate.utils.m.INSTANCE.a(), "ai_omni", null, 4, null).getConfigList();
                long unitVersion = (configList == null || configList.isEmpty()) ? -1L : ((AIConfig) kotlin.collections.o.Q(configList)).getUnitVersion();
                c0.f7098a.d("AiUnitStreamTtsClient", "getUnitVersion(), " + unitVersion);
                return unitVersion;
            } catch (Throwable th) {
                r.a aVar2 = r.Companion;
                Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(r.m59constructorimpl(s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.e("AiUnitStreamTtsClient", "getUnitVersion(), error " + thM62exceptionOrNullimpl.getMessage());
                }
                return -1L;
            }
        }

        public final boolean b() {
            long jA = a();
            return 1 <= jA && jA < 1005;
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.s implements w8.a {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final m mo8invoke() {
            m mVar = new m(3);
            mVar.f();
            return mVar;
        }
    }

    public static final class c extends o {

        /* JADX INFO: renamed from: a */
        private boolean f5242a = true;

        c() {
        }

        public static final void f(e this$0) {
            Object objM59constructorimpl;
            h0 h0Var;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            try {
                r.a aVar = r.Companion;
                m mVarY = this$0.y();
                if (mVarY != null) {
                    mVarY.d(new m.a(new byte[0], this$0.f5226c, Boolean.TRUE));
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
                c0.f7098a.e("AiUnitStreamTtsClient", "onAudio(), pcm =" + thM62exceptionOrNullimpl.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.tts.o
        public void a(String requestId, long j10, String audio) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            kotlin.jvm.internal.r.e(audio, "audio");
            if (!kotlin.jvm.internal.r.a(requestId, e.this.f5234k)) {
                c0.f7098a.q("AiUnitStreamTtsClient", "onAudio(), reject");
                return;
            }
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitStreamTtsClient", "onAudio(), requestId=" + requestId + " frameNo=" + j10);
            this.f5242a = false;
            if (e.this.f5228e == null) {
                aVar.d("AiUnitStreamTtsClient", "onAudio(), mOpusCodecManager null");
            } else if (e.this.f5239p.d()) {
                byte[] bArrN = w9.a.n(audio);
                e eVar = e.this;
                eVar.I(bArrN, eVar.f5239p.a());
            }
        }

        @Override // com.coloros.translate.engine.tts.o
        public void b(OdinWebsocketBaseRsp rsp) {
            kotlin.jvm.internal.r.e(rsp, "rsp");
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitStreamTtsClient", "onResponse(), " + com.coloros.translate.utils.b0.b(rsp));
            if (kotlin.jvm.internal.r.a(rsp.getBizType(), "TTS_END_ASK") || rsp.getCode() == 1002) {
                aVar.i("AiUnitStreamTtsClient", "onResponse(), channel reject");
                return;
            }
            if (rsp.getCode() == 100301) {
                aVar.i("AiUnitStreamTtsClient", "onResponse(),network success isNeedTts" + e.this.f5237n);
                e.this.f5231h = true;
                if (e.this.f5237n) {
                    e.this.f5237n = false;
                    aVar.d("AiUnitStreamTtsClient", "onResponse playText() network reconnect");
                    e eVar = e.this;
                    eVar.R(eVar.f5241r, e.this.f5239p);
                    return;
                }
                return;
            }
            if (rsp.getCode() == 100105) {
                aVar.i("AiUnitStreamTtsClient", "onResponse(),network disconnect isAudioTtsFinish:" + this.f5242a);
                if (this.f5242a) {
                    return;
                }
                String str = e.this.f5241r;
                if (str == null || str.length() == 0) {
                    this.f5242a = true;
                    e.this.f5236m = true;
                    e.this.f5240q.clear();
                    aVar.i("AiUnitStreamTtsClient", "onResponse(),network disconnect reject");
                    return;
                }
                this.f5242a = true;
                e.this.f5236m = true;
                e.this.f5240q.clear();
                e.this.S();
                q qVar = e.this.f5226c;
                if (qVar != null) {
                    com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.TTS_PARAMS_TEXT_INTERRUPT_ERROR;
                    qVar.onStatus(kVar.getCode(), kVar.getMessage());
                    return;
                }
                return;
            }
            e.this.f5231h = rsp.getCode() == 100303;
            if (rsp.getCode() == 100303) {
                if (e.this.f5237n) {
                    e.this.f5237n = false;
                    aVar.d("AiUnitStreamTtsClient", "onResponse playText() init");
                    e eVar2 = e.this;
                    eVar2.R(eVar2.f5241r, e.this.f5239p);
                    return;
                }
                return;
            }
            if (e.this.f5237n) {
                e.this.f5237n = false;
                e.this.f5234k = "";
                e.this.f5241r = "";
            }
            aVar.i("AiUnitStreamTtsClient", "onResponse(),fail ");
            e.this.f5240q.clear();
            e.this.f5236m = true;
            q qVar2 = e.this.f5226c;
            if (qVar2 != null) {
                qVar2.onStop();
            }
            q qVar3 = e.this.f5226c;
            if (qVar3 != null) {
                qVar3.onStatus(com.coloros.translate.utils.k.TTS_NETWORK_ERROR.getCode(), rsp.getMessage());
            }
        }

        @Override // com.coloros.translate.engine.tts.o
        public void c(String requestId, String dataType) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            kotlin.jvm.internal.r.e(dataType, "dataType");
            if (!kotlin.jvm.internal.r.a(requestId, e.this.f5234k)) {
                c0.f7098a.q("AiUnitStreamTtsClient", "onTtsEndEx(), reject");
                return;
            }
            this.f5242a = true;
            e.this.f5236m = true;
            e eVar = e.this;
            eVar.f5241r = (String) eVar.f5240q.poll();
            String str = e.this.f5241r;
            if (str != null && str.length() > 0 && !e.this.f5237n) {
                c0.f7098a.d("AiUnitStreamTtsClient", "onTtsEnd(), continue next tts");
                e eVar2 = e.this;
                eVar2.R(eVar2.f5241r, e.this.f5239p);
                return;
            }
            c0.f7098a.d("AiUnitStreamTtsClient", "onTtsEnd(), requestId=" + requestId + " dataType=" + dataType);
            v0 v0Var = e.this.f5229f;
            final e eVar3 = e.this;
            v0Var.c(new Runnable() { // from class: com.coloros.translate.engine.tts.f
                @Override // java.lang.Runnable
                public final void run() {
                    e.c.f(eVar3);
                }
            });
        }

        @Override // com.coloros.translate.engine.tts.o
        public void d(String requestId, String dataType) {
            kotlin.jvm.internal.r.e(requestId, "requestId");
            kotlin.jvm.internal.r.e(dataType, "dataType");
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitStreamTtsClient", "onTtsStart(), requestId=" + requestId + " dataType=" + dataType);
            this.f5242a = false;
            e.this.f5236m = false;
            e.this.f5237n = false;
            e.this.M();
            String str = e.this.f5241r;
            if (str == null || str.length() == 0) {
                aVar.q("AiUnitStreamTtsClient", "onTtsStart(), currentText empty stop");
            }
        }
    }

    public static final class d implements WsTtsInitStatusCallback {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ TtsParams f5245b;

        d(TtsParams ttsParams) {
            this.f5245b = ttsParams;
        }

        @Override // com.oplus.aiunit.translation.callback.WsTtsInitStatusCallback
        public void onStatus(String status) {
            kotlin.jvm.internal.r.e(status, "status");
            e.this.f5233j.removeMessages(4353);
            e.this.f5231h = kotlin.jvm.internal.r.a(status, "1");
            c0.a aVar = c0.f7098a;
            aVar.q("AiUnitStreamTtsClient", "getWsTtsInitStatus(), status:" + status);
            if (!e.this.f5231h) {
                e.this.L();
                return;
            }
            e.this.f5237n = true;
            aVar.d("AiUnitStreamTtsClient", "playText(), init success,isNeedTts = true");
            e eVar = e.this;
            eVar.f5241r = (String) eVar.f5240q.poll();
            e eVar2 = e.this;
            eVar2.R(eVar2.f5241r, this.f5245b);
        }
    }

    public e(Context mContext) {
        kotlin.jvm.internal.r.e(mContext, "mContext");
        this.f5224a = mContext;
        this.f5225b = n8.k.b(b.INSTANCE);
        this.f5229f = new v0("AiUnitStreamTtsClient");
        this.f5233j = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.coloros.translate.engine.tts.a
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return e.E(this.f5214a, message);
            }
        });
        String string = UUID.randomUUID().toString();
        kotlin.jvm.internal.r.d(string, "toString(...)");
        this.f5234k = string;
        this.f5235l = -1;
        this.f5236m = true;
        this.f5238o = new c();
        this.f5239p = new TtsParams(null, null, 0, 0, 0, null, 0, false, 255, null);
        this.f5240q = new LinkedBlockingQueue();
        this.f5241r = "";
    }

    public static final void A(e this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE)) {
            c0.f7098a.i("AiUnitStreamTtsClient", "aiunit died");
            this$0.f5231h = false;
        }
    }

    private final void B() {
        if (this.f5230g == null) {
            m mVar = new m(0);
            this.f5230g = mVar;
            mVar.f();
            c0.f7098a.d("AiUnitStreamTtsClient", "initVoipAudioPlayer");
        }
    }

    private final boolean D() {
        Integer num = this.f5235l;
        return num != null && num.intValue() == 1;
    }

    public static final boolean E(e this$0, Message it) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(it, "it");
        if (it.what == 4352) {
            this$0.f5240q.clear();
            c0.f7098a.d("AiUnitStreamTtsClient", "mOverTimeHandler isTtsProcessEnd" + this$0.f5236m);
            if (!this$0.f5236m) {
                this$0.T();
            }
            this$0.f5237n = false;
            this$0.f5231h = false;
            this$0.f5236m = true;
            this$0.S();
            q qVar = this$0.f5226c;
            if (qVar != null) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.TTS_PARAMS_TEXT_OVER_TIME_ERROR;
                qVar.onStatus(kVar.getCode(), kVar.getMessage());
            }
        }
        if (it.what == 4353) {
            this$0.L();
        }
        return true;
    }

    private final void F(byte[] bArr) {
        m mVarY = y();
        if (mVarY != null) {
            mVarY.d(new m.a(bArr, this.f5226c, Boolean.FALSE));
        }
    }

    public static final void J(n this_apply, byte[] bArr, e this$0) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            r.a aVar = r.Companion;
            ShortBuffer shortBufferWrap = ShortBuffer.wrap(this_apply.c(bArr));
            kotlin.jvm.internal.r.d(shortBufferWrap, "wrap(...)");
            this$0.F(this_apply.b(shortBufferWrap));
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiUnitStreamTtsClient", "onAudio(), pcm =" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public static final void K(n this_apply, byte[] bArr, e this$0) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(this_apply, "$this_apply");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            r.a aVar = r.Companion;
            this$0.F(this_apply.d(bArr));
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            thM62exceptionOrNullimpl.printStackTrace();
            c0.f7098a.e("AiUnitStreamTtsClient", "onAudio(), opus error:" + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void L() {
        this.f5241r = (String) this.f5240q.poll();
        this.f5237n = true;
        c0.f7098a.d("AiUnitStreamTtsClient", "reTryTts(), retry connect isNeedTts = true");
        z();
        TextRecognizeHelper.INSTANCE.initWsSpeech(this.f5224a, this.f5238o);
        N();
    }

    public final void M() {
        c0.f7098a.d("AiUnitStreamTtsClient", "removeOverTime()");
        this.f5233j.removeMessages(4353);
        this.f5233j.removeMessages(4352);
    }

    private final void N() {
        c0.f7098a.d("AiUnitStreamTtsClient", "sendOverTime()");
        this.f5233j.removeMessages(4353);
        this.f5233j.removeMessages(4352);
        this.f5233j.sendEmptyMessageDelayed(4352, 6000L);
    }

    private final void P(String str) {
        Object objM59constructorimpl;
        Object objValueOf;
        this.f5240q.clear();
        String string = kotlin.text.r.N0(str).toString();
        ArrayList<String> arrayList = new ArrayList();
        if (string.length() > 300) {
            String strSubstring = string.substring(0, 300);
            kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
            int iC0 = kotlin.text.r.c0(strSubstring, " ", 0, false, 6, null);
            int i10 = iC0 >= 0 ? iC0 : 300;
            String strSubstring2 = string.substring(0, i10);
            kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
            arrayList.add(strSubstring2);
            string = string.substring(i10);
            kotlin.jvm.internal.r.d(string, "substring(...)");
        }
        String[] strArr = (String[]) kotlin.text.r.u0(string, new String[]{"\n"}, false, 0, 6, null).toArray(new String[0]);
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArr) {
            if (!kotlin.jvm.internal.r.a(str2, "")) {
                arrayList2.add(str2);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Q(arrayList, (String) it.next());
        }
        for (String str3 : arrayList) {
            c0.a aVar = c0.f7098a;
            aVar.d("AiUnitStreamTtsClient", "playText split length " + str3.length());
            try {
                r.a aVar2 = r.Companion;
                if (kotlin.text.r.Y(str3)) {
                    aVar.q("AiUnitStreamTtsClient", "playText split is blank");
                    objValueOf = h0.INSTANCE;
                } else {
                    objValueOf = Boolean.valueOf(this.f5240q.add(str3));
                }
                objM59constructorimpl = r.m59constructorimpl(objValueOf);
            } catch (Throwable th) {
                r.a aVar3 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("AiUnitStreamTtsClient", "playText split length error");
            }
        }
        c0.f7098a.d("AiUnitStreamTtsClient", "playText count " + this.f5240q.size());
    }

    private final void Q(List list, String str) {
        if (str.length() == 0) {
            c0.f7098a.d("AiUnitStreamTtsClient", "splitText text is null");
            return;
        }
        if (str.length() <= 300) {
            list.add(str);
            c0.f7098a.d("AiUnitStreamTtsClient", "splitText,textList size = " + list.size());
            return;
        }
        String strSubstring = str.substring(0, 300);
        kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
        int iC0 = kotlin.text.r.c0(strSubstring, " ", 0, false, 6, null);
        int i10 = iC0 > 0 ? iC0 : 300;
        String strSubstring2 = strSubstring.substring(0, i10);
        kotlin.jvm.internal.r.d(strSubstring2, "substring(...)");
        list.add(strSubstring2);
        String strSubstring3 = str.substring(i10);
        kotlin.jvm.internal.r.d(strSubstring3, "substring(...)");
        c0.f7098a.d("AiUnitStreamTtsClient", "splitText,textList size = " + list.size());
        Q(list, strSubstring3);
    }

    public final void R(String str, TtsParams ttsParams) {
        m mVarY;
        if (str == null || str.length() == 0) {
            c0.f7098a.i("AiUnitStreamTtsClient", "startPlayText(),reject");
            return;
        }
        Bundle bundle = this.f5227d;
        this.f5235l = bundle != null ? Integer.valueOf(bundle.getInt("play_from_phone_mic", -1)) : -1;
        c0.a aVar = c0.f7098a;
        aVar.d("AiUnitStreamTtsClient", "startPlayText() playOutSide: " + this.f5235l);
        Bundle bundle2 = this.f5227d;
        String string = bundle2 != null ? bundle2.getString("speedGrade", (String) f5223t.get(1)) : null;
        if (string == null) {
            Object obj = f5223t.get(1);
            kotlin.jvm.internal.r.d(obj, "get(...)");
            string = (String) obj;
        }
        if (D() && (mVarY = y()) != null) {
            mVarY.e(true);
        }
        ttsParams.f("opus");
        WsTtsRequest wsTtsRequest = new WsTtsRequest();
        Bundle bundle3 = this.f5227d;
        String string2 = bundle3 != null ? bundle3.getString("tts_voice", "") : null;
        aVar.i("AiUnitStreamTtsClient", "startPlayText final timbre : " + string2);
        wsTtsRequest.setSpeedGrade(string);
        wsTtsRequest.setChannel(AuthUtil.AUTH_STYLE_INNER);
        wsTtsRequest.setContent(str);
        wsTtsRequest.setFormat(ttsParams.a());
        wsTtsRequest.setLanguage(ttsParams.b());
        if (string2 != null) {
            wsTtsRequest.setVoiceName(string2);
        }
        String string3 = UUID.randomUUID().toString();
        kotlin.jvm.internal.r.d(string3, "toString(...)");
        this.f5234k = string3;
        wsTtsRequest.setRequestId(this.f5234k);
        this.f5241r = wsTtsRequest.getContent();
        this.f5234k = wsTtsRequest.getRequestId();
        TextRecognizeHelper.INSTANCE.startWsTts(wsTtsRequest);
        N();
        if (aVar.l()) {
            aVar.d("AiUnitStreamTtsClient", "startWsTts(), wsTtsRequest:" + this.f5234k + " text:" + aVar.g(str) + "language:" + ttsParams.b());
        }
    }

    private final void T() {
        Object objM59constructorimpl;
        try {
            r.a aVar = r.Companion;
            c0.f7098a.d("AiUnitStreamTtsClient", "stopWsTts");
            TextRecognizeHelper.INSTANCE.stopWsTts(AuthUtil.AUTH_STYLE_INNER, this.f5234k);
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("AiUnitStreamTtsClient", "stopWsTts error " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    private final m x() {
        return (m) this.f5225b.getValue();
    }

    public final m y() {
        if (!D()) {
            return x();
        }
        B();
        return this.f5230g;
    }

    private final synchronized void z() {
        c0.f7098a.i("AiUnitStreamTtsClient", "initObserver");
        if (this.f5232i == null) {
            this.f5232i = new b0() { // from class: com.coloros.translate.engine.tts.b
                @Override // androidx.lifecycle.b0
                public final void b(Object obj) {
                    e.A(this.f5215a, (Boolean) obj);
                }
            };
            b0 b0Var = this.f5232i;
            if (b0Var != null) {
                com.coloros.translate.observer.c.f5327o.c(b0Var);
            }
        }
    }

    public final boolean C() {
        boolean zB;
        if (D()) {
            m mVar = this.f5230g;
            zB = mVar != null ? mVar.b() : true;
        } else {
            zB = x().b();
        }
        return !zB;
    }

    public final void G(String text, TtsParams ttsParams, Bundle extra, q qVar) {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        kotlin.jvm.internal.r.e(text, "text");
        kotlin.jvm.internal.r.e(ttsParams, "ttsParams");
        kotlin.jvm.internal.r.e(extra, "extra");
        c0.f7098a.d("AiUnitStreamTtsClient", "playText(),text=" + text.length());
        this.f5226c = qVar;
        this.f5227d = extra;
        if (text.length() == 0) {
            q qVar2 = this.f5226c;
            if (qVar2 != null) {
                com.coloros.translate.utils.k kVar = com.coloros.translate.utils.k.TTS_PARAMS_TEXT_EMPTY_ERROR;
                qVar2.onStatus(kVar.getCode(), kVar.getMessage());
                return;
            }
            return;
        }
        if (!com.coloros.translate.utils.i.a(this.f5224a)) {
            q qVar3 = this.f5226c;
            if (qVar3 != null) {
                com.coloros.translate.utils.k kVar2 = com.coloros.translate.utils.k.NO_NETWORK;
                qVar3.onStatus(kVar2.getCode(), kVar2.getMessage());
                return;
            }
            return;
        }
        if (this.f5228e == null) {
            synchronized (this) {
                try {
                    r.a aVar = r.Companion;
                    if (this.f5228e == null) {
                        this.f5228e = n.f5273d.a();
                    }
                    objM59constructorimpl2 = r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    r.a aVar2 = r.Companion;
                    objM59constructorimpl2 = r.m59constructorimpl(s.a(th));
                }
                if (r.m62exceptionOrNullimpl(objM59constructorimpl2) != null) {
                    c0.f7098a.e("AiUnitStreamTtsClient", "playText(),mOpusCodecManager error");
                    q qVar4 = this.f5226c;
                    if (qVar4 != null) {
                        com.coloros.translate.utils.k kVar3 = com.coloros.translate.utils.k.TTS_PARAMS_TEXT_OPUS_CODEC_LOAD_ERROR;
                        qVar4.onStatus(kVar3.getCode(), kVar3.getMessage());
                    }
                    return;
                }
            }
        }
        P(text);
        this.f5239p = ttsParams;
        q qVar5 = this.f5226c;
        if (qVar5 != null) {
            qVar5.onStart();
        }
        if (!this.f5231h) {
            this.f5241r = (String) this.f5240q.poll();
            this.f5237n = true;
            c0.f7098a.d("AiUnitStreamTtsClient", "playText(), first connect isNeedTts = true");
            z();
            TextRecognizeHelper.INSTANCE.initWsSpeech(this.f5224a, this.f5238o);
            N();
            return;
        }
        if (!this.f5236m) {
            T();
        }
        if (f5222s.b()) {
            this.f5237n = true;
            c0.f7098a.d("AiUnitStreamTtsClient", "playText(), init success,isNeedTts = true");
            this.f5241r = (String) this.f5240q.poll();
            R(this.f5241r, ttsParams);
            return;
        }
        this.f5233j.removeMessages(4353);
        this.f5233j.sendEmptyMessageDelayed(4353, 500L);
        try {
            r.a aVar3 = r.Companion;
            TextRecognizeHelper.INSTANCE.getWsTtsInitStatus(new d(ttsParams));
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th2) {
            r.a aVar4 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th2));
        }
        if (r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
            c0.f7098a.e("AiUnitStreamTtsClient", "getWsTtsInitStatus fail");
            this.f5233j.removeMessages(4353);
            L();
        }
    }

    public final void H(byte[] bArr, String str) {
        if (bArr == null || D()) {
            return;
        }
        if (this.f5228e == null) {
            this.f5228e = n.f5273d.a();
        }
        c0.f7098a.d("AiUnitStreamTtsClient", "playWithOpusData(), " + this.f5228e);
        I(bArr, str);
    }

    public final void I(final byte[] bArr, String str) {
        final n nVar;
        if (bArr == null || (nVar = this.f5228e) == null) {
            return;
        }
        if (kotlin.jvm.internal.r.a("pcm", str)) {
            this.f5229f.c(new Runnable() { // from class: com.coloros.translate.engine.tts.c
                @Override // java.lang.Runnable
                public final void run() {
                    e.J(nVar, bArr, this);
                }
            });
        } else {
            this.f5229f.c(new Runnable() { // from class: com.coloros.translate.engine.tts.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.K(nVar, bArr, this);
                }
            });
        }
    }

    public final void O(boolean z10) {
        c0.f7098a.d("AiUnitStreamTtsClient", "setSpeakerphoneOn:" + z10);
        m mVar = this.f5230g;
        if (mVar != null) {
            mVar.e(z10);
        }
    }

    public final void S() {
        boolean zB;
        c0.a aVar = c0.f7098a;
        aVar.d("AiUnitStreamTtsClient", "stopPlay() isTtsProcessEnd:" + this.f5236m + " voipPlayer:" + this.f5230g);
        this.f5240q.clear();
        this.f5241r = "";
        M();
        if (!this.f5236m) {
            T();
        }
        this.f5234k = "";
        this.f5229f.b();
        boolean zD = D();
        if (zD) {
            m mVar = this.f5230g;
            zB = true;
            if ((mVar == null || !mVar.b()) && this.f5230g != null) {
                zB = false;
            }
        } else {
            zB = x().b();
        }
        if (zB) {
            aVar.q("AiUnitStreamTtsClient", "stopPlay() isEmpty stop isSpeak " + zD);
            q qVar = this.f5226c;
            if (qVar != null) {
                qVar.onStop();
            }
            x().h();
            m mVar2 = this.f5230g;
            if (mVar2 != null) {
                mVar2.h();
                return;
            }
            return;
        }
        aVar.q("AiUnitStreamTtsClient", "stopPlay() isSpeak " + zD);
        if (zD) {
            m mVar3 = this.f5230g;
            if (mVar3 != null) {
                mVar3.g();
            }
            x().h();
            return;
        }
        x().g();
        m mVar4 = this.f5230g;
        if (mVar4 != null) {
            mVar4.h();
        }
    }
}
