package com.oplus.aiunit.toolkits.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface AuthorizeCallback {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int STATUS_DEFAULT = -1;
    public static final int STATUS_FAIL = 0;
    public static final int STATUS_SUCCESS = 1;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int STATUS_DEFAULT = -1;
        public static final int STATUS_FAIL = 0;
        public static final int STATUS_SUCCESS = 1;

        private Companion() {
        }
    }

    void onFail(int i10);

    void onSuccess();
}
