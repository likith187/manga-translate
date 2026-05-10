package com.oplus.aiunit.translation.utils;

import com.oplus.aiunit.core.utils.AILog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class AILogHelper {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void e(String tag, String msg) {
            r.e(tag, "tag");
            r.e(msg, "msg");
            AILog.e(tag, msg);
        }

        public final void i(String tag, String msg) {
            r.e(tag, "tag");
            r.e(msg, "msg");
            AILog.i(tag, tag + '-' + msg);
        }

        private Companion() {
        }
    }
}
