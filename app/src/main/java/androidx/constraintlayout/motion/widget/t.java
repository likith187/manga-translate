package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.s;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a */
    private final MotionLayout f1541a;

    /* JADX INFO: renamed from: c */
    private HashSet f1543c;

    /* JADX INFO: renamed from: e */
    ArrayList f1545e;

    /* JADX INFO: renamed from: b */
    private ArrayList f1542b = new ArrayList();

    /* JADX INFO: renamed from: d */
    private String f1544d = "ViewTransitionController";

    /* JADX INFO: renamed from: f */
    ArrayList f1546f = new ArrayList();

    class a implements e.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ s f1547a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f1548b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ boolean f1549c;

        /* JADX INFO: renamed from: f */
        final /* synthetic */ int f1550f;

        a(s sVar, int i10, boolean z10, int i11) {
            this.f1547a = sVar;
            this.f1548b = i10;
            this.f1549c = z10;
            this.f1550f = i11;
        }
    }

    public t(MotionLayout motionLayout) {
        this.f1541a = motionLayout;
    }

    private void f(s sVar, boolean z10) {
        ConstraintLayout.getSharedValues().a(sVar.h(), new a(sVar, sVar.h(), z10, sVar.g()));
    }

    private void j(s sVar, View... viewArr) {
        int currentState = this.f1541a.getCurrentState();
        if (sVar.f1506e == 2) {
            sVar.c(this, this.f1541a, currentState, null, viewArr);
            return;
        }
        if (currentState != -1) {
            androidx.constraintlayout.widget.c cVarT = this.f1541a.T(currentState);
            if (cVarT == null) {
                return;
            }
            sVar.c(this, this.f1541a, currentState, cVarT, viewArr);
            return;
        }
        Log.w(this.f1544d, "No support for ViewTransition within transition yet. Currently: " + this.f1541a.toString());
    }

    public void a(s sVar) {
        this.f1542b.add(sVar);
        this.f1543c = null;
        if (sVar.i() == 4) {
            f(sVar, true);
        } else if (sVar.i() == 5) {
            f(sVar, false);
        }
    }

    void b(s.b bVar) {
        if (this.f1545e == null) {
            this.f1545e = new ArrayList();
        }
        this.f1545e.add(bVar);
    }

    void c() {
        ArrayList arrayList = this.f1545e;
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((s.b) it.next()).a();
        }
        this.f1545e.removeAll(this.f1546f);
        this.f1546f.clear();
        if (this.f1545e.isEmpty()) {
            this.f1545e = null;
        }
    }

    boolean d(int i10, m mVar) {
        for (s sVar : this.f1542b) {
            if (sVar.e() == i10) {
                sVar.f1507f.a(mVar);
                return true;
            }
        }
        return false;
    }

    void e() {
        this.f1541a.invalidate();
    }

    void g(s.b bVar) {
        this.f1546f.add(bVar);
    }

    void h(MotionEvent motionEvent) {
        int currentState = this.f1541a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f1543c == null) {
            this.f1543c = new HashSet();
            for (s sVar : this.f1542b) {
                int childCount = this.f1541a.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = this.f1541a.getChildAt(i10);
                    if (sVar.k(childAt)) {
                        childAt.getId();
                        this.f1543c.add(childAt);
                    }
                }
            }
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        Rect rect = new Rect();
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f1545e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it = this.f1545e.iterator();
            while (it.hasNext()) {
                ((s.b) it.next()).d(action, x10, y10);
            }
        }
        if (action == 0 || action == 1) {
            androidx.constraintlayout.widget.c cVarT = this.f1541a.T(currentState);
            for (s sVar2 : this.f1542b) {
                if (sVar2.m(action)) {
                    for (View view : this.f1543c) {
                        if (sVar2.k(view)) {
                            view.getHitRect(rect);
                            if (rect.contains((int) x10, (int) y10)) {
                                sVar2.c(this, this.f1541a, currentState, cVarT, view);
                            }
                        }
                    }
                }
            }
        }
    }

    void i(int i10, View... viewArr) {
        ArrayList arrayList = new ArrayList();
        s sVar = null;
        for (s sVar2 : this.f1542b) {
            if (sVar2.e() == i10) {
                for (View view : viewArr) {
                    if (sVar2.d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    j(sVar2, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                sVar = sVar2;
            }
        }
        if (sVar == null) {
            Log.e(this.f1544d, " Could not find ViewTransition");
        }
    }
}
