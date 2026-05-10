package androidx.emoji2.text;

import a0.g;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.emoji2.text.e;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public class j extends e.c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final a f2398k = new a();

    public static class a {
        public Typeface a(Context context, g.b bVar) {
            return a0.g.a(context, null, new g.b[]{bVar});
        }

        public g.a b(Context context, a0.e eVar) {
            return a0.g.b(context, null, eVar);
        }

        public void c(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements e.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a0.e f2400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f2401c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f2402d = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Handler f2403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Executor f2404f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ThreadPoolExecutor f2405g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        e.i f2406h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ContentObserver f2407i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Runnable f2408j;

        b(Context context, a0.e eVar, a aVar) {
            c0.h.f(context, "Context cannot be null");
            c0.h.f(eVar, "FontRequest cannot be null");
            this.f2399a = context.getApplicationContext();
            this.f2400b = eVar;
            this.f2401c = aVar;
        }

        private void b() {
            synchronized (this.f2402d) {
                try {
                    this.f2406h = null;
                    ContentObserver contentObserver = this.f2407i;
                    if (contentObserver != null) {
                        this.f2401c.c(this.f2399a, contentObserver);
                        this.f2407i = null;
                    }
                    Handler handler = this.f2403e;
                    if (handler != null) {
                        handler.removeCallbacks(this.f2408j);
                    }
                    this.f2403e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.f2405g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f2404f = null;
                    this.f2405g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private g.b e() {
            try {
                g.a aVarB = this.f2401c.b(this.f2399a, this.f2400b);
                if (aVarB.e() == 0) {
                    g.b[] bVarArrC = aVarB.c();
                    if (bVarArrC == null || bVarArrC.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return bVarArrC[0];
                }
                throw new RuntimeException("fetchFonts failed (" + aVarB.e() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        @Override // androidx.emoji2.text.e.h
        public void a(e.i iVar) {
            c0.h.f(iVar, "LoaderCallback cannot be null");
            synchronized (this.f2402d) {
                this.f2406h = iVar;
            }
            d();
        }

        void c() {
            synchronized (this.f2402d) {
                try {
                    if (this.f2406h == null) {
                        return;
                    }
                    try {
                        g.b bVarE = e();
                        int iB = bVarE.b();
                        if (iB == 2) {
                            synchronized (this.f2402d) {
                            }
                        }
                        if (iB != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + iB + ")");
                        }
                        try {
                            z.i.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                            Typeface typefaceA = this.f2401c.a(this.f2399a, bVarE);
                            ByteBuffer byteBufferA = u.k.a(this.f2399a, null, bVarE.d());
                            if (byteBufferA == null || typefaceA == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            m mVarB = m.b(typefaceA, byteBufferA);
                            z.i.b();
                            synchronized (this.f2402d) {
                                try {
                                    e.i iVar = this.f2406h;
                                    if (iVar != null) {
                                        iVar.b(mVarB);
                                    }
                                } finally {
                                }
                            }
                            b();
                        } catch (Throwable th) {
                            z.i.b();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        synchronized (this.f2402d) {
                            try {
                                e.i iVar2 = this.f2406h;
                                if (iVar2 != null) {
                                    iVar2.a(th2);
                                }
                                b();
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        void d() {
            synchronized (this.f2402d) {
                try {
                    if (this.f2406h == null) {
                        return;
                    }
                    if (this.f2404f == null) {
                        ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.b.b("emojiCompat");
                        this.f2405g = threadPoolExecutorB;
                        this.f2404f = threadPoolExecutorB;
                    }
                    this.f2404f.execute(new Runnable() { // from class: androidx.emoji2.text.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2409a.c();
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void f(Executor executor) {
            synchronized (this.f2402d) {
                this.f2404f = executor;
            }
        }
    }

    public j(Context context, a0.e eVar) {
        super(new b(context, eVar, f2398k));
    }

    public j c(Executor executor) {
        ((b) a()).f(executor);
        return this;
    }
}
