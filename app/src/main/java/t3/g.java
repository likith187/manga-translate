package t3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends r.a {
    public static Intent k(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (f.a()) {
            return context.registerReceiver(broadcastReceiver, intentFilter, true != f.a() ? 0 : 2);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }
}
