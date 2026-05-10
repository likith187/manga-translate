package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import androidx.appcompat.app.t;
import com.google.android.gms.common.images.ImageManager;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f7771a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f7772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CountDownLatch f7773c;

    public b(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z10, CountDownLatch countDownLatch) {
        this.f7771a = uri;
        this.f7772b = bitmap;
        this.f7773c = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.common.internal.c.a("OnBitmapLoadedRunnable must be executed in the main thread");
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) ImageManager.g(null).remove(this.f7771a);
        if (imageReceiver != null) {
            ArrayList arrayList = imageReceiver.f7764b;
            if (arrayList.size() > 0) {
                t.a(arrayList.get(0));
                if (this.f7772b != null) {
                    ImageManager.a(null);
                    throw null;
                }
                ImageManager.f(null).put(this.f7771a, Long.valueOf(SystemClock.elapsedRealtime()));
                ImageManager.a(null);
                ImageManager.c(null);
                throw null;
            }
        }
        this.f7773c.countDown();
        synchronized (ImageManager.f7761a) {
            ImageManager.f7762b.remove(this.f7771a);
        }
    }
}
