package androidx.fragment.app;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.m0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f2634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2635b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ArrayList f2636c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2637f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ ArrayList f2638h;

        a(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2634a = i10;
            this.f2635b = arrayList;
            this.f2636c = arrayList2;
            this.f2637f = arrayList3;
            this.f2638h = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f2634a; i10++) {
                m0.D0((View) this.f2635b.get(i10), (String) this.f2636c.get(i10));
                m0.D0((View) this.f2637f.get(i10), (String) this.f2638h.get(i10));
            }
        }
    }

    protected static void d(List list, View view) {
        int size = list.size();
        if (g(list, view, size)) {
            return;
        }
        if (m0.E(view) != null) {
            list.add(view);
        }
        for (int i10 = size; i10 < list.size(); i10++) {
            View view2 = (View) list.get(i10);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (!g(list, childAt, size) && m0.E(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    private static boolean g(List list, View view, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (list.get(i11) == view) {
                return true;
            }
        }
        return false;
    }

    protected static boolean i(List list) {
        return list == null || list.isEmpty();
    }

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList arrayList);

    public abstract void c(ViewGroup viewGroup, Object obj);

    public abstract boolean e(Object obj);

    public abstract Object f(Object obj);

    protected void h(View view, Rect rect) {
        if (m0.N(view)) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r0[0], r0[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    public abstract Object j(Object obj, Object obj2, Object obj3);

    public abstract Object k(Object obj, Object obj2, Object obj3);

    ArrayList l(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = (View) arrayList.get(i10);
            arrayList2.add(m0.E(view));
            m0.D0(view, null);
        }
        return arrayList2;
    }

    public abstract void m(Object obj, View view, ArrayList arrayList);

    public abstract void n(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3);

    public abstract void o(Object obj, Rect rect);

    public abstract void p(Object obj, View view);

    public abstract void q(Fragment fragment, Object obj, z.d dVar, Runnable runnable);

    void r(View view, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Map map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) arrayList.get(i10);
            String strE = m0.E(view2);
            arrayList4.add(strE);
            if (strE != null) {
                m0.D0(view2, null);
                String str = (String) map.get(strE);
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i11))) {
                        m0.D0((View) arrayList2.get(i11), strE);
                        break;
                    }
                    i11++;
                }
            }
        }
        androidx.core.view.c0.a(view, new a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void s(Object obj, View view, ArrayList arrayList);

    public abstract void t(Object obj, ArrayList arrayList, ArrayList arrayList2);

    public abstract Object u(Object obj);
}
