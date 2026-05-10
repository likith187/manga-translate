package j8;

import android.graphics.Typeface;
import j8.n0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import org.opencv.core.Mat;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes2.dex */
class m0 {

    /* JADX INFO: renamed from: o */
    private static final String f12816o = "j8.m0";

    /* JADX INFO: renamed from: a */
    int f12817a;

    /* JADX INFO: renamed from: b */
    int f12818b;

    /* JADX INFO: renamed from: c */
    String f12819c;

    /* JADX INFO: renamed from: d */
    aa.d[] f12820d;

    /* JADX INFO: renamed from: e */
    aa.d[] f12821e;

    /* JADX INFO: renamed from: f */
    a f12822f;

    /* JADX INFO: renamed from: g */
    Mat f12823g;

    /* JADX INFO: renamed from: h */
    int[] f12824h;

    /* JADX INFO: renamed from: i */
    int[] f12825i;

    /* JADX INFO: renamed from: j */
    float f12826j;

    /* JADX INFO: renamed from: k */
    Float f12827k;

    /* JADX INFO: renamed from: l */
    Typeface f12828l;

    /* JADX INFO: renamed from: m */
    boolean f12829m = false;

    /* JADX INFO: renamed from: n */
    boolean f12830n = false;

    protected static class a {

        /* JADX INFO: renamed from: a */
        List f12831a;

        /* JADX INFO: renamed from: b */
        List f12832b;

        /* JADX INFO: renamed from: c */
        List f12833c;

        /* JADX INFO: renamed from: d */
        aa.e f12834d;

        public a(aa.d[] dVarArr, aa.h hVar, int i10, int i11) {
            this.f12831a = k8.e.k(Arrays.asList(dVarArr), new aa.e(0, 0, (int) hVar.f147a, (int) hVar.f148b));
            a(hVar, i10, i11);
        }

        private void a(aa.h hVar, int i10, int i11) {
            List listE = k8.e.e(this.f12831a, i10);
            this.f12832b = listE;
            List listE2 = k8.e.e(listE, i11);
            this.f12833c = listE2;
            this.f12834d = k8.e.j(k8.e.m(listE2), hVar);
        }
    }

    m0() {
    }

    public static /* synthetic */ aa.d[] A(int i10) {
        return new aa.d[i10];
    }

    public static /* synthetic */ aa.d B(int[] iArr) {
        return new aa.d(iArr[0], iArr[1]);
    }

    public static /* synthetic */ aa.d[] C(int i10) {
        return new aa.d[i10];
    }

    public static /* synthetic */ aa.d D(int[] iArr) {
        return new aa.d(iArr[0], iArr[1]);
    }

    public static /* synthetic */ aa.d[] E(int i10) {
        return new aa.d[i10];
    }

    public static /* synthetic */ m0 F(m0 m0Var, m0 m0Var2) {
        m0Var.f12819c += " " + m0Var2.f12819c;
        m0Var.f12829m = true;
        if (m0Var.f12821e == null) {
            m0Var.f12821e = m0Var2.f12821e;
        }
        return m0Var;
    }

    public static /* synthetic */ int G(aa.d dVar, aa.d dVar2) {
        return Double.compare(dVar.f137a + dVar.f138b, dVar2.f137a + dVar2.f138b);
    }

    public static /* synthetic */ int H(aa.d dVar, aa.d dVar2) {
        return Double.compare(dVar.f138b - dVar.f137a, dVar2.f138b - dVar2.f137a);
    }

    private static aa.d[] I(List list) {
        aa.b bVar = new aa.b();
        bVar.D((List) list.stream().flatMap(new Function() { // from class: j8.i0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m0.u((m0) obj);
            }
        }).collect(Collectors.toList()));
        aa.f fVarE = Imgproc.e(bVar);
        aa.d[] dVarArr = new aa.d[4];
        fVarE.b(dVarArr);
        return K(dVarArr);
    }

    protected static List J(List list, final aa.h hVar, final n0.a aVar) {
        final HashMap map = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m0 m0Var = (m0) it.next();
            if (!map.containsKey(Integer.valueOf(m0Var.f12818b))) {
                map.put(Integer.valueOf(m0Var.f12818b), new ArrayList());
            }
            ((List) map.get(Integer.valueOf(m0Var.f12818b))).add(m0Var);
        }
        List list2 = (List) map.values().stream().map(new Function() { // from class: j8.w
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m0.y((List) obj);
            }
        }).collect(Collectors.toList());
        list2.stream().forEach(new Consumer() { // from class: j8.d0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                m0.v(hVar, aVar, map, (m0) obj);
            }
        });
        return (List) list2.stream().filter(new Predicate() { // from class: j8.e0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m0.w(aVar, (m0) obj);
            }
        }).sorted(new Comparator() { // from class: j8.f0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m0.x((m0) obj, (m0) obj2);
            }
        }).collect(Collectors.toList());
    }

    private static aa.d[] K(aa.d[] dVarArr) {
        Arrays.sort(dVarArr, new Comparator() { // from class: j8.b0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m0.G((aa.d) obj, (aa.d) obj2);
            }
        });
        aa.d dVar = dVarArr[0];
        aa.d dVar2 = dVarArr[3];
        Arrays.sort(dVarArr, new Comparator() { // from class: j8.c0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m0.H((aa.d) obj, (aa.d) obj2);
            }
        });
        return new aa.d[]{dVar, dVarArr[0], dVar2, dVarArr[3]};
    }

    private static boolean q(v vVar) {
        int[][] iArr = vVar.f12861a;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr.length != 4) {
                String str = f12816o;
                l8.c.f(str, String.format("invalid input bounding box %s", l8.e.a(iArr)));
                l8.c.d(str, String.format("for %s", vVar.f12863c));
                return false;
            }
        }
        return true;
    }

    protected static List r(final List list, aa.h hVar, final n0.a aVar) {
        return (List) IntStream.range(0, list.size()).filter(new IntPredicate() { // from class: j8.g0
            @Override // java.util.function.IntPredicate
            public final boolean test(int i10) {
                return m0.s(list, i10);
            }
        }).mapToObj(new IntFunction() { // from class: j8.h0
            @Override // java.util.function.IntFunction
            public final Object apply(int i10) {
                return m0.t(list, aVar, i10);
            }
        }).collect(Collectors.toList());
    }

    public static /* synthetic */ boolean s(List list, int i10) {
        return q((v) list.get(i10));
    }

    public static /* synthetic */ m0 t(List list, n0.a aVar, int i10) {
        v vVar = (v) list.get(i10);
        m0 m0Var = new m0();
        m0Var.f12817a = i10;
        m0Var.f12819c = vVar.f12863c;
        m0Var.f12824h = vVar.f12864d;
        m0Var.f12825i = vVar.f12865e;
        m0Var.f12818b = vVar.f12867g;
        m0Var.f12820d = (aa.d[]) Arrays.stream(vVar.f12861a).map(new Function() { // from class: j8.k0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m0.z((int[]) obj);
            }
        }).toArray(new IntFunction() { // from class: j8.l0
            @Override // java.util.function.IntFunction
            public final Object apply(int i11) {
                return m0.A(i11);
            }
        });
        int[][] iArr = vVar.f12862b;
        if (iArr != null) {
            m0Var.f12821e = (aa.d[]) Arrays.stream(iArr).map(new Function() { // from class: j8.x
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return m0.B((int[]) obj);
                }
            }).toArray(new IntFunction() { // from class: j8.y
                @Override // java.util.function.IntFunction
                public final Object apply(int i11) {
                    return m0.C(i11);
                }
            });
        }
        int[][] iArr2 = vVar.f12861a;
        if (iArr2 != null) {
            m0Var.f12826j = (float) (k8.e.u((aa.d[]) Arrays.stream(iArr2).map(new Function() { // from class: j8.z
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return m0.D((int[]) obj);
                }
            }).toArray(new IntFunction() { // from class: j8.a0
                @Override // java.util.function.IntFunction
                public final Object apply(int i11) {
                    return m0.E(i11);
                }
            })).f148b * aVar.f12843i.f12788i);
        }
        m0Var.f12828l = aVar.f12835a;
        return m0Var;
    }

    public static /* synthetic */ Stream u(m0 m0Var) {
        return Arrays.stream(m0Var.f12820d);
    }

    public static /* synthetic */ void v(aa.h hVar, n0.a aVar, Map map, m0 m0Var) {
        aa.d[] dVarArr = m0Var.f12821e;
        if (dVarArr != null) {
            c1 c1Var = aVar.f12843i;
            m0Var.f12822f = new a(dVarArr, hVar, c1Var.f12780a, c1Var.f12781b);
        } else {
            List list = (List) map.get(Integer.valueOf(m0Var.f12818b));
            aa.d[] dVarArrI = list.size() == 1 ? m0Var.f12820d : I(list);
            c1 c1Var2 = aVar.f12843i;
            m0Var.f12822f = new a(dVarArrI, hVar, c1Var2.f12780a, c1Var2.f12781b);
        }
    }

    public static /* synthetic */ boolean w(n0.a aVar, m0 m0Var) {
        aa.h hVarT = k8.e.t(m0Var.f12822f.f12833c);
        c1 c1Var = aVar.f12843i;
        int i10 = c1Var.f12780a + c1Var.f12781b + c1Var.f12786g;
        return hVarT.f147a > ((double) i10) && m0Var.f12822f.f12834d.f142f > i10;
    }

    public static /* synthetic */ int x(m0 m0Var, m0 m0Var2) {
        return Integer.compare(m0Var.f12818b, m0Var2.f12818b);
    }

    public static /* synthetic */ m0 y(List list) {
        return (m0) list.stream().reduce(new BinaryOperator() { // from class: j8.j0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return m0.F((m0) obj, (m0) obj2);
            }
        }).orElse(null);
    }

    public static /* synthetic */ aa.d z(int[] iArr) {
        return new aa.d(iArr[0], iArr[1]);
    }
}
