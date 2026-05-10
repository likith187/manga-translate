package androidx.dynamicanimation.animation;

import android.util.FloatProperty;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    final String mPropertyName;

    static class a extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ FloatProperty f2318a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, FloatProperty floatProperty) {
            super(str);
            this.f2318a = floatProperty;
        }

        @Override // androidx.dynamicanimation.animation.d
        public float getValue(Object obj) {
            return ((Float) this.f2318a.get(obj)).floatValue();
        }

        @Override // androidx.dynamicanimation.animation.d
        public void setValue(Object obj, float f10) {
            this.f2318a.setValue(obj, f10);
        }
    }

    public d(String str) {
        this.mPropertyName = str;
    }

    public static <T> d createFloatPropertyCompat(FloatProperty<T> floatProperty) {
        return new a(floatProperty.getName(), floatProperty);
    }

    public abstract float getValue(Object obj);

    public abstract void setValue(Object obj, float f10);
}
