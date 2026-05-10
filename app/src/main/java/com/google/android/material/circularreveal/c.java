package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.b;

/* JADX INFO: loaded from: classes.dex */
public interface c extends b.a {

    public static class b implements TypeEvaluator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator f9363b = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f9364a = new e();

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f10, e eVar, e eVar2) {
            this.f9364a.b(f4.a.d(eVar.f9367a, eVar2.f9367a, f10), f4.a.d(eVar.f9368b, eVar2.f9368b, f10), f4.a.d(eVar.f9369c, eVar2.f9369c, f10));
            return this.f9364a;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.circularreveal.c$c, reason: collision with other inner class name */
    public static class C0111c extends Property {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property f9365a = new C0111c("circularReveal");

        private C0111c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(c cVar) {
            return cVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, e eVar) {
            cVar.setRevealInfo(eVar);
        }
    }

    public static class d extends Property {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property f9366a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(c cVar) {
            return Integer.valueOf(cVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, Integer num) {
            cVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f9367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f9368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f9369c;

        public boolean a() {
            return this.f9369c == Float.MAX_VALUE;
        }

        public void b(float f10, float f11, float f12) {
            this.f9367a = f10;
            this.f9368b = f11;
            this.f9369c = f12;
        }

        public void c(e eVar) {
            b(eVar.f9367a, eVar.f9368b, eVar.f9369c);
        }

        private e() {
        }

        public e(float f10, float f11, float f12) {
            this.f9367a = f10;
            this.f9368b = f11;
            this.f9369c = f12;
        }

        public e(e eVar) {
            this(eVar.f9367a, eVar.f9368b, eVar.f9369c);
        }
    }

    void a();

    void c();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i10);

    void setRevealInfo(e eVar);
}
