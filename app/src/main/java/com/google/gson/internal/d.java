package com.google.gson.internal;

import androidx.appcompat.app.t;
import com.google.gson.reflect.TypeToken;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d implements w, Cloneable {

    /* JADX INFO: renamed from: j */
    public static final d f10717j = new d();

    /* JADX INFO: renamed from: f */
    private boolean f10721f;

    /* JADX INFO: renamed from: a */
    private double f10718a = -1.0d;

    /* JADX INFO: renamed from: b */
    private int f10719b = 136;

    /* JADX INFO: renamed from: c */
    private boolean f10720c = true;

    /* JADX INFO: renamed from: h */
    private List f10722h = Collections.emptyList();

    /* JADX INFO: renamed from: i */
    private List f10723i = Collections.emptyList();

    class a extends v {

        /* JADX INFO: renamed from: a */
        private v f10724a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ boolean f10725b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ boolean f10726c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ com.google.gson.d f10727d;

        /* JADX INFO: renamed from: e */
        final /* synthetic */ TypeToken f10728e;

        a(boolean z10, boolean z11, com.google.gson.d dVar, TypeToken typeToken) {
            this.f10725b = z10;
            this.f10726c = z11;
            this.f10727d = dVar;
            this.f10728e = typeToken;
        }

        private v e() {
            v vVar = this.f10724a;
            if (vVar != null) {
                return vVar;
            }
            v vVarQ = this.f10727d.q(d.this, this.f10728e);
            this.f10724a = vVarQ;
            return vVarQ;
        }

        @Override // com.google.gson.v
        public Object b(a5.a aVar) throws IOException {
            if (!this.f10725b) {
                return e().b(aVar);
            }
            aVar.V0();
            return null;
        }

        @Override // com.google.gson.v
        public void d(a5.c cVar, Object obj) throws IOException {
            if (this.f10726c) {
                cVar.q0();
            } else {
                e().d(cVar, obj);
            }
        }
    }

    private boolean e(Class cls) {
        if (this.f10718a != -1.0d && !m((v4.d) cls.getAnnotation(v4.d.class), (v4.e) cls.getAnnotation(v4.e.class))) {
            return true;
        }
        if (this.f10720c || !i(cls)) {
            return h(cls);
        }
        return true;
    }

    private boolean f(Class cls, boolean z10) {
        Iterator it = (z10 ? this.f10722h : this.f10723i).iterator();
        if (!it.hasNext()) {
            return false;
        }
        t.a(it.next());
        throw null;
    }

    private boolean h(Class cls) {
        return (Enum.class.isAssignableFrom(cls) || j(cls) || (!cls.isAnonymousClass() && !cls.isLocalClass())) ? false : true;
    }

    private boolean i(Class cls) {
        return cls.isMemberClass() && !j(cls);
    }

    private boolean j(Class cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean k(v4.d dVar) {
        if (dVar != null) {
            return this.f10718a >= dVar.value();
        }
        return true;
    }

    private boolean l(v4.e eVar) {
        if (eVar != null) {
            return this.f10718a < eVar.value();
        }
        return true;
    }

    private boolean m(v4.d dVar, v4.e eVar) {
        return k(dVar) && l(eVar);
    }

    @Override // com.google.gson.w
    public v a(com.google.gson.d dVar, TypeToken typeToken) {
        Class rawType = typeToken.getRawType();
        boolean zE = e(rawType);
        boolean z10 = zE || f(rawType, true);
        boolean z11 = zE || f(rawType, false);
        if (z10 || z11) {
            return new a(z11, z10, dVar, typeToken);
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public boolean d(Class cls, boolean z10) {
        return e(cls) || f(cls, z10);
    }

    public boolean g(Field field, boolean z10) {
        v4.a aVar;
        if ((this.f10719b & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f10718a != -1.0d && !m((v4.d) field.getAnnotation(v4.d.class), (v4.e) field.getAnnotation(v4.e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f10721f && ((aVar = (v4.a) field.getAnnotation(v4.a.class)) == null || (!z10 ? aVar.deserialize() : aVar.serialize()))) {
            return true;
        }
        if ((!this.f10720c && i(field.getType())) || h(field.getType())) {
            return true;
        }
        List list = z10 ? this.f10722h : this.f10723i;
        if (list.isEmpty()) {
            return false;
        }
        new com.google.gson.a(field);
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        t.a(it.next());
        throw null;
    }
}
