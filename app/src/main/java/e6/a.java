package e6;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.oplus.anim.i0;
import f6.d;
import f6.i;
import java.util.HashMap;
import java.util.Map;
import l6.e;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AssetManager f11746d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f11743a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f11744b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f11745c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11747e = ".ttf";

    public a(Drawable.Callback callback, i0 i0Var) {
        if (callback instanceof View) {
            this.f11746d = ((View) callback).getContext().getAssets();
        } else {
            e.c("EffectiveAnimationDrawable must be inside of a view for images to work.");
            this.f11746d = null;
        }
    }

    private Typeface a(d dVar) {
        String strA = dVar.a();
        Typeface typeface = (Typeface) this.f11745c.get(strA);
        if (typeface != null) {
            return typeface;
        }
        dVar.c();
        dVar.b();
        if (dVar.d() != null) {
            return dVar.d();
        }
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(this.f11746d, "fonts/" + strA + this.f11747e);
        this.f11745c.put(strA, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        int i10 = (zContains && zContains2) ? 3 : zContains ? 2 : zContains2 ? 1 : 0;
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }

    public Typeface b(d dVar) {
        this.f11743a.b(dVar.a(), dVar.c());
        Typeface typeface = (Typeface) this.f11744b.get(this.f11743a);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceE = e(a(dVar), dVar.c());
        this.f11744b.put(this.f11743a, typefaceE);
        return typefaceE;
    }

    public void c(String str) {
        this.f11747e = str;
    }

    public void d(i0 i0Var) {
    }
}
