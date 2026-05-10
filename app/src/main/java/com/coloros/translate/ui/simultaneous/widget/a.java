package com.coloros.translate.ui.simultaneous.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import androidx.core.view.m0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.x;
import com.coloros.translate.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class a extends x {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final TimeInterpolator f6797s = new ValueAnimator().getInterpolator();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayList f6798h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ArrayList f6799i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ArrayList f6800j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ArrayList f6801k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ArrayList f6802l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ArrayList f6803m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ArrayList f6804n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ArrayList f6805o = new ArrayList();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    ArrayList f6806p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    ArrayList f6807q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ArrayList f6808r = new ArrayList();

    /* JADX INFO: renamed from: com.coloros.translate.ui.simultaneous.widget.a$a, reason: collision with other inner class name */
    class C0095a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f6809a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f6810b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f6811c;

        C0095a(k kVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f6809a = kVar;
            this.f6810b = viewPropertyAnimator;
            this.f6811c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6810b.setListener(null);
            this.f6811c.setAlpha(1.0f);
            this.f6811c.setTranslationX(0.0f);
            this.f6811c.setTranslationY(0.0f);
            a.this.D(this.f6809a.f6842b, false);
            a.this.f6808r.remove(this.f6809a.f6842b);
            a.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.E(this.f6809a.f6842b, false);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f6813a;

        b(ArrayList arrayList) {
            this.f6813a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f6813a.iterator();
            while (it.hasNext()) {
                a.this.T((k) it.next());
            }
            this.f6813a.clear();
            a.this.f6804n.remove(this.f6813a);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f6815a;

        c(ArrayList arrayList) {
            this.f6815a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f6815a.iterator();
            while (it.hasNext()) {
                a.this.S((RecyclerView.d0) it.next());
            }
            this.f6815a.clear();
            a.this.f6802l.remove(this.f6815a);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArrayList f6817a;

        d(ArrayList arrayList) {
            this.f6817a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (l lVar : this.f6817a) {
                a.this.U(lVar.f6847a, lVar.f6848b, lVar.f6849c, lVar.f6850d, lVar.f6851e);
            }
            this.f6817a.clear();
            a.this.f6803m.remove(this.f6817a);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f6819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f6820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f6821c;

        e(RecyclerView.d0 d0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f6819a = d0Var;
            this.f6820b = viewPropertyAnimator;
            this.f6821c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6820b.setListener(null);
            this.f6821c.setAlpha(1.0f);
            a.this.H(this.f6819a);
            a.this.f6807q.remove(this.f6819a);
            a.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.I(this.f6819a);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f6823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f6824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f6825c;

        f(RecyclerView.d0 d0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f6823a = d0Var;
            this.f6824b = view;
            this.f6825c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6824b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6825c.setListener(null);
            a.this.B(this.f6823a);
            a.this.f6805o.remove(this.f6823a);
            a.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.C(this.f6823a);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6827a;

        g(View view) {
            this.f6827a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.f6827a.setAlpha(fFloatValue * fFloatValue);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f6829a;

        h(View view) {
            this.f6829a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            this.f6829a.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.f6829a.setAlpha(1.0f);
        }
    }

    class i extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f6831a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f6832b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f6833c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f6834f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f6835h;

        i(RecyclerView.d0 d0Var, int i10, View view, int i11, ViewPropertyAnimator viewPropertyAnimator) {
            this.f6831a = d0Var;
            this.f6832b = i10;
            this.f6833c = view;
            this.f6834f = i11;
            this.f6835h = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f6832b != 0) {
                this.f6833c.setTranslationX(0.0f);
            }
            if (this.f6834f != 0) {
                this.f6833c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6835h.setListener(null);
            a.this.F(this.f6831a);
            a.this.f6806p.remove(this.f6831a);
            a.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.G(this.f6831a);
        }
    }

    class j extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f6837a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f6838b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f6839c;

        j(k kVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f6837a = kVar;
            this.f6838b = viewPropertyAnimator;
            this.f6839c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6838b.setListener(null);
            this.f6839c.setAlpha(1.0f);
            this.f6839c.setTranslationX(0.0f);
            this.f6839c.setTranslationY(0.0f);
            a.this.D(this.f6837a.f6841a, true);
            a.this.f6808r.remove(this.f6837a.f6841a);
            a.this.X();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.E(this.f6837a.f6841a, true);
        }
    }

    private static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f6847a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6849c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6850d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6851e;

        l(RecyclerView.d0 d0Var, int i10, int i11, int i12, int i13) {
            this.f6847a = d0Var;
            this.f6848b = i10;
            this.f6849c = i11;
            this.f6850d = i12;
            this.f6851e = i13;
        }
    }

    private void V(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f6807q.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(0.0f).setListener(new e(d0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void Y(List list, RecyclerView.d0 d0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            k kVar = (k) list.get(size);
            if (a0(kVar, d0Var) && kVar.f6841a == null && kVar.f6842b == null) {
                list.remove(kVar);
            }
        }
    }

    private void Z(k kVar) {
        RecyclerView.d0 d0Var = kVar.f6841a;
        if (d0Var != null) {
            a0(kVar, d0Var);
        }
        RecyclerView.d0 d0Var2 = kVar.f6842b;
        if (d0Var2 != null) {
            a0(kVar, d0Var2);
        }
    }

    private boolean a0(k kVar, RecyclerView.d0 d0Var) {
        boolean z10 = false;
        if (kVar.f6842b == d0Var) {
            kVar.f6842b = null;
        } else {
            if (kVar.f6841a != d0Var) {
                return false;
            }
            kVar.f6841a = null;
            z10 = true;
        }
        d0Var.itemView.setAlpha(1.0f);
        d0Var.itemView.setTranslationX(0.0f);
        d0Var.itemView.setTranslationY(0.0f);
        D(d0Var, z10);
        return true;
    }

    private void b0(RecyclerView.d0 d0Var) {
        d0Var.itemView.animate().setInterpolator(f6797s);
        j(d0Var);
    }

    private void c0(boolean z10, boolean z11, boolean z12) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f6799i);
        this.f6802l.add(arrayList);
        this.f6799i.clear();
        c cVar = new c(arrayList);
        if (z10 || z11 || z12) {
            m0.b0(((RecyclerView.d0) arrayList.get(0)).itemView, cVar, (z10 ? o() : 0L) + Math.max(z11 ? n() : 0L, z12 ? m() : 0L));
        } else {
            cVar.run();
        }
    }

    private void d0(boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f6800j);
        this.f6803m.add(arrayList);
        this.f6800j.clear();
        d dVar = new d(arrayList);
        if (z10) {
            m0.b0(((l) arrayList.get(0)).f6847a.itemView, dVar, o());
        } else {
            dVar.run();
        }
    }

    @Override // androidx.recyclerview.widget.x
    public boolean A(RecyclerView.d0 d0Var) {
        b0(d0Var);
        this.f6798h.add(d0Var);
        return true;
    }

    void S(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f6805o.add(d0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new f(d0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    void T(k kVar) {
        RecyclerView.d0 d0Var = kVar.f6841a;
        View view = d0Var == null ? null : d0Var.itemView;
        RecyclerView.d0 d0Var2 = kVar.f6842b;
        View view2 = d0Var2 != null ? d0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.f6808r.add(kVar.f6841a);
            duration.translationX(kVar.f6845e - kVar.f6843c);
            duration.translationY(kVar.f6846f - kVar.f6844d);
            duration.alpha(0.0f).setListener(new j(kVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.f6808r.add(kVar.f6842b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(m()).alpha(1.0f).setListener(new C0095a(kVar, viewPropertyAnimatorAnimate, view2)).start();
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
        this.f6806p.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(5L).setListener(new i(d0Var, i14, view, i15, viewPropertyAnimatorAnimate)).start();
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
        int size = this.f6800j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((l) this.f6800j.get(size)).f6847a == d0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                F(d0Var);
                this.f6800j.remove(size);
            }
        }
        Y(this.f6801k, d0Var);
        if (this.f6798h.remove(d0Var)) {
            view.setAlpha(1.0f);
            H(d0Var);
        }
        if (this.f6799i.remove(d0Var)) {
            view.setAlpha(1.0f);
            B(d0Var);
        }
        for (int size2 = this.f6804n.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = (ArrayList) this.f6804n.get(size2);
            Y(arrayList, d0Var);
            if (arrayList.isEmpty()) {
                this.f6804n.remove(size2);
            }
        }
        for (int size3 = this.f6803m.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = (ArrayList) this.f6803m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((l) arrayList2.get(size4)).f6847a == d0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    F(d0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f6803m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f6802l.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = (ArrayList) this.f6802l.get(size5);
            if (arrayList3.remove(d0Var)) {
                view.setAlpha(1.0f);
                B(d0Var);
                if (arrayList3.isEmpty()) {
                    this.f6802l.remove(size5);
                }
            }
        }
        this.f6807q.remove(d0Var);
        this.f6805o.remove(d0Var);
        this.f6808r.remove(d0Var);
        this.f6806p.remove(d0Var);
        X();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void k() {
        int size = this.f6800j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            l lVar = (l) this.f6800j.get(size);
            View view = lVar.f6847a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            F(lVar.f6847a);
            this.f6800j.remove(size);
        }
        for (int size2 = this.f6798h.size() - 1; size2 >= 0; size2--) {
            H((RecyclerView.d0) this.f6798h.get(size2));
            this.f6798h.remove(size2);
        }
        int size3 = this.f6799i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.d0 d0Var = (RecyclerView.d0) this.f6799i.get(size3);
            d0Var.itemView.setAlpha(1.0f);
            B(d0Var);
            this.f6799i.remove(size3);
        }
        for (int size4 = this.f6801k.size() - 1; size4 >= 0; size4--) {
            Z((k) this.f6801k.get(size4));
        }
        this.f6801k.clear();
        if (p()) {
            for (int size5 = this.f6803m.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = (ArrayList) this.f6803m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    l lVar2 = (l) arrayList.get(size6);
                    View view2 = lVar2.f6847a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    F(lVar2.f6847a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f6803m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f6802l.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = (ArrayList) this.f6802l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.d0 d0Var2 = (RecyclerView.d0) arrayList2.get(size8);
                    d0Var2.itemView.setAlpha(1.0f);
                    B(d0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f6802l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f6804n.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = (ArrayList) this.f6804n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    Z((k) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f6804n.remove(arrayList3);
                    }
                }
            }
            W(this.f6807q);
            W(this.f6806p);
            W(this.f6805o);
            W(this.f6808r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean p() {
        return (this.f6799i.isEmpty() && this.f6801k.isEmpty() && this.f6800j.isEmpty() && this.f6798h.isEmpty() && this.f6806p.isEmpty() && this.f6807q.isEmpty() && this.f6805o.isEmpty() && this.f6808r.isEmpty() && this.f6803m.isEmpty() && this.f6802l.isEmpty() && this.f6804n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u() {
        boolean zIsEmpty = this.f6798h.isEmpty();
        boolean z10 = !zIsEmpty;
        boolean zIsEmpty2 = this.f6800j.isEmpty();
        boolean z11 = !zIsEmpty2;
        boolean zIsEmpty3 = this.f6801k.isEmpty();
        boolean z12 = !zIsEmpty3;
        boolean zIsEmpty4 = this.f6799i.isEmpty();
        if (zIsEmpty && zIsEmpty2 && zIsEmpty4 && zIsEmpty3) {
            return;
        }
        Iterator it = this.f6798h.iterator();
        while (it.hasNext()) {
            V((RecyclerView.d0) it.next());
        }
        this.f6798h.clear();
        if (!zIsEmpty2) {
            d0(z10);
        }
        if (!zIsEmpty3) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.f6801k);
            this.f6804n.add(arrayList);
            this.f6801k.clear();
            b bVar = new b(arrayList);
            if (zIsEmpty) {
                bVar.run();
            } else {
                m0.b0(((k) arrayList.get(0)).f6841a.itemView, bVar, o());
            }
        }
        if (zIsEmpty4) {
            return;
        }
        c0(z10, z11, z12);
    }

    @Override // androidx.recyclerview.widget.x
    public boolean x(RecyclerView.d0 d0Var) {
        b0(d0Var);
        d0Var.itemView.setAlpha(0.0f);
        this.f6799i.add(d0Var);
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
        this.f6801k.add(new k(d0Var, d0Var2, i10, i11, i12, i13));
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
        com.coloros.translate.ui.simultaneous.main.c cVar = (com.coloros.translate.ui.simultaneous.main.c) d0Var;
        boolean zJ = cVar.j();
        if (zJ) {
            cVar.n(false);
        }
        View viewFindViewById = view.findViewById(R.id.target_item_textview);
        if (i14 != 0) {
            view.setTranslationX(-i14);
        }
        if (i15 != 0) {
            if (zJ) {
                viewFindViewById.setAlpha(0.0f);
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewFindViewById, "alpha", 0.0f, 1.0f);
                viewFindViewById.setTag(objectAnimatorOfFloat);
                objectAnimatorOfFloat.setDuration(l());
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat.addUpdateListener(new g(viewFindViewById));
                objectAnimatorOfFloat.addListener(new h(viewFindViewById));
                objectAnimatorOfFloat.setStartDelay(n());
                objectAnimatorOfFloat.start();
            } else {
                ObjectAnimator objectAnimator = (ObjectAnimator) viewFindViewById.getTag();
                if (objectAnimator != null) {
                    objectAnimator.cancel();
                    objectAnimator.removeAllListeners();
                    objectAnimator.removeAllUpdateListeners();
                    viewFindViewById.setTag(null);
                }
                viewFindViewById.setAlpha(1.0f);
            }
            view.setTranslationY(-i15);
        }
        this.f6800j.add(new l(d0Var, translationX, translationY, i12, i13));
        return true;
    }

    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f6841a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.d0 f6842b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f6843c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f6844d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6845e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f6846f;

        private k(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2) {
            this.f6841a = d0Var;
            this.f6842b = d0Var2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f6841a + ", newHolder=" + this.f6842b + ", fromX=" + this.f6843c + ", fromY=" + this.f6844d + ", toX=" + this.f6845e + ", toY=" + this.f6846f + AbstractJsonLexerKt.END_OBJ;
        }

        k(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i10, int i11, int i12, int i13) {
            this(d0Var, d0Var2);
            this.f6843c = i10;
            this.f6844d = i11;
            this.f6845e = i12;
            this.f6846f = i13;
        }
    }
}
