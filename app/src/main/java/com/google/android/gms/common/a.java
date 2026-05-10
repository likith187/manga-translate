package com.google.android.gms.common;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.h;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.d0;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.internal.w;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: c */
    private String f7566c;

    /* JADX INFO: renamed from: e */
    private static final Object f7564e = new Object();

    /* JADX INFO: renamed from: f */
    private static final a f7565f = new a();

    /* JADX INFO: renamed from: d */
    public static final int f7563d = b.f7731a;

    public static a l() {
        return f7565f;
    }

    @Override // com.google.android.gms.common.b
    public Intent a(Context context, int i10, String str) {
        return super.a(context, i10, str);
    }

    @Override // com.google.android.gms.common.b
    public PendingIntent b(Context context, int i10, int i11) {
        return super.b(context, i10, i11);
    }

    @Override // com.google.android.gms.common.b
    public final String d(int i10) {
        return super.d(i10);
    }

    @Override // com.google.android.gms.common.b
    public int f(Context context) {
        return super.f(context);
    }

    @Override // com.google.android.gms.common.b
    public int g(Context context, int i10) {
        return super.g(context, i10);
    }

    @Override // com.google.android.gms.common.b
    public final boolean i(int i10) {
        return super.i(i10);
    }

    public Dialog j(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        return o(activity, i10, w.b(activity, a(activity, i10, "d"), i11), onCancelListener, null);
    }

    public PendingIntent k(Context context, ConnectionResult connectionResult) {
        return connectionResult.G0() ? connectionResult.F0() : b(context, connectionResult.D0(), 0);
    }

    public boolean m(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogJ = j(activity, i10, i11, onCancelListener);
        if (dialogJ == null) {
            return false;
        }
        r(activity, dialogJ, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public void n(Context context, int i10) {
        s(context, i10, null, c(context, i10, 0, "n"));
    }

    final Dialog o(Context context, int i10, w wVar, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnClickListener onClickListener) {
        if (i10 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.t.c(context, i10));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String strB = com.google.android.gms.common.internal.t.b(context, i10);
        DialogInterface.OnClickListener onClickListener2 = wVar;
        if (strB != null) {
            if (wVar == null) {
                onClickListener2 = onClickListener;
            }
            builder.setPositiveButton(strB, onClickListener2);
        }
        String strF = com.google.android.gms.common.internal.t.f(context, i10);
        if (strF != null) {
            builder.setTitle(strF);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i10)), new IllegalArgumentException());
        return builder.create();
    }

    public final Dialog p(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.t.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        r(activity, alertDialogCreate, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return alertDialogCreate;
    }

    public final zabx q(Context context, d0 d0Var) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabx zabxVar = new zabx(d0Var);
        t3.g.k(context, zabxVar, intentFilter);
        zabxVar.a(context);
        if (h(context, "com.google.android.gms")) {
            return zabxVar;
        }
        d0Var.a();
        zabxVar.b();
        return null;
    }

    final void r(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                l3.a.n(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    final void s(Context context, int i10, String str, PendingIntent pendingIntent) {
        int i11;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i10), null), new IllegalArgumentException());
        if (i10 == 18) {
            t(context);
            return;
        }
        if (pendingIntent == null) {
            if (i10 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String strE = com.google.android.gms.common.internal.t.e(context, i10);
        String strD = com.google.android.gms.common.internal.t.d(context, i10);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) com.google.android.gms.common.internal.k.g(context.getSystemService("notification"));
        h.d dVarP = new h.d(context).l(true).e(true).j(strE).p(new h.b().h(strD));
        if (r3.f.b(context)) {
            com.google.android.gms.common.internal.k.j(r3.j.c());
            dVarP.o(context.getApplicationInfo().icon).m(2);
            if (r3.f.c(context)) {
                dVarP.a(R$drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R$string.common_open_on_phone), pendingIntent);
            } else {
                dVarP.h(pendingIntent);
            }
        } else {
            dVarP.o(R.drawable.stat_sys_warning).q(resources.getString(com.google.android.gms.base.R$string.common_google_play_services_notification_ticker)).r(System.currentTimeMillis()).h(pendingIntent).i(strD);
        }
        if (r3.j.f()) {
            com.google.android.gms.common.internal.k.j(r3.j.f());
            synchronized (f7564e) {
                str2 = this.f7566c;
            }
            if (str2 == null) {
                str2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String string = context.getResources().getString(com.google.android.gms.base.R$string.common_google_play_services_notification_channel_name);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            dVarP.g(str2);
        }
        Notification notificationB = dVarP.b();
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            d.f7735b.set(false);
            i11 = 10436;
        } else {
            i11 = 39789;
        }
        notificationManager.notify(i11, notificationB);
    }

    final void t(Context context) {
        new f(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean u(Activity activity, com.google.android.gms.common.api.internal.g gVar, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog dialogO = o(activity, i10, w.c(gVar, a(activity, i10, "d"), 2), onCancelListener, null);
        if (dialogO == null) {
            return false;
        }
        r(activity, dialogO, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public final boolean v(Context context, ConnectionResult connectionResult, int i10) {
        PendingIntent pendingIntentK;
        if (s3.a.a(context) || (pendingIntentK = k(context, connectionResult)) == null) {
            return false;
        }
        s(context, connectionResult.D0(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, pendingIntentK, i10, true), t3.h.f15701a | 134217728));
        return true;
    }
}
