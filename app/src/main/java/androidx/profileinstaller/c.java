package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.profileinstaller.i;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssetManager f3005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f3006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i.c f3007c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f3009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f3010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f3011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f3012h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d[] f3014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f3015k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3013i = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f3008d = d();

    public c(AssetManager assetManager, Executor executor, i.c cVar, String str, String str2, String str3, File file) {
        this.f3005a = assetManager;
        this.f3006b = executor;
        this.f3007c = cVar;
        this.f3010f = str;
        this.f3011g = str2;
        this.f3012h = str3;
        this.f3009e = file;
    }

    private c b(d[] dVarArr, byte[] bArr) {
        InputStream inputStreamH;
        try {
            inputStreamH = h(this.f3005a, this.f3012h);
        } catch (FileNotFoundException e10) {
            this.f3007c.b(9, e10);
        } catch (IOException e11) {
            this.f3007c.b(7, e11);
        } catch (IllegalStateException e12) {
            this.f3014j = null;
            this.f3007c.b(8, e12);
        }
        if (inputStreamH == null) {
            if (inputStreamH != null) {
                inputStreamH.close();
            }
            return null;
        }
        try {
            this.f3014j = m.r(inputStreamH, m.p(inputStreamH, m.f3035b), bArr, dVarArr);
            inputStreamH.close();
            return this;
        } catch (Throwable th) {
            try {
                inputStreamH.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void c() {
        if (!this.f3013i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    private static byte[] d() {
        return o.f3047a;
    }

    private InputStream f(AssetManager assetManager) {
        try {
            return h(assetManager, this.f3011g);
        } catch (FileNotFoundException e10) {
            this.f3007c.b(6, e10);
            return null;
        } catch (IOException e11) {
            this.f3007c.b(7, e11);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i10, Object obj) {
        this.f3007c.b(i10, obj);
    }

    private InputStream h(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e10) {
            String message = e10.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f3007c.a(5, null);
            }
            return null;
        }
    }

    private d[] j(InputStream inputStream) {
        try {
            try {
                try {
                    try {
                        d[] dVarArrX = m.x(inputStream, m.p(inputStream, m.f3034a), this.f3010f);
                        try {
                            inputStream.close();
                            return dVarArrX;
                        } catch (IOException e10) {
                            this.f3007c.b(7, e10);
                            return dVarArrX;
                        }
                    } catch (IOException e11) {
                        this.f3007c.b(7, e11);
                        inputStream.close();
                        return null;
                    }
                } catch (IllegalStateException e12) {
                    this.f3007c.b(8, e12);
                    inputStream.close();
                    return null;
                }
            } catch (IOException e13) {
                this.f3007c.b(7, e13);
                return null;
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (IOException e14) {
                this.f3007c.b(7, e14);
            }
            throw th;
        }
    }

    private static boolean k() {
        return true;
    }

    private void l(final int i10, final Object obj) {
        this.f3006b.execute(new Runnable() { // from class: androidx.profileinstaller.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f3002a.g(i10, obj);
            }
        });
    }

    public boolean e() {
        if (this.f3008d == null) {
            l(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (!this.f3009e.exists()) {
            try {
                if (!this.f3009e.createNewFile()) {
                    l(4, null);
                    return false;
                }
            } catch (IOException unused) {
                l(4, null);
                return false;
            }
        } else if (!this.f3009e.canWrite()) {
            l(4, null);
            return false;
        }
        this.f3013i = true;
        return true;
    }

    public c i() {
        c cVarB;
        c();
        if (this.f3008d == null) {
            return this;
        }
        InputStream inputStreamF = f(this.f3005a);
        if (inputStreamF != null) {
            this.f3014j = j(inputStreamF);
        }
        d[] dVarArr = this.f3014j;
        return (dVarArr == null || !k() || (cVarB = b(dVarArr, this.f3008d)) == null) ? this : cVarB;
    }

    public c m() {
        ByteArrayOutputStream byteArrayOutputStream;
        d[] dVarArr = this.f3014j;
        byte[] bArr = this.f3008d;
        if (dVarArr != null && bArr != null) {
            c();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (IOException e10) {
                this.f3007c.b(7, e10);
            } catch (IllegalStateException e11) {
                this.f3007c.b(8, e11);
            }
            try {
                m.F(byteArrayOutputStream, bArr);
                if (!m.C(byteArrayOutputStream, bArr, dVarArr)) {
                    this.f3007c.b(5, null);
                    this.f3014j = null;
                    byteArrayOutputStream.close();
                    return this;
                }
                this.f3015k = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                this.f3014j = null;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return this;
    }

    public boolean n() {
        byte[] bArr = this.f3015k;
        if (bArr == null) {
            return false;
        }
        c();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f3009e);
                    try {
                        FileChannel channel = fileOutputStream.getChannel();
                        try {
                            FileLock fileLockTryLock = channel.tryLock();
                            try {
                                e.l(byteArrayInputStream, fileOutputStream, fileLockTryLock);
                                l(1, null);
                                if (fileLockTryLock != null) {
                                    fileLockTryLock.close();
                                }
                                channel.close();
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                return true;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (FileNotFoundException e10) {
                l(6, e10);
                return false;
            } catch (IOException e11) {
                l(7, e11);
                return false;
            }
        } finally {
            this.f3015k = null;
            this.f3014j = null;
        }
    }
}
