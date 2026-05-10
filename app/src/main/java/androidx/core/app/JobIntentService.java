package androidx.core.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class JobIntentService extends Service {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final Object f1893k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final HashMap f1894l = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f1895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f f1896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f1897c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f1898f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f1899h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f1900i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final ArrayList f1901j = null;

    final class a extends AsyncTask {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                d dVarA = JobIntentService.this.a();
                if (dVarA == null) {
                    return null;
                }
                JobIntentService.this.d(dVarA.getIntent());
                dVarA.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r12) {
            JobIntentService.this.f();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r12) {
            JobIntentService.this.f();
        }
    }

    interface b {
        d a();

        IBinder b();
    }

    final class c implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f1903a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1904b;

        c(Intent intent, int i10) {
            this.f1903a = intent;
            this.f1904b = i10;
        }

        @Override // androidx.core.app.JobIntentService.d
        public void a() {
            JobIntentService.this.stopSelf(this.f1904b);
        }

        @Override // androidx.core.app.JobIntentService.d
        public Intent getIntent() {
            return this.f1903a;
        }
    }

    interface d {
        void a();

        Intent getIntent();
    }

    static final class e extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final JobIntentService f1906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f1907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f1908c;

        final class a implements d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f1909a;

            a(JobWorkItem jobWorkItem) {
                this.f1909a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.d
            public void a() {
                synchronized (e.this.f1907b) {
                    try {
                        JobParameters jobParameters = e.this.f1908c;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.f1909a);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.d
            public Intent getIntent() {
                return this.f1909a.getIntent();
            }
        }

        e(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f1907b = new Object();
            this.f1906a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public d a() {
            synchronized (this.f1907b) {
                try {
                    JobParameters jobParameters = this.f1908c;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f1906a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.b
        public IBinder b() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f1908c = jobParameters;
            this.f1906a.c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f1906a.b();
            synchronized (this.f1907b) {
                this.f1908c = null;
            }
            return zB;
        }
    }

    static abstract class f {
        public abstract void a();

        public abstract void b();

        public abstract void c();
    }

    d a() {
        b bVar = this.f1895a;
        if (bVar != null) {
            return bVar.a();
        }
        synchronized (this.f1901j) {
            try {
                if (this.f1901j.size() <= 0) {
                    return null;
                }
                return (d) this.f1901j.remove(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean b() {
        a aVar = this.f1897c;
        if (aVar != null) {
            aVar.cancel(this.f1898f);
        }
        this.f1899h = true;
        return e();
    }

    void c(boolean z10) {
        if (this.f1897c == null) {
            this.f1897c = new a();
            this.f1897c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void d(Intent intent);

    public boolean e() {
        return true;
    }

    void f() {
        ArrayList arrayList = this.f1901j;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f1897c = null;
                    ArrayList arrayList2 = this.f1901j;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.f1900i) {
                        this.f1896b.a();
                    }
                } finally {
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f1895a;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f1895a = new e(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f1901j;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1900i = true;
                this.f1896b.a();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (this.f1901j == null) {
            return 2;
        }
        this.f1896b.c();
        synchronized (this.f1901j) {
            ArrayList arrayList = this.f1901j;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new c(intent, i11));
            c(true);
        }
        return 3;
    }
}
