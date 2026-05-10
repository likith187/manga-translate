package e3;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes.dex */
public class c implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f3.c f11694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f11695c;

    public c(Context context, f3.c cVar, d dVar) {
        this.f11693a = context;
        this.f11694b = cVar;
        this.f11695c = dVar;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                return i12 >= i11;
            }
        }
        return false;
    }

    @Override // e3.p
    public void a(y2.m mVar, int i10) {
        b(mVar, i10, false);
    }

    @Override // e3.p
    public void b(y2.m mVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f11693a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f11693a.getSystemService("jobscheduler");
        int iC = c(mVar);
        if (!z10 && d(jobScheduler, iC, i10)) {
            b3.a.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long jO = this.f11694b.o(mVar);
        JobInfo.Builder builderC = this.f11695c.c(new JobInfo.Builder(iC, componentName), mVar.d(), jO, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", mVar.b());
        persistableBundle.putInt("priority", i3.a.a(mVar.d()));
        if (mVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(mVar.c(), 0));
        }
        builderC.setExtras(persistableBundle);
        b3.a.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", mVar, Integer.valueOf(iC), Long.valueOf(this.f11695c.g(mVar.d(), jO, i10)), Long.valueOf(jO), Integer.valueOf(i10));
        jobScheduler.schedule(builderC.build());
    }

    int c(y2.m mVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f11693a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(mVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(i3.a.a(mVar.d())).array());
        if (mVar.c() != null) {
            adler32.update(mVar.c());
        }
        return (int) adler32.getValue();
    }
}
