package com.coloros.translate.repository.local;

import androidx.annotation.Keep;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@Keep
public final class LLMConfigData {
    private String language;
    private ArrayList<LlmSupportLanguage> llmSupportLanguage;

    @Keep
    public static final class LlmSupportLanguage {
        private String sourceLanguage;
        private String targetLanguage;

        public final String getSourceLanguage() {
            return this.sourceLanguage;
        }

        public final String getTargetLanguage() {
            return this.targetLanguage;
        }

        public final void setSourceLanguage(String str) {
            this.sourceLanguage = str;
        }

        public final void setTargetLanguage(String str) {
            this.targetLanguage = str;
        }
    }

    public final String getLanguage() {
        return this.language;
    }

    public final ArrayList<LlmSupportLanguage> getLlmSupportLanguage() {
        return this.llmSupportLanguage;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setLlmSupportLanguage(ArrayList<LlmSupportLanguage> arrayList) {
        this.llmSupportLanguage = arrayList;
    }
}
