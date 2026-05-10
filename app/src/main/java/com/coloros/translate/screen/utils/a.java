package com.coloros.translate.screen.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.coloros.translate.utils.c0;
import java.io.ByteArrayOutputStream;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a INSTANCE = new a();

    private a() {
    }

    public static final Bitmap a(Bitmap originalBitmap, int i10) {
        kotlin.jvm.internal.r.e(originalBitmap, "originalBitmap");
        try {
            r.a aVar = n8.r.Companion;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            originalBitmap.compress(Bitmap.CompressFormat.JPEG, i10, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
            if (thM62exceptionOrNullimpl == null) {
                return null;
            }
            c0.f7098a.e("BitmapUtils", "[compressBitmap] error: " + thM62exceptionOrNullimpl);
            return null;
        }
    }

    public static final n8.q b(Bitmap bitmap) {
        Object objM59constructorimpl;
        kotlin.jvm.internal.r.e(bitmap, "bitmap");
        float width = bitmap.getWidth();
        Float fValueOf = Float.valueOf(1.0f);
        if (width > 2048.0f || bitmap.getHeight() > 2048.0f) {
            c0.f7098a.d("BitmapUtils", "compressBitmap, large image");
            try {
                r.a aVar = n8.r.Companion;
                float fMax = 2048.0f / Math.max(bitmap.getWidth(), bitmap.getHeight());
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMax), (int) (bitmap.getHeight() * fMax), true);
                kotlin.jvm.internal.r.d(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
                return new n8.q(Float.valueOf(fMax), bitmapCreateScaledBitmap);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(n8.r.m59constructorimpl(n8.s.a(th)));
                if (thM62exceptionOrNullimpl != null) {
                    c0.f7098a.f("BitmapUtils", "compressBitmap, error", thM62exceptionOrNullimpl);
                }
            }
        } else {
            c0.f7098a.d("BitmapUtils", "compressBitmap, area");
            try {
                r.a aVar3 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(new n8.q(fValueOf, bitmap));
            } catch (Throwable th2) {
                r.a aVar4 = n8.r.Companion;
                objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th2));
            }
            Throwable thM62exceptionOrNullimpl2 = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
            if (thM62exceptionOrNullimpl2 != null) {
                c0.f7098a.f("BitmapUtils", "compressBitmap, error", thM62exceptionOrNullimpl2);
            }
        }
        return new n8.q(fValueOf, null);
    }
}
