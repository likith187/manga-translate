package com.oplus.aiunit.translation.request;

import com.google.gson.d;
import java.util.ArrayList;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class StartAsrRequest {
    private boolean isEnableLid;
    private boolean isEnableMt;
    private boolean isEnableTts;
    private String pkgName;
    private START_STRUCT mRequest = new START_STRUCT();
    private String hashcode = "";

    public static final class START_DATA {
        private String accent;
        private Integer audioTrack;
        private Boolean enableLLM;
        private Boolean enableLid;
        private Boolean enableMt;
        private Boolean enableTts;
        private String format;
        private int model;
        private String recordId = "";
        private Integer sceneId;
        private String sourceLanguage;
        private ArrayList<String> sourceLanguages;
        private String speedGrade;
        private String targetLanguage;
        private String voiceName;

        public final String getAccent() {
            return this.accent;
        }

        public final Integer getAudioTrack() {
            return this.audioTrack;
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

        public final int getModel() {
            return this.model;
        }

        public final String getRecordId() {
            return this.recordId;
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

        public final void setAudioTrack(Integer num) {
            this.audioTrack = num;
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

        public final void setModel(int i10) {
            this.model = i10;
        }

        public final void setRecordId(String str) {
            this.recordId = str;
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

    public final Integer getAsrAudioTrack() {
        return this.mRequest.getData().getAudioTrack();
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

    public final String getHashcode() {
        return this.hashcode;
    }

    public final int getModel() {
        return this.mRequest.getData().getModel();
    }

    public final String getPkgName() {
        return this.pkgName;
    }

    public final String getRecordId() {
        return this.mRequest.getData().getRecordId();
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

    public final void setAsrAudioTrack(int i10) {
        this.mRequest.getData().setAudioTrack(Integer.valueOf(i10));
    }

    public final void setBizType(String str) {
        this.mRequest.setBizType(str);
    }

    public final void setEnableLLM(boolean z10) {
        this.mRequest.getData().setEnableLLM(Boolean.valueOf(z10));
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

    public final void setHashcode(String str) {
        r.e(str, "<set-?>");
        this.hashcode = str;
    }

    public final void setModel(int i10) {
        this.mRequest.getData().setModel(i10);
    }

    public final void setPkgName(String str) {
        this.pkgName = str;
    }

    public final void setRecordId(String str) {
        this.mRequest.getData().setRecordId(str);
    }

    public final void setSceneId(Integer num) {
        this.mRequest.getData().setSceneId(num);
    }

    public final void setSourceLanguages(ArrayList<String> srcLanguages) {
        r.e(srcLanguages, "srcLanguages");
        this.mRequest.getData().setSourceLanguages(srcLanguages);
    }

    public final void setSpeedGrade(String speedGrade) {
        r.e(speedGrade, "speedGrade");
        this.mRequest.getData().setSpeedGrade(speedGrade);
    }

    public final void setSrcLanguage(String str) {
        this.mRequest.getData().setSourceLanguage(str);
    }

    public final void setTargetLanguage(String str) {
        this.mRequest.getData().setTargetLanguage(str);
    }

    public final void setVoiceName(String voiceName) {
        r.e(voiceName, "voiceName");
        this.mRequest.getData().setVoiceName(voiceName);
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
