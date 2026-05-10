package x3;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.i f16381a = new androidx.collection.i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.collection.i f16382b = new androidx.collection.i();

    private static void a(h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.m(objectAnimator.getPropertyName(), i.b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    private PropertyValuesHolder[] b(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i10 = 0; i10 < propertyValuesHolderArr.length; i10++) {
            propertyValuesHolderArr2[i10] = propertyValuesHolderArr[i10].clone();
        }
        return propertyValuesHolderArr2;
    }

    public static h c(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return d(context, resourceId);
    }

    public static h d(Context context, int i10) {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return e(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return e(arrayList);
        } catch (Exception e10) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i10), e10);
            return null;
        }
    }

    private static h e(List list) {
        h hVar = new h();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(hVar, (Animator) list.get(i10));
        }
        return hVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return this.f16381a.equals(((h) obj).f16381a);
        }
        return false;
    }

    public ObjectAnimator f(String str, Object obj, Property property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(obj, g(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        h(str).a(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public PropertyValuesHolder[] g(String str) {
        if (j(str)) {
            return b((PropertyValuesHolder[]) this.f16382b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public i h(String str) {
        if (k(str)) {
            return (i) this.f16381a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f16381a.hashCode();
    }

    public long i() {
        int size = this.f16381a.size();
        long jMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = (i) this.f16381a.k(i10);
            jMax = Math.max(jMax, iVar.c() + iVar.d());
        }
        return jMax;
    }

    public boolean j(String str) {
        return this.f16382b.get(str) != null;
    }

    public boolean k(String str) {
        return this.f16381a.get(str) != null;
    }

    public void l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f16382b.put(str, propertyValuesHolderArr);
    }

    public void m(String str, i iVar) {
        this.f16381a.put(str, iVar);
    }

    public String toString() {
        return '\n' + getClass().getName() + AbstractJsonLexerKt.BEGIN_OBJ + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f16381a + "}\n";
    }
}
