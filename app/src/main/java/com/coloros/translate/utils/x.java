package com.coloros.translate.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.coloros.translate.utils.c0;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class x {
    public static final x INSTANCE = new x();

    private x() {
    }

    private final void b(Context context) {
        c0.a aVar = c0.f7098a;
        aVar.d("FileManager", "openWithFileManager");
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS);
        if (!externalStoragePublicDirectory.exists()) {
            aVar.e("FileManager", "openWithFileManager externalStoragePublicDirectory not exist");
            return;
        }
        String absolutePath = externalStoragePublicDirectory.getAbsolutePath();
        Intent intent = new Intent();
        intent.setAction("oppo.filemanager.intent.action.BROWSER_FILE");
        intent.putExtra("CurrentDir", absolutePath).setPackage("com.coloros.filemanager");
        if (context != null) {
            context.startActivity(intent);
        }
    }

    public final void a(Context context, Uri uri) {
        Object objM59constructorimpl;
        c0.f7098a.d("FileManager", "openDocument");
        try {
            r.a aVar = n8.r.Companion;
            INSTANCE.b(context);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("FileManager", "openDocument:" + thM62exceptionOrNullimpl.getMessage());
            INSTANCE.c(context, uri);
        }
    }

    public final void c(Context context, Uri uri) {
        Object objM59constructorimpl;
        c0.f7098a.d("FileManager", "openWithMediaStore");
        try {
            r.a aVar = n8.r.Companion;
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("text/plain");
            intent.putExtra("android.provider.extra.INITIAL_URI", uri);
            kotlin.jvm.internal.r.c(context, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context).startActivityForResult(intent, 65535);
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("FileManager", "openWithMediaStore " + thM62exceptionOrNullimpl.getMessage());
        }
    }

    public final void d(Context context, Uri uri, String fileContent) throws IOException {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(uri, "uri");
        kotlin.jvm.internal.r.e(fileContent, "fileContent");
        c0.f7098a.d("FileManager", "writeFileWithUri");
        OutputStream outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(uri);
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStreamOpenOutputStream, "UTF-8"));
            bufferedWriter.write(fileContent);
            bufferedWriter.flush();
            bufferedWriter.close();
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.close();
                n8.h0 h0Var = n8.h0.INSTANCE;
            }
            kotlin.io.c.a(outputStreamOpenOutputStream, null);
        } finally {
        }
    }
}
