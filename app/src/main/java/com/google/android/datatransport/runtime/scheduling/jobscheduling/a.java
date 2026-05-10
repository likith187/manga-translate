package com.google.android.datatransport.runtime.scheduling.jobscheduling;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f7500a = new a();

    private a() {
    }

    public static Runnable a() {
        return f7500a;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlarmManagerSchedulerBroadcastReceiver.a();
    }
}
