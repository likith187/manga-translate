package q0;

import android.os.Bundle;
import kotlin.jvm.internal.r;
import q0.a;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a */
    private final r0.b f15271a;

    /* JADX INFO: renamed from: b */
    private a.b f15272b;

    public interface a {
        void a(h hVar);
    }

    public interface b {
        Bundle saveState();
    }

    public e(r0.b impl) {
        r.e(impl, "impl");
        this.f15271a = impl;
    }

    public final Bundle a(String key) {
        r.e(key, "key");
        return this.f15271a.c(key);
    }

    public final b b(String key) {
        r.e(key, "key");
        return this.f15271a.d(key);
    }

    public final void c(String key, b provider) {
        r.e(key, "key");
        r.e(provider, "provider");
        this.f15271a.j(key, provider);
    }

    public final void d(Class clazz) {
        r.e(clazz, "clazz");
        if (!this.f15271a.e()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        a.b bVar = this.f15272b;
        if (bVar == null) {
            bVar = new a.b(this);
        }
        this.f15272b = bVar;
        try {
            clazz.getDeclaredConstructor(null);
            a.b bVar2 = this.f15272b;
            if (bVar2 != null) {
                String name = clazz.getName();
                r.d(name, "getName(...)");
                bVar2.a(name);
            }
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
        }
    }
}
