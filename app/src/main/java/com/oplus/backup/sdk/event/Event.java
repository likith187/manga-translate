package com.oplus.backup.sdk.event;

import android.content.Intent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Event {
    public static final Companion Companion = new Companion(null);
    public static final String EVENT_MESSAGE_RECEIVED = "event_message_received";
    public static final String EVENT_MESSAGE_SENT = "event_message_sent";
    public static final String EVENT_RESTORE_CMD_SENT = "event_restore_cmd_sent";
    private Intent eventIntent;
    private String receivePluginID;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isEventIntent(String str) {
            return r.a(Event.EVENT_MESSAGE_RECEIVED, str) || r.a(Event.EVENT_MESSAGE_SENT, str) || r.a(Event.EVENT_RESTORE_CMD_SENT, str);
        }

        private Companion() {
        }

        public final boolean isEventIntent(Intent intent) {
            r.e(intent, "intent");
            return isEventIntent(intent.getAction());
        }
    }

    public Event(Intent eventIntent) {
        r.e(eventIntent, "eventIntent");
        this.eventIntent = eventIntent;
    }

    public static final boolean isEventIntent(Intent intent) {
        return Companion.isEventIntent(intent);
    }

    public final Intent getEventIntent() {
        return this.eventIntent;
    }

    public final String getReceivePluginID() {
        return this.receivePluginID;
    }

    public final void setEventIntent(Intent intent) {
        r.e(intent, "<set-?>");
        this.eventIntent = intent;
    }

    public final void setReceivePluginID(String str) {
        this.receivePluginID = str;
    }

    public static final boolean isEventIntent(String str) {
        return Companion.isEventIntent(str);
    }
}
