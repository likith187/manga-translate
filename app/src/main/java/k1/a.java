package k1;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import l1.c;
import l1.i;
import r1.d;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AssetManager f12888d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f12885a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f12886b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f12887c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12889e = ".ttf";

    public a(Drawable.Callback callback, com.airbnb.lottie.b bVar) {
        if (callback instanceof View) {
            this.f12888d = ((View) callback).getContext().getAssets();
        } else {
            d.c("LottieDrawable must be inside of a view for images to work.");
            this.f12888d = null;
        }
    }

    private Typeface a(c cVar) {
        String strA = cVar.a();
        Typeface typeface = (Typeface) this.f12887c.get(strA);
        if (typeface != null) {
            return typeface;
        }
        cVar.c();
        cVar.b();
        if (cVar.d() != null) {
            return cVar.d();
        }
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(this.f12888d, "fonts/" + strA + this.f12889e);
        this.f12887c.put(strA, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        int i10 = (zContains && zContains2) ? 3 : zContains ? 2 : zContains2 ? 1 : 0;
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }

    public Typeface b(c cVar) {
        this.f12885a.b(cVar.a(), cVar.c());
        Typeface typeface = (Typeface) this.f12886b.get(this.f12885a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(cVar), cVar.c());
        this.f12886b.put(this.f12885a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.f12889e = str;
    }

    public void d(com.airbnb.lottie.b bVar) {
    }
}
