package com.coloros.translate.repository.local;

import com.coloros.translate.repository.local.LLMConfigData;
import com.coloros.translate.utils.b0;
import com.coloros.translate.utils.l0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile HashSet f5449a;

    private a() {
    }

    public final boolean a(String language) {
        ArrayList<LLMConfigData.LlmSupportLanguage> llmSupportLanguage;
        List<String> listU0;
        r.e(language, "language");
        if (f5449a == null) {
            f5449a = new HashSet();
            LLMConfigData lLMConfigData = (LLMConfigData) b0.a((String) l0.a.g(l0.f7130a, "llm_language_config", "", null, 4, null), LLMConfigData.class);
            if (lLMConfigData != null && (llmSupportLanguage = lLMConfigData.getLlmSupportLanguage()) != null) {
                for (LLMConfigData.LlmSupportLanguage llmSupportLanguage2 : llmSupportLanguage) {
                    String targetLanguage = llmSupportLanguage2.getTargetLanguage();
                    if (targetLanguage != null && (listU0 = kotlin.text.r.u0(targetLanguage, new String[]{","}, false, 0, 6, null)) != null) {
                        for (String str : listU0) {
                            HashSet hashSet = f5449a;
                            if (hashSet != null) {
                                hashSet.add(llmSupportLanguage2.getSourceLanguage() + str);
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet2 = f5449a;
        if (hashSet2 != null) {
            return hashSet2.contains(language);
        }
        return false;
    }

    public final void b(String str) {
        ArrayList<LLMConfigData.LlmSupportLanguage> llmSupportLanguage;
        List<String> listU0;
        if (f5449a == null) {
            f5449a = new HashSet();
        }
        l0.a.l(l0.f7130a, "llm_language_config", str, false, null, 12, null);
        if (str == null) {
            HashSet hashSet = f5449a;
            if (hashSet != null) {
                hashSet.clear();
                return;
            }
            return;
        }
        LLMConfigData lLMConfigData = (LLMConfigData) b0.a(str, LLMConfigData.class);
        if (lLMConfigData == null || (llmSupportLanguage = lLMConfigData.getLlmSupportLanguage()) == null) {
            return;
        }
        for (LLMConfigData.LlmSupportLanguage llmSupportLanguage2 : llmSupportLanguage) {
            String targetLanguage = llmSupportLanguage2.getTargetLanguage();
            if (targetLanguage != null && (listU0 = kotlin.text.r.u0(targetLanguage, new String[]{","}, false, 0, 6, null)) != null) {
                for (String str2 : listU0) {
                    HashSet hashSet2 = f5449a;
                    if (hashSet2 != null) {
                        hashSet2.add(llmSupportLanguage2.getSourceLanguage() + str2);
                    }
                }
            }
        }
    }
}
