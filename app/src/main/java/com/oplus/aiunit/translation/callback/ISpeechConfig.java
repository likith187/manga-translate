package com.oplus.aiunit.translation.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface ISpeechConfig {

    public static final class DefaultImpls {
        public static int getSpeechMaxTaskCount(ISpeechConfig iSpeechConfig) {
            return 1;
        }

        public static long getTextToSpeechTimeout(ISpeechConfig iSpeechConfig) {
            return 60000L;
        }
    }

    String getPackageName();

    int getSpeechMaxTaskCount();

    long getTextToSpeechTimeout();
}
