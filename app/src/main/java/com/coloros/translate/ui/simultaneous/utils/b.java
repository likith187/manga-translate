package com.coloros.translate.ui.simultaneous.utils;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.StatFs;
import com.coloros.translate.TranslationApplication;
import com.coloros.translate.utils.c0;
import com.oplus.os.OplusUsbEnvironment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import n8.h0;
import n8.q;
import n8.r;
import n8.s;
import n8.w;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final b INSTANCE = new b();

    private b() {
    }

    private static final boolean a(ParcelFileDescriptor parcelFileDescriptor, File file) {
        Object objM59constructorimpl;
        FileChannel fileChannel;
        try {
            r.a aVar = r.Companion;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (file.exists()) {
                file.deleteOnExit();
            }
            FileChannel channel = null;
            try {
                FileChannel channel2 = new FileInputStream(parcelFileDescriptor.getFileDescriptor()).getChannel();
                try {
                    channel = new FileOutputStream(file).getChannel();
                    channel.transferFrom(channel2, 0L, channel2.size());
                    channel2.close();
                    channel.close();
                    c0.f7098a.d("RecordFileUtils", "拷贝时间：" + (System.currentTimeMillis() - jCurrentTimeMillis));
                    objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
                } catch (Throwable th) {
                    th = th;
                    FileChannel fileChannel2 = channel;
                    channel = channel2;
                    fileChannel = fileChannel2;
                    if (channel != null) {
                        channel.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileChannel = null;
            }
        } catch (Throwable th3) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th3));
        }
        if (r.m62exceptionOrNullimpl(objM59constructorimpl) == null) {
            return true;
        }
        c0.f7098a.e("RecordFileUtils", "copyFileUsingFileChannels error：");
        return false;
    }

    public static final q b(Context context, String filePath) {
        Object objM59constructorimpl;
        Object objM59constructorimpl2;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(filePath, "filePath");
        try {
            r.a aVar = r.Companion;
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        if (new StatFs(OplusUsbEnvironment.getInternalSdDirectory(TranslationApplication.f4754b.a()).getAbsolutePath()).getAvailableBytes() < 104857600) {
            c0.f7098a.q("RecordFileUtils", "copyMp3File: no space left on device");
            return null;
        }
        if (filePath.length() > 0) {
            Uri uri = Uri.parse(filePath);
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            if (parcelFileDescriptorOpenFileDescriptor != null) {
                try {
                    String path = uri.getPath();
                    kotlin.jvm.internal.r.b(path);
                    String path2 = uri.getPath();
                    kotlin.jvm.internal.r.b(path2);
                    String strSubstring = path.substring(kotlin.text.r.c0(path2, "/", 0, false, 6, null));
                    kotlin.jvm.internal.r.d(strSubstring, "substring(...)");
                    c0.a aVar3 = c0.f7098a;
                    aVar3.d("RecordFileUtils", "copyMp3File:" + strSubstring);
                    File file = new File(d(strSubstring));
                    kotlin.jvm.internal.r.b(parcelFileDescriptorOpenFileDescriptor);
                    if (a(parcelFileDescriptorOpenFileDescriptor, file) && file.exists()) {
                        aVar3.e("RecordFileUtils", "copyMp3File success");
                        try {
                            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                            mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
                            String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
                            j = strExtractMetadata != null ? Long.parseLong(strExtractMetadata) : 0L;
                            mediaMetadataRetriever.release();
                            aVar3.d("RecordFileUtils", "getDuration " + j);
                            objM59constructorimpl2 = r.m59constructorimpl(h0.INSTANCE);
                        } catch (Throwable th2) {
                            r.a aVar4 = r.Companion;
                            objM59constructorimpl2 = r.m59constructorimpl(s.a(th2));
                        }
                        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl2);
                        if (thM62exceptionOrNullimpl != null) {
                            c0.f7098a.e("RecordFileUtils", "getDuration " + thM62exceptionOrNullimpl.getMessage());
                        }
                        q qVarA = w.a(file, Long.valueOf(j / 1000));
                        kotlin.io.c.a(parcelFileDescriptorOpenFileDescriptor, null);
                        return qVarA;
                    }
                    h0 h0Var = h0.INSTANCE;
                } finally {
                }
                r.a aVar22 = r.Companion;
                objM59constructorimpl = r.m59constructorimpl(s.a(th));
            }
            kotlin.io.c.a(parcelFileDescriptorOpenFileDescriptor, null);
        }
        objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        Throwable thM62exceptionOrNullimpl2 = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl2 != null) {
            c0.f7098a.e("RecordFileUtils", "copyMp3File error：" + thM62exceptionOrNullimpl2.getMessage());
        }
        return null;
    }

    public static /* synthetic */ q c(Context context, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = TranslationApplication.f4754b.a();
        }
        return b(context, str);
    }

    private static final String d(String str) throws IOException {
        File file = new File(TranslationApplication.f4754b.a().getFilesDir(), "/audios/");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        if (!file2.exists()) {
            file2.createNewFile();
        }
        String absolutePath = file2.getAbsolutePath();
        kotlin.jvm.internal.r.b(absolutePath);
        return absolutePath;
    }

    public static final void e(String path) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(path, "path");
        if (path.length() <= 0) {
            c0.f7098a.e("RecordFileUtils", "deleteRecordingFile -> path is empty");
            return;
        }
        File file = new File(path);
        try {
            r.a aVar = r.Companion;
            if (!file.exists()) {
                c0.f7098a.e("RecordFileUtils", "deleteRecording -> file not exists");
            } else if (file.delete()) {
                c0.f7098a.q("RecordFileUtils", "deleteRecording -> file deleted successfully");
            } else {
                c0.f7098a.e("RecordFileUtils", "deleteRecording -> file deletion failed");
            }
            objM59constructorimpl = r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = r.Companion;
            objM59constructorimpl = r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("RecordFileUtils", "deleteRecordingFile -> fail:" + thM62exceptionOrNullimpl);
        }
    }

    public static final File f() {
        return new File(TranslationApplication.f4754b.a().getFilesDir(), "/audios/");
    }
}
