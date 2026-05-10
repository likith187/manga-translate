package com.oplus.aiunit.core.data;

import android.os.Bundle;
import com.oplus.aiunit.core.data.AIConfig;
import com.oplus.aiunit.core.utils.AILog;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class DetectData {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "DetectData";
    private List<AIConfig> configList;
    private String custom;
    private final String detectName;
    private long downloadSize;
    private Bundle inData;
    private boolean isAvailable;
    private boolean isLLM;
    private boolean isSupport;
    private boolean isUnavailableBySelf;
    private int runType;
    private int state;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private DetectData(String str) {
        this.detectName = str;
        this.inData = new Bundle();
    }

    private final int defaultRunType() {
        return (r.a(this.detectName, DetectName.NLP_CALL_SUMMARY) || r.a(this.detectName, "aigc_sdinpainting") || r.a(this.detectName, DetectName.AIGC_ARTICLE_SUMMARY) || r.a(this.detectName, "aigc_segmentation") || r.a(this.detectName, "audio_asr")) ? 1 : 0;
    }

    public static /* synthetic */ void isUnavailableBySelf$annotations() {
    }

    public final List<AIConfig> getConfigList() {
        return this.configList;
    }

    public final String getCustom() {
        return this.custom;
    }

    public final Bundle getData() {
        return this.inData;
    }

    public final String getDetectName() {
        return this.detectName;
    }

    public final long getDownloadSize() {
        return this.downloadSize;
    }

    public final int getRunType() {
        return this.runType;
    }

    public final int getState() {
        return this.state;
    }

    public final ArrayList<SimpleUnitInfo> getUnitInfoList() {
        try {
            return this.inData.getParcelableArrayList(ParamsKt.PARAM_KEY_DETECT_DATA_UNIT_INFO_LIST);
        } catch (Throwable th) {
            AILog.e(TAG, "getUnitInfoList " + th.getMessage());
            return null;
        }
    }

    public final boolean isAvailable() {
        return this.isAvailable;
    }

    public final boolean isLLM() {
        return this.isLLM;
    }

    public final boolean isSupport() {
        return this.isSupport;
    }

    public final boolean isUnavailableBySelf() {
        return this.isUnavailableBySelf;
    }

    public final void setAvailable(boolean z10) {
        this.isAvailable = z10;
    }

    public final void setConfigList(List<AIConfig> list) {
        this.configList = list;
    }

    public final void setCustom(String str) {
        this.custom = str;
    }

    public final void setDownloadSize(long j10) {
        this.downloadSize = j10;
    }

    public final void setLLM(boolean z10) {
        this.isLLM = z10;
    }

    public final void setRunType(int i10) {
        this.runType = i10;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    public final void setSupport(boolean z10) {
        this.isSupport = z10;
    }

    public final void setUnavailableBySelf(boolean z10) {
        this.isUnavailableBySelf = z10;
    }

    public final DetectInfo toDetectInfo() {
        ArrayList arrayList;
        try {
            arrayList = this.inData.getParcelableArrayList(ParamsKt.PARAM_KEY_DETECT_DATA_UNIT_INFO_LIST);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
        } catch (Throwable th) {
            AILog.e(TAG, "toDetectInfo " + th.getMessage());
            arrayList = new ArrayList();
        }
        return !arrayList.isEmpty() ? new DetectInfo(this.detectName, (ArrayList<SimpleUnitInfo>) arrayList) : new DetectInfo(this.detectName, this.isAvailable, this.isSupport);
    }

    public String toString() {
        return "DetectData(" + this.detectName + ", " + this.state + ", " + this.isSupport + ", " + this.isAvailable + ", " + this.configList + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetectData(String name, Bundle data) {
        this(name);
        r.e(name, "name");
        r.e(data, "data");
        this.inData = data;
        data.setClassLoader(SimpleUnitInfo.class.getClassLoader());
        this.state = data.getInt(ParamsKt.PARAM_KEY_DETECT_DATA_STATE, 0);
        this.isAvailable = data.getBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_AVAILABLE, false);
        this.isUnavailableBySelf = data.getBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_UNAVAILABLE_SELF, false);
        this.isSupport = data.getBoolean(ParamsKt.PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT, false);
        if (data.containsKey(ParamsKt.PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT) && !this.isSupport && !this.isUnavailableBySelf) {
            this.isSupport = true;
        }
        if (!this.isSupport && this.isAvailable) {
            this.isSupport = true;
        }
        this.isLLM = data.getBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_LLM, false);
        int i10 = data.getInt(ParamsKt.PARAM_KEY_DETECT_DATA_RUN_TYPE, -1);
        this.runType = i10;
        if (i10 == -1) {
            int iDefaultRunType = defaultRunType();
            this.runType = iDefaultRunType;
            data.putInt(ParamsKt.PARAM_KEY_DETECT_DATA_RUN_TYPE, iDefaultRunType);
        }
        this.downloadSize = data.getLong(ParamsKt.PARAM_KEY_DETECT_DOWNLOAD_SIZE, 0L);
        this.custom = data.getString(ParamsKt.PARAM_KEY_UNIT_CUSTOM, null);
        String string = data.getString(ParamsKt.PARAM_KEY_CONFIG_LIST, "");
        if (string == null || string.length() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            r.a aVar = n8.r.Companion;
            JSONArray jSONArray = new JSONArray(string);
            int length = jSONArray.length();
            for (int i11 = 0; i11 < length; i11++) {
                AIConfig.Companion companion = AIConfig.Companion;
                JSONObject jSONObject = jSONArray.getJSONObject(i11);
                kotlin.jvm.internal.r.d(jSONObject, "getJSONObject(...)");
                arrayList.add(companion.parse(jSONObject));
            }
            this.configList = arrayList;
            n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            n8.r.m59constructorimpl(s.a(th));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetectData(String name, boolean z10) {
        this(name);
        kotlin.jvm.internal.r.e(name, "name");
        this.isAvailable = z10;
        this.state = z10 ? 1 : 0;
        this.isUnavailableBySelf = !z10;
        this.isSupport = z10;
        this.isLLM = kotlin.jvm.internal.r.a(name, DetectName.NLP_CALL_SUMMARY) || kotlin.jvm.internal.r.a(name, "aigc_sdinpainting") || kotlin.jvm.internal.r.a(name, DetectName.AIGC_ARTICLE_SUMMARY);
        this.runType = defaultRunType();
        Bundle bundle = new Bundle();
        bundle.setClassLoader(SimpleUnitInfo.class.getClassLoader());
        bundle.putBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_AVAILABLE, this.isAvailable);
        bundle.putInt(ParamsKt.PARAM_KEY_DETECT_DATA_STATE, this.state);
        bundle.putBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_UNAVAILABLE_SELF, this.isUnavailableBySelf);
        bundle.putBoolean(ParamsKt.PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT, this.isSupport);
        bundle.putBoolean(ParamsKt.PARAM_KEY_DETECT_DATA_LLM, this.isLLM);
        bundle.putInt(ParamsKt.PARAM_KEY_DETECT_DATA_RUN_TYPE, this.runType);
        this.inData = bundle;
    }
}
