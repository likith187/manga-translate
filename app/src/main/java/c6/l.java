package c6;

import android.graphics.Path;
import h6.i;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class l implements m, j {

    /* JADX INFO: renamed from: d */
    private final String f4378d;

    /* JADX INFO: renamed from: f */
    private final h6.i f4380f;

    /* JADX INFO: renamed from: a */
    private final Path f4375a = new Path();

    /* JADX INFO: renamed from: b */
    private final Path f4376b = new Path();

    /* JADX INFO: renamed from: c */
    private final Path f4377c = new Path();

    /* JADX INFO: renamed from: e */
    private final List f4379e = new ArrayList();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f4381a;

        static {
            int[] iArr = new int[i.a.values().length];
            f4381a = iArr;
            try {
                iArr[i.a.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4381a[i.a.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4381a[i.a.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4381a[i.a.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4381a[i.a.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(h6.i iVar) {
        this.f4378d = iVar.c();
        this.f4380f = iVar;
    }

    private void c() {
        for (int i10 = 0; i10 < this.f4379e.size(); i10++) {
            this.f4377c.addPath(((m) this.f4379e.get(i10)).a());
        }
    }

    private void h(Path.Op op) {
        this.f4376b.reset();
        this.f4375a.reset();
        for (int size = this.f4379e.size() - 1; size >= 1; size--) {
            m mVar = (m) this.f4379e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List listL = dVar.l();
                for (int size2 = listL.size() - 1; size2 >= 0; size2--) {
                    Path pathA = ((m) listL.get(size2)).a();
                    pathA.transform(dVar.m());
                    this.f4376b.addPath(pathA);
                }
            } else {
                this.f4376b.addPath(mVar.a());
            }
        }
        m mVar2 = (m) this.f4379e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List listL2 = dVar2.l();
            for (int i10 = 0; i10 < listL2.size(); i10++) {
                Path pathA2 = ((m) listL2.get(i10)).a();
                pathA2.transform(dVar2.m());
                this.f4375a.addPath(pathA2);
            }
        } else {
            this.f4375a.set(mVar2.a());
        }
        this.f4377c.op(this.f4375a, this.f4376b, op);
    }

    @Override // c6.m
    public Path a() {
        this.f4377c.reset();
        if (this.f4380f.d()) {
            return this.f4377c;
        }
        int i10 = a.f4381a[this.f4380f.b().ordinal()];
        if (i10 == 1) {
            c();
        } else if (i10 == 2) {
            h(Path.Op.UNION);
        } else if (i10 == 3) {
            h(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            h(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            h(Path.Op.XOR);
        }
        return this.f4377c;
    }

    @Override // c6.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < this.f4379e.size(); i10++) {
            ((m) this.f4379e.get(i10)).d(list, list2);
        }
    }

    @Override // c6.j
    public void e(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVar = (c) listIterator.previous();
            if (cVar instanceof m) {
                this.f4379e.add((m) cVar);
                listIterator.remove();
            }
        }
    }
}
