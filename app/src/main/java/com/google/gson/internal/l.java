package com.google.gson.internal;

import androidx.appcompat.app.t;
import com.google.gson.s;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    private static abstract class b {
        public static final b INSTANCE;

        class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Method f10749a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Method method) {
                super();
                this.f10749a = method;
            }

            @Override // com.google.gson.internal.l.b
            public boolean a(AccessibleObject accessibleObject, Object obj) {
                try {
                    return ((Boolean) this.f10749a.invoke(accessibleObject, obj)).booleanValue();
                } catch (Exception e10) {
                    throw new RuntimeException("Failed invoking canAccess", e10);
                }
            }
        }

        /* JADX INFO: renamed from: com.google.gson.internal.l$b$b, reason: collision with other inner class name */
        class C0121b extends b {
            C0121b() {
                super();
            }

            @Override // com.google.gson.internal.l.b
            public boolean a(AccessibleObject accessibleObject, Object obj) {
                return true;
            }
        }

        static {
            b aVar;
            if (e.d()) {
                try {
                    aVar = new a(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
                } catch (NoSuchMethodException unused) {
                    aVar = null;
                }
            } else {
                aVar = null;
            }
            if (aVar == null) {
                aVar = new C0121b();
            }
            INSTANCE = aVar;
        }

        private b() {
        }

        public abstract boolean a(AccessibleObject accessibleObject, Object obj);
    }

    public static boolean a(AccessibleObject accessibleObject, Object obj) {
        return b.INSTANCE.a(accessibleObject, obj);
    }

    public static s b(List list, Class cls) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return s.ALLOW;
        }
        t.a(it.next());
        throw null;
    }
}
