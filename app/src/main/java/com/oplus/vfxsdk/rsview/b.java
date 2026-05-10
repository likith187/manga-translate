package com.oplus.vfxsdk.rsview;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11413a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bitmap a(Bitmap oldBm, boolean z10) {
            r.e(oldBm, "oldBm");
            Matrix matrix = new Matrix();
            matrix.setScale(1.0f, -1.0f);
            matrix.postTranslate(0.0f, -oldBm.getHeight());
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(oldBm, 0, 0, oldBm.getWidth(), oldBm.getHeight(), matrix, true);
            r.d(bitmapCreateBitmap, "createBitmap(...)");
            if (z10) {
                oldBm.recycle();
            }
            return bitmapCreateBitmap;
        }

        private a() {
        }
    }
}
