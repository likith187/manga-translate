package com.oplus.aiunit.translation.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface ITranslateConfig {

    public static final class DefaultImpls {
        public static int getImageTranslateMaxTaskCount(ITranslateConfig iTranslateConfig) {
            return 1;
        }

        public static long getImageTranslateTimeout(ITranslateConfig iTranslateConfig) {
            return 60000L;
        }

        public static int getPhotoTranslateMaxTaskCount(ITranslateConfig iTranslateConfig) {
            return 1;
        }

        public static long getPhotoTranslateTimeout(ITranslateConfig iTranslateConfig) {
            return 60000L;
        }

        public static int getSSETextTranslateMaxTaskCount(ITranslateConfig iTranslateConfig) {
            return 1;
        }

        public static long getSSETextTranslateTimeout(ITranslateConfig iTranslateConfig) {
            return 60000L;
        }

        public static int getTextTranslateMaxTaskCount(ITranslateConfig iTranslateConfig) {
            return 1;
        }

        public static long getTextTranslateTimeout(ITranslateConfig iTranslateConfig) {
            return 60000L;
        }
    }

    int getImageTranslateMaxTaskCount();

    long getImageTranslateTimeout();

    String getPackageName();

    int getPhotoTranslateMaxTaskCount();

    long getPhotoTranslateTimeout();

    int getSSETextTranslateMaxTaskCount();

    long getSSETextTranslateTimeout();

    int getTextTranslateMaxTaskCount();

    long getTextTranslateTimeout();
}
