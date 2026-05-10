package com.coloros.translate.engine.asr.voicetranslate;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.coloros.translate.utils.c0;
import com.coloros.translate.utils.y;
import com.oplus.aiunit.core.utils.AuthUtil;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final l INSTANCE = new l();

    private l() {
    }

    public static final File a(String filePath, String fileName) throws IOException {
        r.e(filePath, "filePath");
        r.e(fileName, "fileName");
        c0.f7098a.d("VoiceTranslateUtils", "root: " + filePath);
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getAbsolutePath(), fileName);
        if (!file2.exists()) {
            file2.createNewFile();
        }
        return file2;
    }

    public static final void b(Context context, String str) {
        Object objM59constructorimpl;
        r.e(context, "context");
        c0.f7098a.d("VoiceTranslateUtils", "deleteAudioFile");
        try {
            r.a aVar = n8.r.Companion;
            if (str == null) {
                str = AuthUtil.AUTH_STYLE_INNER;
            }
            y.d((context.getFilesDir().getAbsolutePath() + "/translation_audios") + "/" + str + ".mp3");
            i.b(context, str);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("VoiceTranslateUtils", "deleteAudioFile error: " + thM62exceptionOrNullimpl);
        }
    }

    public static final void c(Context context, String str) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.d("VoiceTranslateUtils", "deleteOtherAudioFile");
        try {
            r.a aVar = n8.r.Companion;
            if (str == null) {
                str = AuthUtil.AUTH_STYLE_INNER;
            }
            y.f(context.getFilesDir().getAbsolutePath() + "/translation_audios", str + ".mp3");
            i.a(context, str);
            objM59constructorimpl = n8.r.m59constructorimpl(h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.q("VoiceTranslateUtils", "deleteOtherAudioFile error: " + thM62exceptionOrNullimpl);
        }
    }

    public static final String d(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        return context.getFilesDir().getAbsolutePath() + "/translation_audios";
    }

    public static final Uri e(Context context, File file, String packageName) {
        Object objM59constructorimpl;
        Uri uriH;
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(file, "file");
        kotlin.jvm.internal.r.e(packageName, "packageName");
        try {
            r.a aVar = n8.r.Companion;
            uriH = FileProvider.h(context, "com.coloros.translate.fileprovider", file);
            c0.f7098a.d("VoiceTranslateUtils", "shareFileByUri,uri = " + uriH + ", packageName = " + packageName);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(s.a(th));
        }
        if (packageName.length() > 0) {
            context.grantUriPermission(packageName, uriH, 65);
            return uriH;
        }
        objM59constructorimpl = n8.r.m59constructorimpl(uriH);
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl == null) {
            return null;
        }
        c0.f7098a.q("VoiceTranslateUtils", "shareFileByUri to " + packageName + " error: " + thM62exceptionOrNullimpl);
        return null;
    }
}
