package com.oplus.aiunit.nlp.result;

import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class NlpEntity {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "NlpEntity";
    private String content;
    private int endIndex;
    private String entityType;
    private int startIndex;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NlpEntity fromJson(String str) {
            if (str == null || str.length() == 0) {
                return null;
            }
            NlpEntity nlpEntity = new NlpEntity();
            try {
                JSONObject jSONObject = new JSONObject(str);
                nlpEntity.setStartIndex(jSONObject.optInt("startIndex"));
                nlpEntity.setEndIndex(jSONObject.optInt("endIndex"));
                nlpEntity.setContent(jSONObject.getString(TranslationClient.PARAM_KEY_CONTENT));
                nlpEntity.setEntityType(jSONObject.getString("entityType"));
                return nlpEntity;
            } catch (Exception e10) {
                AILog.e(NlpEntity.TAG, "fromJson " + str + " failed. " + e10.getMessage());
                return null;
            }
        }

        private Companion() {
        }
    }

    public static final NlpEntity fromJson(String str) {
        return Companion.fromJson(str);
    }

    public final String getContent() {
        return this.content;
    }

    public final int getEndIndex() {
        return this.endIndex;
    }

    public final String getEntityType() {
        return this.entityType;
    }

    public final int getStartIndex() {
        return this.startIndex;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setEndIndex(int i10) {
        this.endIndex = i10;
    }

    public final void setEntityType(String str) {
        this.entityType = str;
    }

    public final void setStartIndex(int i10) {
        this.startIndex = i10;
    }

    public final JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt("startIndex", Integer.valueOf(this.startIndex));
        jSONObject.putOpt("endIndex", Integer.valueOf(this.endIndex));
        jSONObject.putOpt(TranslationClient.PARAM_KEY_CONTENT, this.content);
        jSONObject.putOpt("entityType", this.entityType);
        return jSONObject;
    }

    public String toString() {
        String string = toJson().toString();
        r.d(string, "toString(...)");
        return string;
    }
}
