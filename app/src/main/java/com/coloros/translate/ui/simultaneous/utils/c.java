package com.coloros.translate.ui.simultaneous.utils;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.h;
import com.coloros.translate.R;
import com.coloros.translate.base.R$drawable;
import com.coloros.translate.ui.simultaneous.SimultaneousMainActivity;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final c INSTANCE = new c();

    private c() {
    }

    public final void a(Context context) {
        r.e(context, "context");
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager != null) {
            notificationManager.cancel(1);
        }
        c0.f7098a.d("SimultaneousNotificationManager", "removeNotification");
    }

    public final void b(Context context, int i10) {
        r.e(context, "context");
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager != null) {
            String string = context.getString(R.string.notify_channel_name);
            r.d(string, "getString(...)");
            String string2 = context.getString(R.string.notify_channel_name_desc);
            r.d(string2, "getString(...)");
            NotificationChannel notificationChannel = new NotificationChannel("si_notification_channel", string, 3);
            notificationChannel.setDescription(string2);
            PendingIntent activity = PendingIntent.getActivity(context, 1000, new Intent(context, (Class<?>) SimultaneousMainActivity.class), 67108864);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.notify(1, new h.d(context, "si_notification_channel").o(R$drawable.ic_app_launcher).j(context.getString(R.string.simultaneous_is_running)).i(context.getString(i10)).m(1).h(activity).n(true).a(R$drawable.ic_app_launcher, context.getString(R.string.simultaneous_notify_finish), PendingIntent.getBroadcast(context, 1000, new Intent("com.coloros.translate.ACTIVE_SIMULTANEOUS_FINISH_CHANGED"), 67108864)).f("service").e(false).b());
            c0.f7098a.d("SimultaneousNotificationManager", "sendRecordStatus");
        }
    }
}
