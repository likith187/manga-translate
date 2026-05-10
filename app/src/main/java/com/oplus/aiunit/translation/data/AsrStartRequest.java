package com.oplus.aiunit.translation.data;

import com.google.gson.d;
import com.oplus.aiunit.realtime_asr.slot.RealTimeAsrInputSlot;
import com.oplus.aiunit.speech.asr.slot.ASRInputSlot;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AsrStartRequest {
    private boolean isEnableMt;
    public static final Companion Companion = new Companion(null);
    private static final String RECORDID = ASRInputSlot.KEY_FILE_RECORDID;
    private static final String MODEL = "model";
    private static final String ACCENT = "accent";
    private static final String FORMAT = "format";
    private static final String CHANNEL = TranslationClient.PARAM_KEY_CHANNEL;
    private static final String SAMPLE_BYTES = "sampleBytes";
    private static final String SAMPLE_REATE = "sampleRate";
    private static final String FRAME_SIZE = "frameSize";
    private static final String ENABLE_MT = "enableMt";
    private static final String SRC_LANGUAGE = "sourceLanguage";
    private static final String TARGET_LANGUAGE = RealTimeAsrInputSlot.KEY_TARGET_LANGUAGE;
    private static final String ENABLE_TTS = "enableTts";
    private static final String LANGUAGES = "languages";
    private static final String SPEAKER = "speaker";
    private static final String SPEED = "speed";
    private static final String PITCH = "pitch";
    private static final String TTS_TYPE = "ttsType";
    private START_STRUCT mRequest = new START_STRUCT();
    private boolean isEnableTts = true;
    private boolean isEnableLid = true;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getACCENT() {
            return AsrStartRequest.ACCENT;
        }

        public final String getCHANNEL() {
            return AsrStartRequest.CHANNEL;
        }

        public final String getENABLE_MT() {
            return AsrStartRequest.ENABLE_MT;
        }

        public final String getENABLE_TTS() {
            return AsrStartRequest.ENABLE_TTS;
        }

        public final String getFORMAT() {
            return AsrStartRequest.FORMAT;
        }

        public final String getFRAME_SIZE() {
            return AsrStartRequest.FRAME_SIZE;
        }

        public final String getLANGUAGES() {
            return AsrStartRequest.LANGUAGES;
        }

        public final String getMODEL() {
            return AsrStartRequest.MODEL;
        }

        public final String getPITCH() {
            return AsrStartRequest.PITCH;
        }

        public final String getRECORDID() {
            return AsrStartRequest.RECORDID;
        }

        public final String getSAMPLE_BYTES() {
            return AsrStartRequest.SAMPLE_BYTES;
        }

        public final String getSAMPLE_REATE() {
            return AsrStartRequest.SAMPLE_REATE;
        }

        public final String getSPEAKER() {
            return AsrStartRequest.SPEAKER;
        }

        public final String getSPEED() {
            return AsrStartRequest.SPEED;
        }

        public final String getSRC_LANGUAGE() {
            return AsrStartRequest.SRC_LANGUAGE;
        }

        public final String getTARGET_LANGUAGE() {
            return AsrStartRequest.TARGET_LANGUAGE;
        }

        public final String getTTS_TYPE() {
            return AsrStartRequest.TTS_TYPE;
        }

        private Companion() {
        }
    }

    public static final class START_DATA {
        private String accent;
        private Integer channel;
        private Boolean enableLLM;
        private Boolean enableLid;
        private Boolean enableMt;
        private Boolean enableTts;
        private String format;
        private Integer frameSize;
        private int model;
        private String recordId = "";
        private Integer sampleBytes;
        private Integer sampleRate;
        private Integer sceneId;
        private String sourceLanguage;
        private ArrayList<String> sourceLanguages;
        private String speedGrade;
        private String targetLanguage;
        private String voiceName;

        public final String getAccent() {
            return this.accent;
        }

        public final Integer getChannel() {
            return this.channel;
        }

        public final Boolean getEnableLLM() {
            return this.enableLLM;
        }

        public final Boolean getEnableLid() {
            return this.enableLid;
        }

        public final Boolean getEnableMt() {
            return this.enableMt;
        }

        public final Boolean getEnableTts() {
            return this.enableTts;
        }

        public final String getFormat() {
            return this.format;
        }

        public final Integer getFrameSize() {
            return this.frameSize;
        }

        public final int getModel() {
            return this.model;
        }

        public final String getRecordId() {
            return this.recordId;
        }

        public final Integer getSampleBytes() {
            return this.sampleBytes;
        }

        public final Integer getSampleRate() {
            return this.sampleRate;
        }

        public final Integer getSceneId() {
            return this.sceneId;
        }

        public final String getSourceLanguage() {
            return this.sourceLanguage;
        }

        public final ArrayList<String> getSourceLanguages() {
            return this.sourceLanguages;
        }

        public final String getSpeedGrade() {
            return this.speedGrade;
        }

        public final String getTargetLanguage() {
            return this.targetLanguage;
        }

        public final String getVoiceName() {
            return this.voiceName;
        }

        public final void setAccent(String str) {
            this.accent = str;
        }

        public final void setChannel(Integer num) {
            this.channel = num;
        }

        public final void setEnableLLM(Boolean bool) {
            this.enableLLM = bool;
        }

        public final void setEnableLid(Boolean bool) {
            this.enableLid = bool;
        }

        public final void setEnableMt(Boolean bool) {
            this.enableMt = bool;
        }

        public final void setEnableTts(Boolean bool) {
            this.enableTts = bool;
        }

        public final void setFormat(String str) {
            this.format = str;
        }

        public final void setFrameSize(Integer num) {
            this.frameSize = num;
        }

        public final void setModel(int i10) {
            this.model = i10;
        }

        public final void setRecordId(String str) {
            this.recordId = str;
        }

        public final void setSampleBytes(Integer num) {
            this.sampleBytes = num;
        }

        public final void setSampleRate(Integer num) {
            this.sampleRate = num;
        }

        public final void setSceneId(Integer num) {
            this.sceneId = num;
        }

        public final void setSourceLanguage(String str) {
            this.sourceLanguage = str;
        }

        public final void setSourceLanguages(ArrayList<String> arrayList) {
            this.sourceLanguages = arrayList;
        }

        public final void setSpeedGrade(String str) {
            this.speedGrade = str;
        }

        public final void setTargetLanguage(String str) {
            this.targetLanguage = str;
        }

        public final void setVoiceName(String str) {
            this.voiceName = str;
        }
    }

    public static final class START_STRUCT {
        private String bizType;
        private String channel;
        private START_DATA data = new START_DATA();

        public final String getBizType() {
            return this.bizType;
        }

        public final String getChannel() {
            return this.channel;
        }

        public final START_DATA getData() {
            return this.data;
        }

        public final void setBizType(String str) {
            this.bizType = str;
        }

        public final void setChannel(String str) {
            this.channel = str;
        }

        public final void setData(START_DATA start_data) {
            r.e(start_data, "<set-?>");
            this.data = start_data;
        }
    }

    public final String getAccent() {
        return this.mRequest.getData().getAccent();
    }

    public final Integer getAsrChannel() {
        return this.mRequest.getData().getChannel();
    }

    public final String getBizType() {
        return this.mRequest.getBizType();
    }

    public final Boolean getEnableLLM() {
        return this.mRequest.getData().getEnableLLM();
    }

    public final boolean getEnableMt() {
        return this.isEnableMt;
    }

    public final boolean getEnableTts() {
        return this.isEnableTts;
    }

    public final String getFormat() {
        return this.mRequest.getData().getFormat();
    }

    public final Integer getFrameSize() {
        return this.mRequest.getData().getFrameSize();
    }

    public final int getModel() {
        return this.mRequest.getData().getModel();
    }

    public final String getRecordId() {
        return this.mRequest.getData().getRecordId();
    }

    public final Integer getSampleBytes() {
        return this.mRequest.getData().getSampleBytes();
    }

    public final Integer getSampleRate() {
        return this.mRequest.getData().getSampleRate();
    }

    public final Integer getSceneId() {
        return this.mRequest.getData().getSceneId();
    }

    public final ArrayList<String> getSourceLanguages() {
        return this.mRequest.getData().getSourceLanguages();
    }

    public final String getSpeedGrade() {
        return this.mRequest.getData().getSpeedGrade();
    }

    public final String getSrcLanguage() {
        return this.mRequest.getData().getSourceLanguage();
    }

    public final String getTargetLanguage() {
        return this.mRequest.getData().getTargetLanguage();
    }

    public final String getVoiceName() {
        return this.mRequest.getData().getVoiceName();
    }

    public final String getWsChannel() {
        return this.mRequest.getChannel();
    }

    public final boolean getenableLid() {
        return this.isEnableLid;
    }

    public final void setAccent(String str) {
        this.mRequest.getData().setAccent(str);
    }

    public final void setAsrChannel(int i10) {
        this.mRequest.getData().setChannel(Integer.valueOf(i10));
    }

    public final void setBizType(String str) {
        this.mRequest.setBizType(str);
    }

    public final void setEnableLLM(Boolean bool) {
        this.mRequest.getData().setEnableLLM(bool);
    }

    public final void setEnableLid(boolean z10) {
        this.isEnableLid = z10;
        this.mRequest.getData().setEnableLid(Boolean.valueOf(z10));
    }

    public final void setEnableMt(boolean z10) {
        this.isEnableMt = z10;
        this.mRequest.getData().setEnableMt(Boolean.valueOf(this.isEnableMt));
    }

    public final void setEnableTts(boolean z10) {
        this.isEnableTts = z10;
        this.mRequest.getData().setEnableTts(Boolean.valueOf(this.isEnableTts));
    }

    public final void setFormat(String str) {
        this.mRequest.getData().setFormat(str);
    }

    public final void setFrameSize(int i10) {
        this.mRequest.getData().setFrameSize(Integer.valueOf(i10));
    }

    public final void setModel(int i10) {
        this.mRequest.getData().setModel(i10);
    }

    public final void setRecordId(String str) {
        this.mRequest.getData().setRecordId(str);
    }

    public final void setSampleBytes(int i10) {
        this.mRequest.getData().setSampleBytes(Integer.valueOf(i10));
    }

    public final void setSampleRate(int i10) {
        this.mRequest.getData().setSampleRate(Integer.valueOf(i10));
    }

    public final void setSceneId(Integer num) {
        this.mRequest.getData().setSceneId(num);
    }

    public final void setSourceLanguages(ArrayList<String> arrayList) {
        this.mRequest.getData().setSourceLanguages(arrayList);
    }

    public final void setSpeedGrade(String str) {
        this.mRequest.getData().setSpeedGrade(str);
    }

    public final void setSrcLanguage(String str) {
        this.mRequest.getData().setSourceLanguage(str);
    }

    public final void setTargetLanguage(String str) {
        this.mRequest.getData().setTargetLanguage(str);
    }

    public final void setVoiceName(String str) {
        this.mRequest.getData().setVoiceName(str);
    }

    public final void setWsChannel(String str) {
        this.mRequest.setChannel(str);
    }

    public final String toJson() {
        String strV = new d().v(this.mRequest);
        r.b(strV);
        return strV;
    }
}
