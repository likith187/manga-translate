package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.m0;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class j extends x {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static TimeInterpolator f3320s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList f3321h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList f3322i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList f3323j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList f3324k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ArrayList f3325l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ArrayList f3326m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ArrayList f3327n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList f3328o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList f3329p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList f3330q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ArrayList f3331r = new ArrayList();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f3332a;

        a(ArrayList arrayList) {
            this.f3332a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C0040j c0040j : this.f3332a) {
                j.this.U(c0040j.f3366a, c0040j.f3367b, c0040j.f3368c, c0040j.f3369d, c0040j.f3370e);
            }
            this.f3332a.clear();
            j.this.f3326m.remove(this.f3332a);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f3334a;

        b(ArrayList arrayList) {
            this.f3334a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3334a.iterator();
            while (it.hasNext()) {
                j.this.T((i) it.next());
            }
            this.f3334a.clear();
            j.this.f3327n.remove(this.f3334a);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f3336a;

        c(ArrayList arrayList) {
            this.f3336a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f3336a.iterator();
            while (it.hasNext()) {
                j.this.S((RecyclerView.d0) it.next());
            }
            this.f3336a.clear();
            j.this.f3325l.remove(this.f3336a);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f3338a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3340c;

        d(RecyclerView.d0 d0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3338a = d0Var;
            this.f3339b = viewPropertyAnimator;
            this.f3340c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3339b.setListener(null);
            this.f3340c.setAlpha(1.0f);
            j.this.H(this.f3338a);
            j.this.f3330q.remove(this.f3338a);
            j.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.I(this.f3338a);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f3342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f3343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3344c;

        e(RecyclerView.d0 d0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f3342a = d0Var;
            this.f3343b = view;
            this.f3344c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3343b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3344c.setListener(null);
            j.this.B(this.f3342a);
            j.this.f3328o.remove(this.f3342a);
            j.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.C(this.f3342a);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f3346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f3347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3348c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f3349f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3350h;

        f(RecyclerView.d0 d0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
            this.f3346a = d0Var;
            this.f3347b = i10;
            this.f3348c = view;
            this.f3349f = i11;
            this.f3350h = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f3347b != 0) {
                this.f3348c.setTranslationX(0.0f);
            }
            if (this.f3349f != 0) {
                this.f3348c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3350h.setListener(null);
            j.this.F(this.f3346a);
            j.this.f3329p.remove(this.f3346a);
            j.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.G(this.f3346a);
        }
    }

    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f3352a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3353b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3354c;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3352a = iVar;
            this.f3353b = viewPropertyAnimator;
            this.f3354c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3353b.setListener(null);
            this.f3354c.setAlpha(1.0f);
            this.f3354c.setTranslationX(0.0f);
            this.f3354c.setTranslationY(0.0f);
            j.this.D(this.f3352a.f3360a, true);
            j.this.f3331r.remove(this.f3352a.f3360a);
            j.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.E(this.f3352a.f3360a, true);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f3356a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f3357b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f3358c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f3356a = iVar;
            this.f3357b = viewPropertyAnimator;
            this.f3358c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3357b.setListener(null);
            this.f3358c.setAlpha(1.0f);
            this.f3358c.setTranslationX(0.0f);
            this.f3358c.setTranslationY(0.0f);
            j.this.D(this.f3356a.f3361b, false);
            j.this.f3331r.remove(this.f3356a.f3361b);
            j.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            j.this.E(this.f3356a.f3361b, false);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.j$j, reason: collision with other inner class name */
    private static class C0040j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f3366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3367b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3368c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3369d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3370e;

        C0040j(RecyclerView.d0 d0Var, int i10, int i11, int i12, int i13) {
            this.f3366a = d0Var;
            this.f3367b = i10;
            this.f3368c = i11;
            this.f3369d = i12;
            this.f3370e = i13;
        }
    }

    private void V(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3330q.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(0.0f).setListener(new d(d0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void Y(List list, RecyclerView.d0 d0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = (i) list.get(size);
            if (a0(iVar, d0Var) && iVar.f3360a == null && iVar.f3361b == null) {
                list.remove(iVar);
            }
        }
    }

    private void Z(i iVar) {
        RecyclerView.d0 d0Var = iVar.f3360a;
        if (d0Var != null) {
            a0(iVar, d0Var);
        }
        RecyclerView.d0 d0Var2 = iVar.f3361b;
        if (d0Var2 != null) {
            a0(iVar, d0Var2);
        }
    }

    private boolean a0(i iVar, RecyclerView.d0 d0Var) {
        boolean z10 = false;
        if (iVar.f3361b == d0Var) {
            iVar.f3361b = null;
        } else {
            if (iVar.f3360a != d0Var) {
                return false;
            }
            iVar.f3360a = null;
            z10 = true;
        }
        d0Var.itemView.setAlpha(1.0f);
        d0Var.itemView.setTranslationX(0.0f);
        d0Var.itemView.setTranslationY(0.0f);
        D(d0Var, z10);
        return true;
    }

    private void b0(RecyclerView.d0 d0Var) {
        if (f3320s == null) {
            f3320s = new ValueAnimator().getInterpolator();
        }
        d0Var.itemView.animate().setInterpolator(f3320s);
        j(d0Var);
    }

    @Override // androidx.recyclerview.widget.x
    public boolean A(RecyclerView.d0 d0Var) {
        b0(d0Var);
        this.f3321h.add(d0Var);
        return true;
    }

    void S(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3328o.add(d0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new e(d0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    void T(i iVar) {
        RecyclerView.d0 d0Var = iVar.f3360a;
        View view = d0Var == null ? null : d0Var.itemView;
        RecyclerView.d0 d0Var2 = iVar.f3361b;
        View view2 = d0Var2 != null ? d0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.f3331r.add(iVar.f3360a);
            duration.translationX(iVar.f3364e - iVar.f3362c);
            duration.translationY(iVar.f3365f - iVar.f3363d);
            duration.alpha(0.0f).setListener(new g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.f3331r.add(iVar.f3361b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(m()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    void U(RecyclerView.d0 d0Var, int i10, int i11, int i12, int i13) {
        View view = d0Var.itemView;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i14 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i15 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f3329p.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new f(d0Var, i14, view, i15, viewPropertyAnimatorAnimate)).start();
    }

    void W(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ((RecyclerView.d0) list.get(size)).itemView.animate().cancel();
        }
    }

    void X() {
        if (p()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(RecyclerView.d0 d0Var, List list) {
        return !list.isEmpty() || super.g(d0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        view.animate().cancel();
        int size = this.f3323j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((C0040j) this.f3323j.get(size)).f3366a == d0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                F(d0Var);
                this.f3323j.remove(size);
            }
        }
        Y(this.f3324k, d0Var);
        if (this.f3321h.remove(d0Var)) {
            view.setAlpha(1.0f);
            H(d0Var);
        }
        if (this.f3322i.remove(d0Var)) {
            view.setAlpha(1.0f);
            B(d0Var);
        }
        for (int size2 = this.f3327n.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.f3327n.get(size2);
            Y(arrayList, d0Var);
            if (arrayList.isEmpty()) {
                this.f3327n.remove(size2);
            }
        }
        for (int size3 = this.f3326m.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = (ArrayList) this.f3326m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((C0040j) arrayList2.get(size4)).f3366a == d0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    F(d0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f3326m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f3325l.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = (ArrayList) this.f3325l.get(size5);
            if (arrayList3.remove(d0Var)) {
                view.setAlpha(1.0f);
                B(d0Var);
                if (arrayList3.isEmpty()) {
                    this.f3325l.remove(size5);
                }
            }
        }
        this.f3330q.remove(d0Var);
        this.f3328o.remove(d0Var);
        this.f3331r.remove(d0Var);
        this.f3329p.remove(d0Var);
        X();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void k() {
        int size = this.f3323j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0040j c0040j = (C0040j) this.f3323j.get(size);
            View view = c0040j.f3366a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            F(c0040j.f3366a);
            this.f3323j.remove(size);
        }
        for (int size2 = this.f3321h.size() - 1; size2 >= 0; size2--) {
            H((RecyclerView.d0) this.f3321h.get(size2));
            this.f3321h.remove(size2);
        }
        int size3 = this.f3322i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.d0 d0Var = (RecyclerView.d0) this.f3322i.get(size3);
            d0Var.itemView.setAlpha(1.0f);
            B(d0Var);
            this.f3322i.remove(size3);
        }
        for (int size4 = this.f3324k.size() - 1; size4 >= 0; size4--) {
            Z((i) this.f3324k.get(size4));
        }
        this.f3324k.clear();
        if (p()) {
            for (int size5 = this.f3326m.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.f3326m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C0040j c0040j2 = (C0040j) arrayList.get(size6);
                    View view2 = c0040j2.f3366a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    F(c0040j2.f3366a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f3326m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f3325l.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.f3325l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.d0 d0Var2 = (RecyclerView.d0) arrayList2.get(size8);
                    d0Var2.itemView.setAlpha(1.0f);
                    B(d0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f3325l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f3327n.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.f3327n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    Z((i) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f3327n.remove(arrayList3);
                    }
                }
            }
            W(this.f3330q);
            W(this.f3329p);
            W(this.f3328o);
            W(this.f3331r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean p() {
        return (this.f3322i.isEmpty() && this.f3324k.isEmpty() && this.f3323j.isEmpty() && this.f3321h.isEmpty() && this.f3329p.isEmpty() && this.f3330q.isEmpty() && this.f3328o.isEmpty() && this.f3331r.isEmpty() && this.f3326m.isEmpty() && this.f3325l.isEmpty() && this.f3327n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u() {
        boolean zIsEmpty = this.f3321h.isEmpty();
        boolean zIsEmpty2 = this.f3323j.isEmpty();
        boolean zIsEmpty3 = this.f3324k.isEmpty();
        boolean zIsEmpty4 = this.f3322i.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        Iterator it = this.f3321h.iterator();
        while (it.hasNext()) {
            V((RecyclerView.d0) it.next());
        }
        this.f3321h.clear();
        if (!zIsEmpty2) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f3323j);
            this.f3326m.add(arrayList);
            this.f3323j.clear();
            a aVar = new a(arrayList);
            if (zIsEmpty) {
                aVar.run();
            } else {
                m0.b0(((C0040j) arrayList.get(0)).f3366a.itemView, aVar, o());
            }
        }
        if (!zIsEmpty3) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.f3324k);
            this.f3327n.add(arrayList2);
            this.f3324k.clear();
            b bVar = new b(arrayList2);
            if (zIsEmpty) {
                bVar.run();
            } else {
                m0.b0(((i) arrayList2.get(0)).f3360a.itemView, bVar, o());
            }
        }
        if (zIsEmpty4) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(this.f3322i);
        this.f3325l.add(arrayList3);
        this.f3322i.clear();
        c cVar = new c(arrayList3);
        if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
            cVar.run();
        } else {
            m0.b0(((RecyclerView.d0) arrayList3.get(0)).itemView, cVar, (!zIsEmpty ? o() : 0L) + Math.max(!zIsEmpty2 ? n() : 0L, zIsEmpty3 ? 0L : m()));
        }
    }

    @Override // androidx.recyclerview.widget.x
    public boolean x(RecyclerView.d0 d0Var) {
        b0(d0Var);
        d0Var.itemView.setAlpha(0.0f);
        this.f3322i.add(d0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.x
    public boolean y(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i10, int i11, int i12, int i13) {
        if (d0Var == d0Var2) {
            return z(d0Var, i10, i11, i12, i13);
        }
        float translationX = d0Var.itemView.getTranslationX();
        float translationY = d0Var.itemView.getTranslationY();
        float alpha = d0Var.itemView.getAlpha();
        b0(d0Var);
        int i14 = (int) ((i12 - i10) - translationX);
        int i15 = (int) ((i13 - i11) - translationY);
        d0Var.itemView.setTranslationX(translationX);
        d0Var.itemView.setTranslationY(translationY);
        d0Var.itemView.setAlpha(alpha);
        if (d0Var2 != null) {
            b0(d0Var2);
            d0Var2.itemView.setTranslationX(-i14);
            d0Var2.itemView.setTranslationY(-i15);
            d0Var2.itemView.setAlpha(0.0f);
        }
        this.f3324k.add(new i(d0Var, d0Var2, i10, i11, i12, i13));
        return true;
    }

    @Override // androidx.recyclerview.widget.x
    public boolean z(RecyclerView.d0 d0Var, int i10, int i11, int i12, int i13) {
        View view = d0Var.itemView;
        int translationX = i10 + ((int) view.getTranslationX());
        int translationY = i11 + ((int) d0Var.itemView.getTranslationY());
        b0(d0Var);
        int i14 = i12 - translationX;
        int i15 = i13 - translationY;
        if (i14 == 0 && i15 == 0) {
            F(d0Var);
            return false;
        }
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            view.setTranslationY(-i15);
        }
        this.f3323j.add(new C0040j(d0Var, translationX, translationY, i12, i13));
        return true;
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f3360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.d0 f3361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3362c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f3363d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3364e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f3365f;

        private i(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2) {
            this.f3360a = d0Var;
            this.f3361b = d0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f3360a + ", newHolder=" + this.f3361b + ", fromX=" + this.f3362c + ", fromY=" + this.f3363d + ", toX=" + this.f3364e + ", toY=" + this.f3365f + AbstractJsonLexerKt.END_OBJ;
        }

        i(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i10, int i11, int i12, int i13) {
            this(d0Var, d0Var2);
            this.f3362c = i10;
            this.f3363d = i11;
            this.f3364e = i12;
            this.f3365f = i13;
        }
    }
}
