package j8;

import android.content.Context;
import android.text.TextPaint;
import android.widget.TextView;
import j8.n0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.DoublePredicate;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes2.dex */
class u {

    /* JADX INFO: renamed from: a */
    private n0.a f12858a;

    public u(n0.a aVar) {
        this.f12858a = aVar;
    }

    public static /* synthetic */ double A(Float f10) {
        return f10.floatValue();
    }

    public static /* synthetic */ double B(Float f10) {
        return f10.floatValue();
    }

    private List C(List list) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 1; i11 < list.size(); i11++) {
            if (((Float) list.get(i11)).floatValue() > ((double) ((Float) list.get(i11 - 1)).floatValue()) * (this.f12858a.f12843i.f12791l + 1.0d)) {
                arrayList.add(Arrays.asList(Integer.valueOf(i10), Integer.valueOf(i11)));
                i10 = i11;
            }
        }
        arrayList.add(Arrays.asList(Integer.valueOf(i10), Integer.valueOf(list.size())));
        return arrayList;
    }

    private List E(List list, List list2, c1 c1Var) {
        final double dOrElse = list2.stream().mapToDouble(new ToDoubleFunction() { // from class: j8.p
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return u.A((Float) obj);
            }
        }).average().orElse(0.0d) * c1Var.f12789j;
        final double dMax = Math.max(list.stream().mapToDouble(new ToDoubleFunction() { // from class: j8.q
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return u.B((Float) obj);
            }
        }).filter(new DoublePredicate() { // from class: j8.r
            @Override // java.util.function.DoublePredicate
            public final boolean test(double d10) {
                return u.y(dOrElse, d10);
            }
        }).min().orElse(dOrElse), this.f12858a.f12843i.f12790k);
        return (List) list.stream().map(new Function() { // from class: j8.s
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u.z(dMax, (Float) obj);
            }
        }).collect(Collectors.toList());
    }

    private float m(m0 m0Var, Context context, n0.a aVar) {
        return m0Var.f12830n ? n(m0Var.f12819c, m0Var.f12826j, k8.e.t(m0Var.f12822f.f12833c), aVar.f12843i) : Math.max(((TextView) b1.a(context, m0Var, aVar).findViewWithTag("textview")).getTextSize(), aVar.f12843i.f12786g);
    }

    private float n(String str, float f10, aa.h hVar, c1 c1Var) {
        TextPaint textPaint = new TextPaint(1);
        int iMax = Math.max((int) f10, c1Var.f12786g);
        textPaint.setTextSize(iMax);
        int i10 = (int) ((hVar.f147a - ((double) c1Var.f12785f)) - ((double) (c1Var.f12781b * 2)));
        while (iMax > c1Var.f12786g && textPaint.measureText(str) > i10) {
            iMax--;
            textPaint.setTextSize(iMax);
        }
        return iMax;
    }

    public static void o(List list, final Context context, final n0.a aVar) {
        final u uVar = new u(aVar);
        list.forEach(new Consumer() { // from class: j8.i
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                u.q(aVar, (m0) obj);
            }
        });
        if (!aVar.f12839e) {
            list.forEach(new Consumer() { // from class: j8.m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    u.s(this.f12813a, context, aVar, (m0) obj);
                }
            });
        } else {
            list.forEach(new Consumer() { // from class: j8.l
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    u.r(this.f12810a, context, aVar, (m0) obj);
                }
            });
            uVar.D(list, aVar.f12843i);
        }
    }

    private List p(final List list) {
        list.sort(new Comparator() { // from class: j8.t
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return u.t((m0) obj, (m0) obj2);
            }
        });
        return (List) C((List) list.stream().map(new Function() { // from class: j8.j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u.u((m0) obj);
            }
        }).collect(Collectors.toList())).stream().map(new Function() { // from class: j8.k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return u.v(list, (List) obj);
            }
        }).collect(Collectors.toList());
    }

    public static /* synthetic */ void q(n0.a aVar, m0 m0Var) {
        m0Var.f12830n = m0Var.f12819c.length() <= aVar.f12843i.f12792m;
    }

    public static /* synthetic */ void r(u uVar, Context context, n0.a aVar, m0 m0Var) {
        m0Var.f12827k = Float.valueOf(uVar.m(m0Var, context, aVar));
    }

    public static /* synthetic */ void s(u uVar, Context context, n0.a aVar, m0 m0Var) {
        if (m0Var.f12830n) {
            m0Var.f12827k = Float.valueOf(uVar.m(m0Var, context, aVar));
        }
    }

    public static /* synthetic */ int t(m0 m0Var, m0 m0Var2) {
        return Double.compare(m0Var.f12826j, m0Var2.f12826j);
    }

    public static /* synthetic */ Float u(m0 m0Var) {
        return Float.valueOf(m0Var.f12826j);
    }

    public static /* synthetic */ List v(List list, List list2) {
        return list.subList(((Integer) list2.get(0)).intValue(), ((Integer) list2.get(1)).intValue());
    }

    public static /* synthetic */ Float w(m0 m0Var) {
        return Float.valueOf(m0Var.f12826j);
    }

    public static /* synthetic */ boolean y(double d10, double d11) {
        return d11 >= d10;
    }

    public static /* synthetic */ Float z(double d10, Float f10) {
        return Float.valueOf(Math.min((float) d10, f10.floatValue()));
    }

    public void D(List list, c1 c1Var) {
        for (List list2 : p(list)) {
            List listE = E((List) list2.stream().map(new Function() { // from class: j8.o
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((m0) obj).f12827k;
                }
            }).collect(Collectors.toList()), (List) list2.stream().map(new Function() { // from class: j8.n
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return u.w((m0) obj);
                }
            }).collect(Collectors.toList()), c1Var);
            for (int i10 = 0; i10 < list2.size(); i10++) {
                ((m0) list2.get(i10)).f12827k = (Float) listE.get(i10);
            }
        }
    }
}
