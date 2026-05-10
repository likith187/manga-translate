package androidx.room;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes.dex */
class l implements s0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f3595c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s0.c f3597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f3598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3599g;

    l(Context context, String str, File file, int i10, s0.c cVar) {
        this.f3593a = context;
        this.f3594b = str;
        this.f3595c = file;
        this.f3596d = i10;
        this.f3597e = cVar;
    }

    private void e(File file) throws IOException {
        ReadableByteChannel channel;
        if (this.f3594b != null) {
            channel = Channels.newChannel(this.f3593a.getAssets().open(this.f3594b));
        } else {
            if (this.f3595c == null) {
                throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
            }
            channel = new FileInputStream(this.f3595c).getChannel();
        }
        File fileCreateTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f3593a.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        p0.d.a(channel, new FileOutputStream(fileCreateTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        if (fileCreateTempFile.renameTo(file)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    private void g() {
        String strD = d();
        File databasePath = this.f3593a.getDatabasePath(strD);
        a aVar = this.f3598f;
        p0.a aVar2 = new p0.a(strD, this.f3593a.getFilesDir(), aVar == null || aVar.f3495j);
        try {
            aVar2.b();
            if (!databasePath.exists()) {
                try {
                    e(databasePath);
                    aVar2.c();
                    return;
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to copy database file.", e10);
                }
            }
            if (this.f3598f == null) {
                aVar2.c();
                return;
            }
            try {
                int iC = p0.c.c(databasePath);
                int i10 = this.f3596d;
                if (iC == i10) {
                    aVar2.c();
                    return;
                }
                if (this.f3598f.a(iC, i10)) {
                    aVar2.c();
                    return;
                }
                if (this.f3593a.deleteDatabase(strD)) {
                    try {
                        e(databasePath);
                    } catch (IOException e11) {
                        Log.w("ROOM", "Unable to copy database file.", e11);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + strD + ") for a copy destructive migration.");
                }
                aVar2.c();
                return;
            } catch (IOException e12) {
                Log.w("ROOM", "Unable to read database version.", e12);
                aVar2.c();
                return;
            }
        } catch (Throwable th) {
            aVar2.c();
            throw th;
        }
        aVar2.c();
        throw th;
    }

    @Override // s0.c
    public void a(boolean z10) {
        this.f3597e.a(z10);
    }

    @Override // s0.c
    public synchronized s0.b b() {
        try {
            if (!this.f3599g) {
                g();
                this.f3599g = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f3597e.b();
    }

    @Override // s0.c
    public synchronized s0.b c() {
        try {
            if (!this.f3599g) {
                g();
                this.f3599g = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f3597e.c();
    }

    @Override // s0.c
    public String d() {
        return this.f3597e.d();
    }

    void f(a aVar) {
        this.f3598f = aVar;
    }
}
