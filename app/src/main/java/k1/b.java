package k1;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.airbnb.lottie.c;
import com.airbnb.lottie.j0;
import java.io.IOException;
import java.util.Map;
import r1.d;
import r1.j;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f12890d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f12892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f12893c;

    public b(Drawable.Callback callback, String str, c cVar, Map map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f12892b = str;
        } else {
            this.f12892b = str + '/';
        }
        this.f12893c = map;
        d(cVar);
        if (callback instanceof View) {
            this.f12891a = ((View) callback).getContext().getApplicationContext();
        } else {
            this.f12891a = null;
        }
    }

    private Bitmap c(String str, Bitmap bitmap) {
        synchronized (f12890d) {
            ((j0) this.f12893c.get(str)).g(bitmap);
        }
        return bitmap;
    }

    public Bitmap a(String str) {
        j0 j0Var = (j0) this.f12893c.get(str);
        if (j0Var == null) {
            return null;
        }
        Bitmap bitmapB = j0Var.b();
        if (bitmapB != null) {
            return bitmapB;
        }
        Context context = this.f12891a;
        if (context == null) {
            return null;
        }
        String strC = j0Var.c();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                return c(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e10) {
                d.d("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.f12892b)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.f12892b + strC), null, options);
                if (bitmapDecodeStream != null) {
                    return c(str, j.l(bitmapDecodeStream, j0Var.f(), j0Var.d()));
                }
                d.c("Decoded image `" + str + "` is null.");
                return null;
            } catch (IllegalArgumentException e11) {
                d.d("Unable to decode image `" + str + "`.", e11);
                return null;
            }
        } catch (IOException e12) {
            d.d("Unable to open asset.", e12);
            return null;
        }
    }

    public boolean b(Context context) {
        if (this.f12891a instanceof Application) {
            context = context.getApplicationContext();
        }
        return context == this.f12891a;
    }

    public void d(c cVar) {
    }
}
