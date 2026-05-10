package com.coloros.translate.screen.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.coloros.translate.utils.c0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenTranslationReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5518a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        c0.f7098a.d("ScreenTranslationReceiver", "onReceive:" + (intent != null ? intent.getAction() : null));
        if (context == null) {
            return;
        }
        if (!r.a(intent != null ? intent.getAction() : null, "com.coloros.translate.screen.exit")) {
            l2.a.a(context, intent);
            return;
        }
        l2.a aVar = l2.a.INSTANCE;
        String packageName = context.getPackageName();
        r.d(packageName, "getPackageName(...)");
        aVar.c(context, packageName);
    }
}
