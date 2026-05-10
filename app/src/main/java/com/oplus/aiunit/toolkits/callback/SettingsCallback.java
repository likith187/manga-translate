package com.oplus.aiunit.toolkits.callback;

/* JADX INFO: loaded from: classes2.dex */
public interface SettingsCallback {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int SWITCH_CLOSE = 0;
    public static final int SWITCH_DEFAULT = -1;
    public static final int SWITCH_OPEN = 1;
    public static final int UI_DISMISS = 0;
    public static final int UI_NONE = -1;
    public static final int UI_RESUME = 1;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int SWITCH_CLOSE = 0;
        public static final int SWITCH_DEFAULT = -1;
        public static final int SWITCH_OPEN = 1;
        public static final int UI_DISMISS = 0;
        public static final int UI_NONE = -1;
        public static final int UI_RESUME = 1;

        private Companion() {
        }
    }

    void onError(int i10);

    void onSwitch(int i10);

    void onUI(int i10);
}
