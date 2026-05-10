package i1;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import n1.j;

/* JADX INFO: loaded from: classes.dex */
public class l implements m, j {

    /* JADX INFO: renamed from: d */
    private final String f12452d;

    /* JADX INFO: renamed from: f */
    private final n1.j f12454f;

    /* JADX INFO: renamed from: a */
    private final Path f12449a = new Path();

    /* JADX INFO: renamed from: b */
    private final Path f12450b = new Path();

    /* JADX INFO: renamed from: c */
    private final Path f12451c = new Path();

    /* JADX INFO: renamed from: e */
    private final List f12453e = new ArrayList();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f12455a;

        static {
            int[] iArr = new int[j.a.values().length];
            f12455a = iArr;
            try {
                iArr[j.a.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12455a[j.a.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12455a[j.a.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12455a[j.a.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12455a[j.a.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(n1.j jVar) {
        this.f12452d = jVar.c();
        this.f12454f = jVar;
    }

    private void c() {
        for (int i10 = 0; i10 < this.f12453e.size(); i10++) {
            this.f12451c.addPath(((m) this.f12453e.get(i10)).a());
        }
    }

    private void g(Path.Op op) {
        this.f12450b.reset();
        this.f12449a.reset();
        for (int size = this.f12453e.size() - 1; size >= 1; size--) {
            m mVar = (m) this.f12453e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List listL = dVar.l();
                for (int size2 = listL.size() - 1; size2 >= 0; size2--) {
                    Path pathA = ((m) listL.get(size2)).a();
                    pathA.transform(dVar.m());
                    this.f12450b.addPath(pathA);
                }
            } else {
                this.f12450b.addPath(mVar.a());
            }
        }
        m mVar2 = (m) this.f12453e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List listL2 = dVar2.l();
            for (int i10 = 0; i10 < listL2.size(); i10++) {
                Path pathA2 = ((m) listL2.get(i10)).a();
                pathA2.transform(dVar2.m());
                this.f12449a.addPath(pathA2);
            }
        } else {
            this.f12449a.set(mVar2.a());
        }
        this.f12451c.op(this.f12449a, this.f12450b, op);
    }

    @Override // i1.m
    public Path a() {
        this.f12451c.reset();
        if (this.f12454f.d()) {
            return this.f12451c;
        }
        int i10 = a.f12455a[this.f12454f.b().ordinal()];
        if (i10 == 1) {
            c();
        } else if (i10 == 2) {
            g(Path.Op.UNION);
        } else if (i10 == 3) {
            g(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            g(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            g(Path.Op.XOR);
        }
        return this.f12451c;
    }

    @Override // i1.c
    public void d(List list, List list2) {
        for (int i10 = 0; i10 < this.f12453e.size(); i10++) {
            ((m) this.f12453e.get(i10)).d(list, list2);
        }
    }

    @Override // i1.j
    public void e(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVar = (c) listIterator.previous();
            if (cVar instanceof m) {
                this.f12453e.add((m) cVar);
                listIterator.remove();
            }
        }
    }
}
