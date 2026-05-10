package com.oplus.aiunit.toolkits.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestCallback {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int REQUEST_IPC_FAIL = 0;
    public static final int REQUEST_NO_INTERNET = 401;
    public static final int REQUEST_PRIVACY_NOT_PERMIT = 400;
    public static final int REQUEST_SET_UP_NOT_COMPLETE = 500;
    public static final int REQUEST_SUCCESS = 1;
    public static final int REQUEST_SUCCESS_IN_HOUR = 2;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int REQUEST_IPC_FAIL = 0;
        public static final int REQUEST_NO_INTERNET = 401;
        public static final int REQUEST_PRIVACY_NOT_PERMIT = 400;
        public static final int REQUEST_SET_UP_NOT_COMPLETE = 500;
        public static final int REQUEST_SUCCESS = 1;
        public static final int REQUEST_SUCCESS_IN_HOUR = 2;

        private Companion() {
        }
    }

    void onResult(int i10);
}
