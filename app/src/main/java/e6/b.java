package e6;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.oplus.anim.g0;
import com.oplus.anim.j0;
import java.io.IOException;
import java.util.Map;
import l6.e;
import l6.h;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f11748d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11751c;

    public b(Drawable.Callback callback, String str, j0 j0Var, Map map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.f11750b = str;
        } else {
            this.f11750b = str + '/';
        }
        this.f11751c = map;
        d(j0Var);
        if (callback instanceof View) {
            this.f11749a = ((View) callback).getContext().getApplicationContext();
        } else {
            e.c("EffectiveAnimationDrawable must be inside of a view for images to work.");
            this.f11749a = null;
        }
    }

    private Bitmap c(String str, Bitmap bitmap) {
        synchronized (f11748d) {
            e.c("putBitmap key = " + str);
            ((g0) this.f11751c.get(str)).f(bitmap);
        }
        return bitmap;
    }

    public Bitmap a(String str) {
        g0 g0Var = (g0) this.f11751c.get(str);
        if (g0Var == null) {
            return null;
        }
        Bitmap bitmapA = g0Var.a();
        if (bitmapA != null) {
            return bitmapA;
        }
        Context context = this.f11749a;
        if (context == null) {
            return null;
        }
        String strB = g0Var.b();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (strB.startsWith("data:") && strB.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(strB.substring(strB.indexOf(44) + 1), 0);
                return c(str, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e10) {
                e.d("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.f11750b)) {
                e.c("Set non folder.");
                return null;
            }
            e.c("bitmapForId filename = " + strB + ";imagesFolder = " + this.f11750b);
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getAssets().open(this.f11750b + strB), null, options);
                if (bitmapDecodeStream != null) {
                    return c(str, h.l(bitmapDecodeStream, g0Var.e(), g0Var.c()));
                }
                e.c("Decoded image `" + str + "` is null.");
                return null;
            } catch (IllegalArgumentException e11) {
                e.d("Unable to decode image `" + str + "`.", e11);
                return null;
            }
        } catch (IOException e12) {
            e.d("Unable to open asset.", e12);
            return null;
        }
    }

    public boolean b(Context context) {
        return (context == null && this.f11749a == null) || this.f11749a.equals(context);
    }

    public void d(j0 j0Var) {
    }
}
