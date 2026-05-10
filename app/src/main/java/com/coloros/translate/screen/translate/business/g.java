package com.coloros.translate.screen.translate.business;

import android.graphics.Bitmap;
import com.coloros.translate.utils.c0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f5522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap f5523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bitmap f5524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f5526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f5527f;

    public g(m viewRequest, Bitmap originBitmap, Bitmap bitmap, int i10, float f10) {
        r.e(viewRequest, "viewRequest");
        r.e(originBitmap, "originBitmap");
        this.f5522a = viewRequest;
        this.f5523b = originBitmap;
        this.f5524c = bitmap;
        this.f5525d = i10;
        this.f5526e = f10;
        this.f5527f = new AtomicBoolean(false);
    }

    public final Bitmap a() {
        if (!this.f5527f.compareAndSet(false, true)) {
            c0.f7098a.q("PresenterRequest", "copyAndRecycle:isRecycled()");
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.f5523b);
        r.d(bitmapCreateBitmap, "createBitmap(...)");
        if (!this.f5523b.isRecycled()) {
            this.f5523b.recycle();
        }
        Bitmap bitmap = this.f5524c;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f5524c.recycle();
        }
        return bitmapCreateBitmap;
    }

    public final Bitmap b() {
        return this.f5523b;
    }

    public final float c() {
        return this.f5526e;
    }

    public final Bitmap d() {
        return this.f5524c;
    }

    public final m e() {
        return this.f5522a;
    }

    public final boolean f() {
        return this.f5527f.get();
    }

    public final void g() {
        if (!this.f5527f.compareAndSet(false, true)) {
            c0.f7098a.q("PresenterRequest", "recycle:isRecycled()");
            return;
        }
        if (!this.f5523b.isRecycled()) {
            this.f5523b.recycle();
        }
        Bitmap bitmap = this.f5524c;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f5524c.recycle();
    }

    public String toString() {
        return "PresenterRequest [" + this.f5522a + ", retry " + this.f5525d + ", scale " + this.f5526e + "]";
    }
}
