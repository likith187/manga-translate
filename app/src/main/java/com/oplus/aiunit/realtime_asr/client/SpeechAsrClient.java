package com.oplus.aiunit.realtime_asr.client;

import android.content.Context;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.download.core.ErrorCode;
import com.oplus.aiunit.realtime_asr.result.AsrAckMessage;
import com.oplus.aiunit.realtime_asr.result.AudioText;
import com.oplus.aiunit.realtime_asr.result.Sentence;
import com.oplus.aiunit.realtime_asr.result.WordPosDto;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class SpeechAsrClient {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "SpeechAsrClient";
    private TextSmoothClient textSmoothClient;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SpeechAsrClient(Context context) {
        r.e(context, "context");
        this.textSmoothClient = new TextSmoothClient(context, null, 2, 0 == true ? 1 : 0);
    }

    public final AsrAckMessage turnToSmoothJsonText(AsrAckMessage asrAckMessage) {
        Object objM59constructorimpl;
        JSONArray jSONArrayOptJSONArray;
        String str;
        AudioText data;
        Sentence originalText;
        AudioText data2;
        Sentence originalText2;
        h0 h0Var = null;
        String text = (asrAckMessage == null || (data2 = asrAckMessage.getData()) == null || (originalText2 = data2.getOriginalText()) == null) ? null : originalText2.getText();
        AILog.d(TAG, "turnToSmoothJsonText text: " + (text != null ? Integer.valueOf(text.length()) : null));
        if ((text == null ? "" : text).length() == 0) {
            return asrAckMessage;
        }
        try {
            r.a aVar = n8.r.Companion;
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", "key1");
            jSONObject.put("text", text);
            jSONArray.put(jSONObject);
            String string = jSONArray.toString();
            kotlin.jvm.internal.r.d(string, "toString(...)");
            TextSmoothClient textSmoothClient = this.textSmoothClient;
            String textSmoothResult = textSmoothClient != null ? textSmoothClient.getTextSmoothResult(string) : null;
            if (textSmoothResult != null) {
                JSONObject jSONObject2 = new JSONObject(textSmoothResult);
                if (jSONObject2.optInt("code") == 0 && (jSONArrayOptJSONArray = jSONObject2.optJSONArray("data")) != null) {
                    kotlin.jvm.internal.r.b(jSONArrayOptJSONArray);
                    if (jSONArrayOptJSONArray.length() > 0) {
                        String strOptString = jSONArrayOptJSONArray.getJSONObject(0).optString("smoothed");
                        if (strOptString == null) {
                            str = "";
                        } else {
                            kotlin.jvm.internal.r.b(strOptString);
                            str = strOptString;
                        }
                        Sentence sentence = new Sentence(str, (WordPosDto[]) null, (String) null, (String) null, (Long) null, (Long) null, (String) null, ErrorCode.CODE_SERVICE_TIMEOUT, (DefaultConstructorMarker) null);
                        sentence.setWordsPosList((asrAckMessage == null || (data = asrAckMessage.getData()) == null || (originalText = data.getOriginalText()) == null) ? null : originalText.getWordsPosList());
                        AudioText data3 = asrAckMessage != null ? asrAckMessage.getData() : null;
                        if (data3 != null) {
                            data3.setSmoothText(sentence);
                        }
                        return asrAckMessage;
                    }
                }
                h0Var = h0.INSTANCE;
            }
            objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            AILog.e(TAG, "textSmooth error :" + thM62exceptionOrNullimpl);
        }
        return asrAckMessage;
    }
}
