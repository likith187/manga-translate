package k8;

import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    public static List e(List list, int i10) {
        return Arrays.asList(f((aa.d[]) list.toArray(new aa.d[0]), i10));
    }

    public static aa.d[] f(aa.d[] dVarArr, int i10) {
        return new aa.d[]{g(dVarArr, 0, i10), g(dVarArr, 1, i10), g(dVarArr, 2, i10), g(dVarArr, 3, i10)};
    }

    public static aa.d g(aa.d[] dVarArr, int i10, int i11) {
        aa.d dVar = dVarArr[i10];
        aa.d dVarH = h(dVar, dVarArr[(i10 + 1) % dVarArr.length], i11);
        aa.d dVarH2 = h(dVar, dVarArr[(i10 + 3) % dVarArr.length], i11);
        return new aa.d(dVar.f137a + dVarH.f137a + dVarH2.f137a, dVar.f138b + dVarH.f138b + dVarH2.f138b);
    }

    public static aa.d h(aa.d dVar, aa.d dVar2, int i10) {
        aa.d dVar3 = new aa.d(dVar.f137a - dVar2.f137a, dVar.f138b - dVar2.f138b);
        double dS = s(dVar3);
        if (dS == 0.0d) {
            return dVar;
        }
        double d10 = i10;
        return new aa.d((dVar3.f137a / dS) * d10, (dVar3.f138b / dS) * d10);
    }

    public static aa.e i(aa.e eVar, aa.e eVar2) {
        aa.d dVarE = eVar.e();
        aa.d dVarA = eVar.a();
        aa.d dVarE2 = eVar2.e();
        aa.d dVarA2 = eVar2.a();
        dVarE.f137a = (int) Math.min(Math.max(dVarE.f137a, dVarE2.f137a), dVarA2.f137a);
        dVarA.f137a = (int) Math.min(Math.max(dVarA.f137a, dVarE2.f137a), dVarA2.f137a);
        dVarE.f138b = (int) Math.min(Math.max(dVarE.f138b, dVarE2.f138b), dVarA2.f138b);
        double dMin = (int) Math.min(Math.max(dVarA.f138b, dVarE2.f138b), dVarA2.f138b);
        dVarA.f138b = dMin;
        return new aa.e(dVarE, new aa.h(dVarA.f137a - dVarE.f137a, dMin - dVarE.f138b));
    }

    public static aa.e j(aa.e eVar, aa.h hVar) {
        return i(eVar, new aa.e(new aa.d(0.0d, 0.0d), hVar));
    }

    public static List k(List list, final aa.e eVar) {
        return (List) list.stream().map(new Function() { // from class: k8.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return e.o(eVar, (aa.d) obj);
            }
        }).collect(Collectors.toList());
    }

    public static aa.d l(List list) {
        aa.d dVarClone = ((aa.d) list.get(0)).clone();
        for (int i10 = 1; i10 < list.size(); i10++) {
            dVarClone.f137a = Math.max(dVarClone.f137a, ((aa.d) list.get(i10)).f137a);
            dVarClone.f138b = Math.max(dVarClone.f138b, ((aa.d) list.get(i10)).f138b);
        }
        return dVarClone;
    }

    public static aa.e m(List list) {
        aa.d dVarN = n(list);
        aa.d dVarL = l(list);
        return new aa.e(dVarN, new aa.h(dVarL.f137a - dVarN.f137a, dVarL.f138b - dVarN.f138b));
    }

    public static aa.d n(List list) {
        aa.d dVarClone = ((aa.d) list.get(0)).clone();
        for (int i10 = 1; i10 < list.size(); i10++) {
            dVarClone.f137a = Math.min(dVarClone.f137a, ((aa.d) list.get(i10)).f137a);
            dVarClone.f138b = Math.min(dVarClone.f138b, ((aa.d) list.get(i10)).f138b);
        }
        return dVarClone;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.d o(aa.e eVar, aa.d dVar) {
        return new aa.d(Math.min(eVar.a().f137a, Math.max(eVar.e().f137a, dVar.f137a)), Math.min(eVar.a().f138b, Math.max(eVar.e().f138b, dVar.f138b)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.d p(List list, int i10, int i11) {
        return (aa.d) list.get(((i11 + i10) + list.size()) % list.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.d q(aa.d dVar, aa.d dVar2) {
        return new aa.d(dVar2.f137a - dVar.f137a, dVar2.f138b - dVar.f138b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ aa.d r(l8.f fVar, aa.d dVar) {
        return new aa.d(fVar.b(dVar.f137a, dVar.f138b));
    }

    public static double s(aa.d dVar) {
        return Math.sqrt(Math.pow(dVar.f137a, 2.0d) + Math.pow(dVar.f138b, 2.0d));
    }

    public static aa.h t(List list) {
        aa.d dVar = (aa.d) list.get(0);
        aa.d dVar2 = (aa.d) list.get(1);
        aa.d dVar3 = (aa.d) list.get(3);
        return new aa.h((int) Math.sqrt(Math.pow(dVar2.f137a - dVar.f137a, 2.0d) + Math.pow(dVar2.f138b - dVar.f138b, 2.0d)), (int) Math.sqrt(Math.pow(dVar3.f137a - dVar.f137a, 2.0d) + Math.pow(dVar3.f138b - dVar.f138b, 2.0d)));
    }

    public static aa.h u(aa.d[] dVarArr) {
        return t(Arrays.asList(dVarArr));
    }

    public static List v(double d10, double d11, double d12, double d13) {
        return Arrays.asList(new aa.d(d10, d11), new aa.d(d12, d11), new aa.d(d12, d13), new aa.d(d10, d13));
    }

    public static List w(final List list, int i10) {
        final int i11 = -(i10 != -90 ? i10 != 90 ? i10 != 180 ? 0 : -2 : 1 : -1);
        return (List) IntStream.range(0, list.size()).mapToObj(new IntFunction() { // from class: k8.d
            @Override // java.util.function.IntFunction
            public final Object apply(int i12) {
                return e.p(list, i11, i12);
            }
        }).collect(Collectors.toList());
    }

    public static List x(List list) {
        return y(list, n(list));
    }

    public static List y(List list, final aa.d dVar) {
        return (List) list.stream().map(new Function() { // from class: k8.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return e.q(dVar, (aa.d) obj);
            }
        }).collect(Collectors.toList());
    }

    public static List z(List list, final l8.f fVar) {
        return w((List) list.stream().map(new Function() { // from class: k8.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return e.r(fVar, (aa.d) obj);
            }
        }).collect(Collectors.toList()), 0);
    }
}
