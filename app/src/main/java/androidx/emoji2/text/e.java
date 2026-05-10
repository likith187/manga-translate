package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: o */
    private static final Object f2340o = new Object();

    /* JADX INFO: renamed from: p */
    private static final Object f2341p = new Object();

    /* JADX INFO: renamed from: q */
    private static volatile e f2342q;

    /* JADX INFO: renamed from: b */
    private final Set f2344b;

    /* JADX INFO: renamed from: e */
    private final b f2347e;

    /* JADX INFO: renamed from: f */
    final h f2348f;

    /* JADX INFO: renamed from: g */
    private final j f2349g;

    /* JADX INFO: renamed from: h */
    final boolean f2350h;

    /* JADX INFO: renamed from: i */
    final boolean f2351i;

    /* JADX INFO: renamed from: j */
    final int[] f2352j;

    /* JADX INFO: renamed from: k */
    private final boolean f2353k;

    /* JADX INFO: renamed from: l */
    private final int f2354l;

    /* JADX INFO: renamed from: m */
    private final int f2355m;

    /* JADX INFO: renamed from: n */
    private final InterfaceC0026e f2356n;

    /* JADX INFO: renamed from: a */
    private final ReadWriteLock f2343a = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: c */
    private volatile int f2345c = 3;

    /* JADX INFO: renamed from: d */
    private final Handler f2346d = new Handler(Looper.getMainLooper());

    private static final class a extends b {

        /* JADX INFO: renamed from: b */
        private volatile androidx.emoji2.text.h f2357b;

        /* JADX INFO: renamed from: c */
        private volatile m f2358c;

        /* JADX INFO: renamed from: androidx.emoji2.text.e$a$a */
        class C0025a extends i {
            C0025a() {
            }

            @Override // androidx.emoji2.text.e.i
            public void a(Throwable th) {
                a.this.f2360a.n(th);
            }

            @Override // androidx.emoji2.text.e.i
            public void b(m mVar) {
                a.this.d(mVar);
            }
        }

        a(e eVar) {
            super(eVar);
        }

        @Override // androidx.emoji2.text.e.b
        void a() {
            try {
                this.f2360a.f2348f.a(new C0025a());
            } catch (Throwable th) {
                this.f2360a.n(th);
            }
        }

        @Override // androidx.emoji2.text.e.b
        CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return this.f2357b.h(charSequence, i10, i11, i12, z10);
        }

        @Override // androidx.emoji2.text.e.b
        void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f2358c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f2360a.f2350h);
        }

        void d(m mVar) {
            if (mVar == null) {
                this.f2360a.n(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f2358c = mVar;
            m mVar2 = this.f2358c;
            j jVar = this.f2360a.f2349g;
            InterfaceC0026e interfaceC0026e = this.f2360a.f2356n;
            e eVar = this.f2360a;
            this.f2357b = new androidx.emoji2.text.h(mVar2, jVar, interfaceC0026e, eVar.f2351i, eVar.f2352j, androidx.emoji2.text.g.a());
            this.f2360a.o();
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a */
        final e f2360a;

        b(e eVar) {
            this.f2360a = eVar;
        }

        abstract void a();

        abstract CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10);

        abstract void c(EditorInfo editorInfo);
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a */
        final h f2361a;

        /* JADX INFO: renamed from: b */
        j f2362b;

        /* JADX INFO: renamed from: c */
        boolean f2363c;

        /* JADX INFO: renamed from: d */
        boolean f2364d;

        /* JADX INFO: renamed from: e */
        int[] f2365e;

        /* JADX INFO: renamed from: f */
        Set f2366f;

        /* JADX INFO: renamed from: g */
        boolean f2367g;

        /* JADX INFO: renamed from: h */
        int f2368h = -16711936;

        /* JADX INFO: renamed from: i */
        int f2369i = 0;

        /* JADX INFO: renamed from: j */
        InterfaceC0026e f2370j = new androidx.emoji2.text.d();

        protected c(h hVar) {
            c0.h.f(hVar, "metadataLoader cannot be null.");
            this.f2361a = hVar;
        }

        protected final h a() {
            return this.f2361a;
        }

        public c b(int i10) {
            this.f2369i = i10;
            return this;
        }
    }

    public static class d implements j {
        @Override // androidx.emoji2.text.e.j
        public androidx.emoji2.text.i a(o oVar) {
            return new p(oVar);
        }
    }

    /* JADX INFO: renamed from: androidx.emoji2.text.e$e */
    public interface InterfaceC0026e {
        boolean a(CharSequence charSequence, int i10, int i11, int i12);
    }

    public static abstract class f {
        public void a(Throwable th) {
        }

        public void b() {
        }
    }

    private static class g implements Runnable {

        /* JADX INFO: renamed from: a */
        private final List f2371a;

        /* JADX INFO: renamed from: b */
        private final Throwable f2372b;

        /* JADX INFO: renamed from: c */
        private final int f2373c;

        g(f fVar, int i10) {
            this(Arrays.asList((f) c0.h.f(fVar, "initCallback cannot be null")), i10, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2371a.size();
            int i10 = 0;
            if (this.f2373c != 1) {
                while (i10 < size) {
                    ((f) this.f2371a.get(i10)).a(this.f2372b);
                    i10++;
                }
            } else {
                while (i10 < size) {
                    ((f) this.f2371a.get(i10)).b();
                    i10++;
                }
            }
        }

        g(Collection collection, int i10) {
            this(collection, i10, null);
        }

        g(Collection collection, int i10, Throwable th) {
            c0.h.f(collection, "initCallbacks cannot be null");
            this.f2371a = new ArrayList(collection);
            this.f2373c = i10;
            this.f2372b = th;
        }
    }

    public interface h {
        void a(i iVar);
    }

    public static abstract class i {
        public abstract void a(Throwable th);

        public abstract void b(m mVar);
    }

    public interface j {
        androidx.emoji2.text.i a(o oVar);
    }

    private e(c cVar) {
        this.f2350h = cVar.f2363c;
        this.f2351i = cVar.f2364d;
        this.f2352j = cVar.f2365e;
        this.f2353k = cVar.f2367g;
        this.f2354l = cVar.f2368h;
        this.f2348f = cVar.f2361a;
        this.f2355m = cVar.f2369i;
        this.f2356n = cVar.f2370j;
        androidx.collection.b bVar = new androidx.collection.b();
        this.f2344b = bVar;
        j jVar = cVar.f2362b;
        this.f2349g = jVar == null ? new d() : jVar;
        Set set = cVar.f2366f;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f2366f);
        }
        this.f2347e = new a(this);
        m();
    }

    public static e c() {
        e eVar;
        synchronized (f2340o) {
            eVar = f2342q;
            c0.h.g(eVar != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return eVar;
    }

    public static boolean f(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        return androidx.emoji2.text.h.b(inputConnection, editable, i10, i11, z10);
    }

    public static boolean g(Editable editable, int i10, KeyEvent keyEvent) {
        return androidx.emoji2.text.h.c(editable, i10, keyEvent);
    }

    public static e h(c cVar) {
        e eVar = f2342q;
        if (eVar == null) {
            synchronized (f2340o) {
                try {
                    eVar = f2342q;
                    if (eVar == null) {
                        eVar = new e(cVar);
                        f2342q = eVar;
                    }
                } finally {
                }
            }
        }
        return eVar;
    }

    public static boolean i() {
        return f2342q != null;
    }

    private boolean k() {
        return e() == 1;
    }

    private void m() {
        this.f2343a.writeLock().lock();
        try {
            if (this.f2355m == 0) {
                this.f2345c = 0;
            }
            this.f2343a.writeLock().unlock();
            if (e() == 0) {
                this.f2347e.a();
            }
        } catch (Throwable th) {
            this.f2343a.writeLock().unlock();
            throw th;
        }
    }

    public int d() {
        return this.f2354l;
    }

    public int e() {
        this.f2343a.readLock().lock();
        try {
            return this.f2345c;
        } finally {
            this.f2343a.readLock().unlock();
        }
    }

    public boolean j() {
        return this.f2353k;
    }

    public void l() {
        c0.h.g(this.f2355m == 1, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (k()) {
            return;
        }
        this.f2343a.writeLock().lock();
        try {
            if (this.f2345c == 0) {
                return;
            }
            this.f2345c = 0;
            this.f2343a.writeLock().unlock();
            this.f2347e.a();
        } finally {
            this.f2343a.writeLock().unlock();
        }
    }

    void n(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f2343a.writeLock().lock();
        try {
            this.f2345c = 2;
            arrayList.addAll(this.f2344b);
            this.f2344b.clear();
            this.f2343a.writeLock().unlock();
            this.f2346d.post(new g(arrayList, this.f2345c, th));
        } catch (Throwable th2) {
            this.f2343a.writeLock().unlock();
            throw th2;
        }
    }

    void o() {
        ArrayList arrayList = new ArrayList();
        this.f2343a.writeLock().lock();
        try {
            this.f2345c = 1;
            arrayList.addAll(this.f2344b);
            this.f2344b.clear();
            this.f2343a.writeLock().unlock();
            this.f2346d.post(new g(arrayList, this.f2345c));
        } catch (Throwable th) {
            this.f2343a.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence p(CharSequence charSequence) {
        return q(charSequence, 0, charSequence == null ? 0 : charSequence.length());
    }

    public CharSequence q(CharSequence charSequence, int i10, int i11) {
        return r(charSequence, i10, i11, Integer.MAX_VALUE);
    }

    public CharSequence r(CharSequence charSequence, int i10, int i11, int i12) {
        return s(charSequence, i10, i11, i12, 0);
    }

    public CharSequence s(CharSequence charSequence, int i10, int i11, int i12, int i13) {
        boolean z10;
        c0.h.g(k(), "Not initialized yet");
        c0.h.d(i10, "start cannot be negative");
        c0.h.d(i11, "end cannot be negative");
        c0.h.d(i12, "maxEmojiCount cannot be negative");
        c0.h.b(i10 <= i11, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        c0.h.b(i10 <= charSequence.length(), "start should be < than charSequence length");
        c0.h.b(i11 <= charSequence.length(), "end should be < than charSequence length");
        if (charSequence.length() == 0 || i10 == i11) {
            return charSequence;
        }
        if (i13 != 1) {
            z10 = i13 != 2 ? this.f2350h : false;
        } else {
            z10 = true;
        }
        return this.f2347e.b(charSequence, i10, i11, i12, z10);
    }

    public void t(f fVar) {
        c0.h.f(fVar, "initCallback cannot be null");
        this.f2343a.writeLock().lock();
        try {
            if (this.f2345c == 1 || this.f2345c == 2) {
                this.f2346d.post(new g(fVar, this.f2345c));
            } else {
                this.f2344b.add(fVar);
            }
            this.f2343a.writeLock().unlock();
        } catch (Throwable th) {
            this.f2343a.writeLock().unlock();
            throw th;
        }
    }

    public void u(f fVar) {
        c0.h.f(fVar, "initCallback cannot be null");
        this.f2343a.writeLock().lock();
        try {
            this.f2344b.remove(fVar);
        } finally {
            this.f2343a.writeLock().unlock();
        }
    }

    public void v(EditorInfo editorInfo) {
        if (!k() || editorInfo == null) {
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        this.f2347e.c(editorInfo);
    }
}
