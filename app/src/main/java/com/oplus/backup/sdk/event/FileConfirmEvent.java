package com.oplus.backup.sdk.event;

import android.content.Intent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class FileConfirmEvent extends Event {
    public static final Companion Companion = new Companion(null);
    public static final String EVENT_FILE_CONFIRM_ACTION = "file_confirm_action";
    public static final String EVENT_KEY_SENT_FILE = "sent_file";
    private final String sentFile;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isFileConfirmEvent(String action) {
            r.e(action, "action");
            return r.a(action, FileConfirmEvent.EVENT_FILE_CONFIRM_ACTION);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileConfirmEvent(Intent intent) {
        super(intent);
        r.e(intent, "intent");
        this.sentFile = intent.getStringExtra(EVENT_KEY_SENT_FILE);
    }

    public static final boolean isFileConfirmEvent(String str) {
        return Companion.isFileConfirmEvent(str);
    }

    public final String getSentFile() {
        return this.sentFile;
    }
}
