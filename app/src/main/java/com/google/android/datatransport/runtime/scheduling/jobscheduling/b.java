package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JobInfoSchedulerService f7501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JobParameters f7502b;

    private b(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f7501a = jobInfoSchedulerService;
        this.f7502b = jobParameters;
    }

    public static Runnable a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new b(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f7501a.jobFinished(this.f7502b, false);
    }
}
