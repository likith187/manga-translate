package j6;

import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f12768a;

    public g(d dVar) {
        this.f12768a = dVar;
    }

    private static String b(String str, f fVar, boolean z10) {
        StringBuilder sb = new StringBuilder();
        sb.append("effective_anim_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        sb.append(z10 ? fVar.tempExtension() : fVar.extension);
        return sb.toString();
    }

    private File c(String str) {
        File file = new File(d(), b(str, f.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(d(), b(str, f.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private File d() {
        File fileA = this.f12768a.a();
        if (fileA.isFile()) {
            fileA.delete();
        }
        if (!fileA.exists()) {
            fileA.mkdirs();
        }
        return fileA;
    }

    Pair a(String str) {
        try {
            File fileC = c(str);
            if (fileC == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(fileC);
            f fVar = l6.h.m(fileC.getAbsolutePath(), ".zip") ? f.ZIP : f.JSON;
            l6.e.a("Cache hit for " + str + " at " + fileC.getAbsolutePath());
            return new Pair(fVar, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    void e(String str, f fVar) {
        File file = new File(d(), b(str, fVar, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        l6.e.a("Copying temp file to real file (" + file2 + ")");
        if (zRenameTo) {
            return;
        }
        l6.e.c("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
    }

    File f(String str, InputStream inputStream, f fVar) throws IOException {
        File file = new File(d(), b(str, fVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i10);
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }
}
