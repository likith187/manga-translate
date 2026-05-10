package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.l;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {

    /* JADX INFO: renamed from: a */
    private final k f2717a;

    /* JADX INFO: renamed from: b */
    private final ClassLoader f2718b;

    /* JADX INFO: renamed from: d */
    int f2720d;

    /* JADX INFO: renamed from: e */
    int f2721e;

    /* JADX INFO: renamed from: f */
    int f2722f;

    /* JADX INFO: renamed from: g */
    int f2723g;

    /* JADX INFO: renamed from: h */
    int f2724h;

    /* JADX INFO: renamed from: i */
    boolean f2725i;

    /* JADX INFO: renamed from: k */
    String f2727k;

    /* JADX INFO: renamed from: l */
    int f2728l;

    /* JADX INFO: renamed from: m */
    CharSequence f2729m;

    /* JADX INFO: renamed from: n */
    int f2730n;

    /* JADX INFO: renamed from: o */
    CharSequence f2731o;

    /* JADX INFO: renamed from: p */
    ArrayList f2732p;

    /* JADX INFO: renamed from: q */
    ArrayList f2733q;

    /* JADX INFO: renamed from: s */
    ArrayList f2735s;

    /* JADX INFO: renamed from: c */
    ArrayList f2719c = new ArrayList();

    /* JADX INFO: renamed from: j */
    boolean f2726j = true;

    /* JADX INFO: renamed from: r */
    boolean f2734r = false;

    static final class a {

        /* JADX INFO: renamed from: a */
        int f2736a;

        /* JADX INFO: renamed from: b */
        Fragment f2737b;

        /* JADX INFO: renamed from: c */
        boolean f2738c;

        /* JADX INFO: renamed from: d */
        int f2739d;

        /* JADX INFO: renamed from: e */
        int f2740e;

        /* JADX INFO: renamed from: f */
        int f2741f;

        /* JADX INFO: renamed from: g */
        int f2742g;

        /* JADX INFO: renamed from: h */
        l.b f2743h;

        /* JADX INFO: renamed from: i */
        l.b f2744i;

        a() {
        }

        a(int i10, Fragment fragment) {
            this.f2736a = i10;
            this.f2737b = fragment;
            this.f2738c = false;
            l.b bVar = l.b.RESUMED;
            this.f2743h = bVar;
            this.f2744i = bVar;
        }

        a(int i10, Fragment fragment, boolean z10) {
            this.f2736a = i10;
            this.f2737b = fragment;
            this.f2738c = z10;
            l.b bVar = l.b.RESUMED;
            this.f2743h = bVar;
            this.f2744i = bVar;
        }

        a(int i10, Fragment fragment, l.b bVar) {
            this.f2736a = i10;
            this.f2737b = fragment;
            this.f2738c = false;
            this.f2743h = fragment.mMaxState;
            this.f2744i = bVar;
        }
    }

    z(k kVar, ClassLoader classLoader) {
        this.f2717a = kVar;
        this.f2718b = classLoader;
    }

    public z b(int i10, Fragment fragment) {
        m(i10, fragment, null, 1);
        return this;
    }

    public z c(int i10, Fragment fragment, String str) {
        m(i10, fragment, str, 1);
        return this;
    }

    z d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.mContainer = viewGroup;
        return c(viewGroup.getId(), fragment, str);
    }

    public z e(Fragment fragment, String str) {
        m(0, fragment, str, 1);
        return this;
    }

    void f(a aVar) {
        this.f2719c.add(aVar);
        aVar.f2739d = this.f2720d;
        aVar.f2740e = this.f2721e;
        aVar.f2741f = this.f2722f;
        aVar.f2742g = this.f2723g;
    }

    public z g(String str) {
        if (!this.f2726j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f2725i = true;
        this.f2727k = str;
        return this;
    }

    public abstract int h();

    public abstract int i();

    public abstract void j();

    public abstract void k();

    public z l() {
        if (this.f2725i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f2726j = false;
        return this;
    }

    void m(int i10, Fragment fragment, String str, int i11) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            i0.c.f(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i10 != 0) {
            if (i10 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i12 = fragment.mFragmentId;
            if (i12 != 0 && i12 != i10) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i10);
            }
            fragment.mFragmentId = i10;
            fragment.mContainerId = i10;
        }
        f(new a(i11, fragment));
    }

    public z n(Fragment fragment) {
        f(new a(4, fragment));
        return this;
    }

    public abstract boolean o();

    public z p(Fragment fragment) {
        f(new a(3, fragment));
        return this;
    }

    public z q(int i10, Fragment fragment) {
        return r(i10, fragment, null);
    }

    public z r(int i10, Fragment fragment, String str) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        m(i10, fragment, str, 2);
        return this;
    }

    public z s(int i10, int i11) {
        return t(i10, i11, 0, 0);
    }

    public z t(int i10, int i11, int i12, int i13) {
        this.f2720d = i10;
        this.f2721e = i11;
        this.f2722f = i12;
        this.f2723g = i13;
        return this;
    }

    public z u(Fragment fragment, l.b bVar) {
        f(new a(10, fragment, bVar));
        return this;
    }

    public z v(boolean z10) {
        this.f2734r = z10;
        return this;
    }

    public z w(Fragment fragment) {
        f(new a(5, fragment));
        return this;
    }
}
