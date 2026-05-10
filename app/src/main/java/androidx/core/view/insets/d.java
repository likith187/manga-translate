package androidx.core.view.insets;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.core.view.z0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import u.e;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f2070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f2071b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f2072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f2073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2074e;

    class a extends View {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2075a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, ViewGroup viewGroup) {
            super(context);
            this.f2075a = viewGroup;
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            Drawable background = this.f2075a.getBackground();
            int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
            if (d.this.f2074e != color) {
                d.this.f2074e = color;
                for (int size = d.this.f2071b.size() - 1; size >= 0; size--) {
                    ((c) d.this.f2071b.get(size)).a(color);
                }
            }
        }
    }

    class b extends z0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap f2077a;

        b(int i10) {
            super(i10);
            this.f2077a = new HashMap();
        }

        private boolean a(z0 z0Var) {
            return (z0Var.c() & a1.m.f()) != 0;
        }

        @Override // androidx.core.view.z0.b
        public void onEnd(z0 z0Var) {
            if (a(z0Var)) {
                this.f2077a.remove(z0Var);
                for (int size = d.this.f2071b.size() - 1; size >= 0; size--) {
                    ((c) d.this.f2071b.get(size)).onAnimationEnd();
                }
            }
        }

        @Override // androidx.core.view.z0.b
        public void onPrepare(z0 z0Var) {
            if (a(z0Var)) {
                for (int size = d.this.f2071b.size() - 1; size >= 0; size--) {
                    ((c) d.this.f2071b.get(size)).d();
                }
            }
        }

        @Override // androidx.core.view.z0.b
        public a1 onProgress(a1 a1Var, List list) {
            RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
            int i10 = 0;
            for (int size = list.size() - 1; size >= 0; size--) {
                z0 z0Var = (z0) list.get(size);
                Integer num = (Integer) this.f2077a.get(z0Var);
                if (num != null) {
                    int iIntValue = num.intValue();
                    float fA = z0Var.a();
                    if ((iIntValue & 1) != 0) {
                        rectF.left = fA;
                    }
                    if ((iIntValue & 2) != 0) {
                        rectF.top = fA;
                    }
                    if ((iIntValue & 4) != 0) {
                        rectF.right = fA;
                    }
                    if ((iIntValue & 8) != 0) {
                        rectF.bottom = fA;
                    }
                    i10 |= iIntValue;
                }
            }
            e eVarI = d.this.i(a1Var);
            for (int size2 = d.this.f2071b.size() - 1; size2 >= 0; size2--) {
                ((c) d.this.f2071b.get(size2)).b(i10, eVarI, rectF);
            }
            return a1Var;
        }

        @Override // androidx.core.view.z0.b
        public z0.a onStart(z0 z0Var, z0.a aVar) {
            if (!a(z0Var)) {
                return aVar;
            }
            e eVarB = aVar.b();
            e eVarA = aVar.a();
            int i10 = eVarB.f15807a != eVarA.f15807a ? 1 : 0;
            if (eVarB.f15808b != eVarA.f15808b) {
                i10 |= 2;
            }
            if (eVarB.f15809c != eVarA.f15809c) {
                i10 |= 4;
            }
            if (eVarB.f15810d != eVarA.f15810d) {
                i10 |= 8;
            }
            this.f2077a.put(z0Var, Integer.valueOf(i10));
            return aVar;
        }
    }

    interface c {
        void a(int i10);

        void b(int i10, e eVar, RectF rectF);

        void c(e eVar, e eVar2);

        void d();

        void onAnimationEnd();
    }

    d(ViewGroup viewGroup) {
        e eVar = e.f15806e;
        this.f2072c = eVar;
        this.f2073d = eVar;
        Drawable background = viewGroup.getBackground();
        this.f2074e = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        a aVar = new a(viewGroup.getContext(), viewGroup);
        this.f2070a = aVar;
        aVar.setWillNotDraw(true);
        m0.y0(aVar, new a0() { // from class: androidx.core.view.insets.b
            @Override // androidx.core.view.a0
            public final a1 onApplyWindowInsets(View view, a1 a1Var) {
                return this.f2068a.m(view, a1Var);
            }
        });
        m0.F0(aVar, new b(0));
        viewGroup.addView(aVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e i(a1 a1Var) {
        return e.b(a1Var.f(a1.m.f()), a1Var.f(a1.m.g()));
    }

    private e j(a1 a1Var) {
        return e.b(a1Var.g(a1.m.f()), a1Var.g(a1.m.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        ViewParent parent = this.f2070a.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f2070a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ a1 m(View view, a1 a1Var) {
        e eVarI = i(a1Var);
        e eVarJ = j(a1Var);
        if (!eVarI.equals(this.f2072c) || !eVarJ.equals(this.f2073d)) {
            this.f2072c = eVarI;
            this.f2073d = eVarJ;
            for (int size = this.f2071b.size() - 1; size >= 0; size--) {
                ((c) this.f2071b.get(size)).c(eVarI, eVarJ);
            }
        }
        return a1Var;
    }

    void g(c cVar) {
        if (this.f2071b.contains(cVar)) {
            return;
        }
        this.f2071b.add(cVar);
        cVar.c(this.f2072c, this.f2073d);
        cVar.a(this.f2074e);
    }

    void h() {
        this.f2070a.post(new Runnable() { // from class: androidx.core.view.insets.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f2069a.l();
            }
        });
    }

    boolean k() {
        return !this.f2071b.isEmpty();
    }

    void n(c cVar) {
        this.f2071b.remove(cVar);
    }
}
