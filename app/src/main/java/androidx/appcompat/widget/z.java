package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R$drawable;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: i */
    private static z f1004i;

    /* JADX INFO: renamed from: a */
    private WeakHashMap f1006a;

    /* JADX INFO: renamed from: b */
    private androidx.collection.i f1007b;

    /* JADX INFO: renamed from: c */
    private androidx.collection.j f1008c;

    /* JADX INFO: renamed from: d */
    private final WeakHashMap f1009d = new WeakHashMap(0);

    /* JADX INFO: renamed from: e */
    private TypedValue f1010e;

    /* JADX INFO: renamed from: f */
    private boolean f1011f;

    /* JADX INFO: renamed from: g */
    private c f1012g;

    /* JADX INFO: renamed from: h */
    private static final PorterDuff.Mode f1003h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j */
    private static final a f1005j = new a(6);

    private static class a extends androidx.collection.h {
        public a(int i10) {
            super(i10);
        }

        private static int generateCacheKey(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i10, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(generateCacheKey(i10, mode)));
        }

        PorterDuffColorFilter put(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(generateCacheKey(i10, mode)), porterDuffColorFilter);
        }
    }

    private interface b {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface c {
        boolean a(Context context, int i10, Drawable drawable);

        PorterDuff.Mode b(int i10);

        Drawable c(z zVar, Context context, int i10);

        ColorStateList d(Context context, int i10);

        boolean e(Context context, int i10, Drawable drawable);
    }

    private synchronized boolean a(Context context, long j10, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            androidx.collection.f fVar = (androidx.collection.f) this.f1009d.get(context);
            if (fVar == null) {
                fVar = new androidx.collection.f();
                this.f1009d.put(context, fVar);
            }
            fVar.i(j10, new WeakReference(constantState));
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private void b(Context context, int i10, ColorStateList colorStateList) {
        if (this.f1006a == null) {
            this.f1006a = new WeakHashMap();
        }
        androidx.collection.j jVar = (androidx.collection.j) this.f1006a.get(context);
        if (jVar == null) {
            jVar = new androidx.collection.j();
            this.f1006a.put(context, jVar);
        }
        jVar.a(i10, colorStateList);
    }

    private void c(Context context) {
        if (this.f1011f) {
            return;
        }
        this.f1011f = true;
        Drawable drawableI = i(context, R$drawable.abc_vector_test);
        if (drawableI == null || !p(drawableI)) {
            this.f1011f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long d(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable e(Context context, int i10) {
        if (this.f1010e == null) {
            this.f1010e = new TypedValue();
        }
        TypedValue typedValue = this.f1010e;
        context.getResources().getValue(i10, typedValue, true);
        long jD = d(typedValue);
        Drawable drawableH = h(context, jD);
        if (drawableH != null) {
            return drawableH;
        }
        c cVar = this.f1012g;
        Drawable drawableC = cVar == null ? null : cVar.c(this, context, i10);
        if (drawableC != null) {
            drawableC.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, jD, drawableC);
        }
        return drawableC;
    }

    private static PorterDuffColorFilter f(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return k(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized z g() {
        try {
            if (f1004i == null) {
                z zVar = new z();
                f1004i = zVar;
                o(zVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f1004i;
    }

    private synchronized Drawable h(Context context, long j10) {
        androidx.collection.f fVar = (androidx.collection.f) this.f1009d.get(context);
        if (fVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) fVar.e(j10);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            fVar.j(j10);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter k(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        a aVar = f1005j;
        porterDuffColorFilter = aVar.get(i10, mode);
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i10, mode);
            aVar.put(i10, mode, porterDuffColorFilter);
        }
        return porterDuffColorFilter;
    }

    private ColorStateList m(Context context, int i10) {
        androidx.collection.j jVar;
        WeakHashMap weakHashMap = this.f1006a;
        if (weakHashMap == null || (jVar = (androidx.collection.j) weakHashMap.get(context)) == null) {
            return null;
        }
        return (ColorStateList) jVar.e(i10);
    }

    private static void o(z zVar) {
    }

    private static boolean p(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.graphics.drawable.g) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable q(Context context, int i10) {
        int next;
        androidx.collection.i iVar = this.f1007b;
        if (iVar == null || iVar.isEmpty()) {
            return null;
        }
        androidx.collection.j jVar = this.f1008c;
        if (jVar != null) {
            String str = (String) jVar.e(i10);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f1007b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1008c = new androidx.collection.j();
        }
        if (this.f1010e == null) {
            this.f1010e = new TypedValue();
        }
        TypedValue typedValue = this.f1010e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long jD = d(typedValue);
        Drawable drawableH = h(context, jD);
        if (drawableH != null) {
            return drawableH;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1008c.a(i10, name);
                b bVar = (b) this.f1007b.get(name);
                if (bVar != null) {
                    drawableH = bVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableH != null) {
                    drawableH.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, jD, drawableH);
                }
            } catch (Exception e10) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e10);
            }
        }
        if (drawableH == null) {
            this.f1008c.a(i10, "appcompat_skip_skip");
        }
        return drawableH;
    }

    private Drawable u(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList colorStateListL = l(context, i10);
        if (colorStateListL != null) {
            Drawable drawableR = v.a.r(drawable.mutate());
            v.a.o(drawableR, colorStateListL);
            PorterDuff.Mode modeN = n(i10);
            if (modeN == null) {
                return drawableR;
            }
            v.a.p(drawableR, modeN);
            return drawableR;
        }
        c cVar = this.f1012g;
        if ((cVar == null || !cVar.e(context, i10, drawable)) && !w(context, i10, drawable) && z10) {
            return null;
        }
        return drawable;
    }

    static void v(Drawable drawable, f0 f0Var, int[] iArr) {
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z10 = f0Var.f881d;
        if (z10 || f0Var.f880c) {
            drawable.setColorFilter(f(z10 ? f0Var.f878a : null, f0Var.f880c ? f0Var.f879b : f1003h, iArr));
        } else {
            drawable.clearColorFilter();
        }
    }

    public synchronized Drawable i(Context context, int i10) {
        return j(context, i10, false);
    }

    synchronized Drawable j(Context context, int i10, boolean z10) {
        Drawable drawableQ;
        try {
            c(context);
            drawableQ = q(context, i10);
            if (drawableQ == null) {
                drawableQ = e(context, i10);
            }
            if (drawableQ == null) {
                drawableQ = r.a.e(context, i10);
            }
            if (drawableQ != null) {
                drawableQ = u(context, i10, z10, drawableQ);
            }
            if (drawableQ != null) {
                u.b(drawableQ);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableQ;
    }

    synchronized ColorStateList l(Context context, int i10) {
        ColorStateList colorStateListM;
        colorStateListM = m(context, i10);
        if (colorStateListM == null) {
            c cVar = this.f1012g;
            colorStateListM = cVar == null ? null : cVar.d(context, i10);
            if (colorStateListM != null) {
                b(context, i10, colorStateListM);
            }
        }
        return colorStateListM;
    }

    PorterDuff.Mode n(int i10) {
        c cVar = this.f1012g;
        if (cVar == null) {
            return null;
        }
        return cVar.b(i10);
    }

    public synchronized void r(Context context) {
        androidx.collection.f fVar = (androidx.collection.f) this.f1009d.get(context);
        if (fVar != null) {
            fVar.a();
        }
    }

    synchronized Drawable s(Context context, n0 n0Var, int i10) {
        try {
            Drawable drawableQ = q(context, i10);
            if (drawableQ == null) {
                drawableQ = n0Var.a(i10);
            }
            if (drawableQ == null) {
                return null;
            }
            return u(context, i10, false, drawableQ);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void t(c cVar) {
        this.f1012g = cVar;
    }

    boolean w(Context context, int i10, Drawable drawable) {
        c cVar = this.f1012g;
        return cVar != null && cVar.a(context, i10, drawable);
    }
}
