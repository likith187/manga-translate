package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f7769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ParcelFileDescriptor f7770b;

    public a(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f7769a = uri;
        this.f7770b = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.common.internal.c.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.f7770b;
        Bitmap bitmapDecodeFileDescriptor = null;
        boolean z10 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e10) {
                Log.e("ImageManager", "OOM while loading bitmap for uri: ".concat(String.valueOf(this.f7769a)), e10);
                z10 = true;
            }
            try {
                this.f7770b.close();
            } catch (IOException e11) {
                Log.e("ImageManager", "closed failed", e11);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager.b(null).post(new b(null, this.f7769a, bitmapDecodeFileDescriptor, z10, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(this.f7769a)));
        }
    }
}
