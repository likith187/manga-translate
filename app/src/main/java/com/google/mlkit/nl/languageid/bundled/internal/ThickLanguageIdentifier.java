package com.google.mlkit.nl.languageid.bundled.internal;

import android.content.Context;
import com.google.android.gms.common.internal.k;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import j5.b;
import java.nio.MappedByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ThickLanguageIdentifier implements b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f10764c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f10765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f10766b;

    ThickLanguageIdentifier(Context context, h5.b bVar) {
        this.f10765a = context;
    }

    public static synchronized void c() {
        if (f10764c) {
            return;
        }
        try {
            System.loadLibrary("language_id_l2c_jni");
            f10764c = true;
        } catch (UnsatisfiedLinkError e10) {
            throw new b5.a("Couldn't load language identification library.", 13, e10);
        }
    }

    private native void nativeDestroy(long j10);

    private native IdentifiedLanguage[] nativeIdentifyPossibleLanguages(long j10, byte[] bArr, float f10);

    private native long nativeInitFromBuffer(MappedByteBuffer mappedByteBuffer, long j10);

    /* JADX WARN: Removed duplicated region for block: B:42:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // j5.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() throws b5.a {
        /*
            r12 = this;
            long r0 = r12.f10766b
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto La
            r0 = 1
            goto Lb
        La:
            r0 = 0
        Lb:
            com.google.android.gms.common.internal.k.j(r0)
            c()
            r0 = 13
            android.content.Context r1 = r12.f10765a     // Catch: java.io.IOException -> L50
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch: java.io.IOException -> L50
            java.lang.String r4 = "tflite_langid.tflite.jpg"
            android.content.res.AssetFileDescriptor r1 = r1.openFd(r4)     // Catch: java.io.IOException -> L50
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L52
            java.io.FileDescriptor r5 = r1.getFileDescriptor()     // Catch: java.lang.Throwable -> L52
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L52
            java.nio.channels.FileChannel r4 = r4.getChannel()     // Catch: java.lang.Throwable -> L52
            java.nio.channels.FileChannel$MapMode r7 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L5c
            long r8 = r1.getStartOffset()     // Catch: java.lang.Throwable -> L5c
            long r10 = r1.getDeclaredLength()     // Catch: java.lang.Throwable -> L5c
            r6 = r4
            java.nio.MappedByteBuffer r5 = r6.map(r7, r8, r10)     // Catch: java.lang.Throwable -> L5c
            long r6 = r1.getDeclaredLength()     // Catch: java.lang.Throwable -> L5c
            long r5 = r12.nativeInitFromBuffer(r5, r6)     // Catch: java.lang.Throwable -> L5c
            r12.f10766b = r5     // Catch: java.lang.Throwable -> L5c
            int r12 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r12 == 0) goto L54
            r4.close()     // Catch: java.lang.Throwable -> L52
            r1.close()     // Catch: java.io.IOException -> L50
            return
        L50:
            r12 = move-exception
            goto L73
        L52:
            r12 = move-exception
            goto L68
        L54:
            b5.a r12 = new b5.a     // Catch: java.lang.Throwable -> L5c
            java.lang.String r2 = "Couldn't load language identification model"
            r12.<init>(r2, r0)     // Catch: java.lang.Throwable -> L5c
            throw r12     // Catch: java.lang.Throwable -> L5c
        L5c:
            r12 = move-exception
            if (r4 == 0) goto L67
            r4.close()     // Catch: java.lang.Throwable -> L63
            goto L67
        L63:
            r2 = move-exception
            r12.addSuppressed(r2)     // Catch: java.lang.Throwable -> L52
        L67:
            throw r12     // Catch: java.lang.Throwable -> L52
        L68:
            if (r1 == 0) goto L72
            r1.close()     // Catch: java.lang.Throwable -> L6e
            goto L72
        L6e:
            r1 = move-exception
            r12.addSuppressed(r1)     // Catch: java.io.IOException -> L50
        L72:
            throw r12     // Catch: java.io.IOException -> L50
        L73:
            b5.a r1 = new b5.a
            java.lang.String r2 = "Couldn't open language identification model file"
            r1.<init>(r2, r0, r12)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.nl.languageid.bundled.internal.ThickLanguageIdentifier.a():void");
    }

    @Override // j5.b
    public final List b(String str, float f10) {
        k.j(this.f10766b != 0);
        IdentifiedLanguage[] identifiedLanguageArrNativeIdentifyPossibleLanguages = nativeIdentifyPossibleLanguages(this.f10766b, str.getBytes(StandardCharsets.UTF_8), f10);
        ArrayList arrayList = new ArrayList();
        for (IdentifiedLanguage identifiedLanguage : identifiedLanguageArrNativeIdentifyPossibleLanguages) {
            arrayList.add(new IdentifiedLanguage(identifiedLanguage.b(), identifiedLanguage.a()));
        }
        return arrayList;
    }

    @Override // j5.b
    public final void release() {
        long j10 = this.f10766b;
        if (j10 == 0) {
            return;
        }
        nativeDestroy(j10);
        this.f10766b = 0L;
    }
}
