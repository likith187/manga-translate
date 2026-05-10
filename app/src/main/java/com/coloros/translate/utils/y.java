package com.coloros.translate.utils;

import android.content.Context;
import android.text.TextUtils;
import com.coloros.translate.utils.c0;
import com.oplus.backup.sdk.common.utils.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    public static final y INSTANCE = new y();

    private y() {
    }

    public static final boolean a(File file) {
        kotlin.jvm.internal.r.e(file, "file");
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.isDirectory()) {
            if (!parentFile.delete()) {
                c0.f7098a.q(FileUtils.TAG, "createNewFile delete fail!" + file);
            }
            if (!parentFile.mkdirs()) {
                c0.f7098a.q(FileUtils.TAG, "createNewFile mkdirs fail!" + file);
            }
        }
        return file.createNewFile();
    }

    public static final boolean b(File dir) {
        File[] fileArrListFiles;
        kotlin.jvm.internal.r.e(dir, "dir");
        if (dir.exists() && dir.isDirectory() && (fileArrListFiles = dir.listFiles()) != null) {
            for (File file : fileArrListFiles) {
                kotlin.jvm.internal.r.b(file);
                b(file);
            }
        }
        return c(dir);
    }

    public static final boolean c(File file) {
        kotlin.jvm.internal.r.e(file, "file");
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }

    public static final boolean d(String str) {
        return c(new File(str));
    }

    public static final void e(File file, String fileName) {
        kotlin.jvm.internal.r.e(fileName, "fileName");
        if (file == null || !file.exists()) {
            return;
        }
        if (!file.isDirectory()) {
            if (kotlin.jvm.internal.r.a(file.getName(), fileName)) {
                return;
            }
            file.delete();
            return;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                e(file2, fileName);
            }
        }
    }

    public static final void f(String str, String fileName) {
        kotlin.jvm.internal.r.e(fileName, "fileName");
        e(new File(str), fileName);
    }

    public static final File g(Context context, String path) {
        File file;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(path, "path");
        try {
            file = context.getExternalFilesDir(path);
            try {
                c0.f7098a.d(FileUtils.TAG, "getExternalFilesDir: " + file);
            } catch (Exception e10) {
                e = e10;
                c0.f7098a.e(FileUtils.TAG, "getExternalFilesDir error:" + e);
            }
        } catch (Exception e11) {
            e = e11;
            file = null;
        }
        if (file == null) {
            try {
                File filesDir = context.getFilesDir();
                if (filesDir != null) {
                    file = new File(filesDir.getAbsolutePath() + File.separatorChar + path);
                }
                c0.f7098a.q(FileUtils.TAG, "getFilesDir is wrong:" + (file == null ? AbstractJsonLexerKt.NULL : file.getPath()));
            } catch (Exception e12) {
                c0.f7098a.e(FileUtils.TAG, "getFilesDir error:" + e12);
            }
        }
        return file;
    }

    public static final long h(File file) throws Throwable {
        FileInputStream fileInputStream;
        IOException e10;
        c0.a aVar;
        String message;
        StringBuilder sb;
        long jAvailable = 0;
        if (file != null && file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return 0L;
            }
            int length = fileArrListFiles.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (fileArrListFiles[i10].isDirectory()) {
                    jAvailable += h(fileArrListFiles[i10]);
                } else {
                    FileInputStream fileInputStream2 = null;
                    try {
                        fileInputStream = new FileInputStream(fileArrListFiles[i10]);
                    } catch (IOException e11) {
                        fileInputStream = null;
                        e10 = e11;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        try {
                            jAvailable += (long) fileInputStream.available();
                            try {
                                fileInputStream.close();
                            } catch (IOException e12) {
                                aVar = c0.f7098a;
                                message = e12.getMessage();
                                sb = new StringBuilder();
                                sb.append("getFileSizes:");
                                sb.append(message);
                                aVar.e(FileUtils.TAG, sb.toString());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream2 = fileInputStream;
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e13) {
                                    c0.f7098a.e(FileUtils.TAG, "getFileSizes:" + e13.getMessage());
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e14) {
                        e10 = e14;
                        c0.f7098a.e(FileUtils.TAG, "getFileSizes IOException " + e10.getMessage());
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e15) {
                                aVar = c0.f7098a;
                                message = e15.getMessage();
                                sb = new StringBuilder();
                                sb.append("getFileSizes:");
                                sb.append(message);
                                aVar.e(FileUtils.TAG, sb.toString());
                            }
                        }
                    }
                }
            }
        }
        return jAvailable;
    }

    public static final boolean i(File file) {
        String[] list;
        kotlin.jvm.internal.r.e(file, "file");
        return !file.exists() || (file.isDirectory() && ((list = file.list()) == null || list.length == 0)) || (file.isFile() && ((int) file.length()) == 0);
    }

    public static final boolean j(String str) {
        try {
            return k(str, false);
        } catch (IOException e10) {
            c0.f7098a.d(FileUtils.TAG, "mkdirs e:" + e10);
            return false;
        }
    }

    public static final boolean k(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (file.exists() && !file.isDirectory() && !file.delete()) {
            c0.f7098a.q(FileUtils.TAG, "file delete failed");
        }
        boolean zMkdirs = file.mkdirs();
        c0.f7098a.d(FileUtils.TAG, "mkdirs file:" + file + " result:" + zMkdirs);
        if (z10) {
            a(new File(str, ".nomedia"));
        }
        return zMkdirs;
    }
}
