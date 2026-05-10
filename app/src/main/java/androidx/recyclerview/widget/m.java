package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class m implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final ThreadLocal f3427h = new ThreadLocal();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static Comparator f3428i = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f3431c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f3429a = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f3432f = new ArrayList();

    class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.f3440d;
            if ((recyclerView == null) != (cVar2.f3440d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = cVar.f3437a;
            if (z10 != cVar2.f3437a) {
                return z10 ? -1 : 1;
            }
            int i10 = cVar2.f3438b - cVar.f3438b;
            if (i10 != 0) {
                return i10;
            }
            int i11 = cVar.f3439c - cVar2.f3439c;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    }

    static class b implements RecyclerView.p.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3434b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f3435c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3436d;

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.p.c
        public void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.f3436d;
            int i13 = i12 * 2;
            int[] iArr = this.f3435c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f3435c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i13 >= iArr.length) {
                int[] iArr3 = new int[i12 * 4];
                this.f3435c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f3435c;
            iArr4[i13] = i10;
            iArr4[i13 + 1] = i11;
            this.f3436d++;
        }

        void b() {
            int[] iArr = this.f3435c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3436d = 0;
        }

        void c(RecyclerView recyclerView, boolean z10) {
            this.f3436d = 0;
            int[] iArr = this.f3435c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.p pVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || pVar == null || !pVar.isItemPrefetchEnabled()) {
                return;
            }
            if (z10) {
                if (!recyclerView.mAdapterHelper.p()) {
                    pVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                pVar.collectAdjacentPrefetchPositions(this.f3433a, this.f3434b, recyclerView.mState, this);
            }
            int i10 = this.f3436d;
            if (i10 > pVar.mPrefetchMaxCountObserved) {
                pVar.mPrefetchMaxCountObserved = i10;
                pVar.mPrefetchMaxObservedInInitialPrefetch = z10;
                recyclerView.mRecycler.K();
            }
        }

        boolean d(int i10) {
            if (this.f3435c != null) {
                int i11 = this.f3436d * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.f3435c[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        void e(int i10, int i11) {
            this.f3433a = i10;
            this.f3434b = i11;
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f3440d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3441e;

        c() {
        }

        public void a() {
            this.f3437a = false;
            this.f3438b = 0;
            this.f3439c = 0;
            this.f3440d = null;
            this.f3441e = 0;
        }
    }

    m() {
    }

    private void b() {
        c cVar;
        int size = this.f3429a.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = (RecyclerView) this.f3429a.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i10 += recyclerView.mPrefetchRegistry.f3436d;
            }
        }
        this.f3432f.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = (RecyclerView) this.f3429a.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(bVar.f3433a) + Math.abs(bVar.f3434b);
                for (int i14 = 0; i14 < bVar.f3436d * 2; i14 += 2) {
                    if (i12 >= this.f3432f.size()) {
                        cVar = new c();
                        this.f3432f.add(cVar);
                    } else {
                        cVar = (c) this.f3432f.get(i12);
                    }
                    int[] iArr = bVar.f3435c;
                    int i15 = iArr[i14 + 1];
                    cVar.f3437a = i15 <= iAbs;
                    cVar.f3438b = iAbs;
                    cVar.f3439c = i15;
                    cVar.f3440d = recyclerView2;
                    cVar.f3441e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f3432f, f3428i);
    }

    private void c(c cVar, long j10) {
        RecyclerView.d0 d0VarI = i(cVar.f3440d, cVar.f3441e, cVar.f3437a ? Long.MAX_VALUE : j10);
        if (d0VarI == null || d0VarI.mNestedRecyclerView == null || !d0VarI.isBound() || d0VarI.isInvalid()) {
            return;
        }
        h(d0VarI.mNestedRecyclerView.get(), j10);
    }

    private void d(long j10) {
        for (int i10 = 0; i10 < this.f3432f.size(); i10++) {
            c cVar = (c) this.f3432f.get(i10);
            if (cVar.f3440d == null) {
                return;
            }
            c(cVar, j10);
            cVar.a();
        }
    }

    static boolean e(RecyclerView recyclerView, int i10) {
        int iJ = recyclerView.mChildHelper.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            RecyclerView.d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.i(i11));
            if (childViewHolderInt.mPosition == i10 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void h(RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.c(recyclerView, true);
        if (bVar.f3436d != 0) {
            try {
                z.i.a("RV Nested Prefetch");
                recyclerView.mState.f(recyclerView.mAdapter);
                for (int i10 = 0; i10 < bVar.f3436d * 2; i10 += 2) {
                    i(recyclerView, bVar.f3435c[i10], j10);
                }
            } finally {
                z.i.b();
            }
        }
    }

    private RecyclerView.d0 i(RecyclerView recyclerView, int i10, long j10) {
        if (e(recyclerView, i10)) {
            return null;
        }
        RecyclerView.w wVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.d0 d0VarI = wVar.I(i10, false, j10);
            if (d0VarI != null) {
                if (!d0VarI.isBound() || d0VarI.isInvalid()) {
                    wVar.a(d0VarI, false);
                } else {
                    wVar.B(d0VarI.itemView);
                }
            }
            recyclerView.onExitLayoutOrScroll(false);
            return d0VarI;
        } catch (Throwable th) {
            recyclerView.onExitLayoutOrScroll(false);
            throw th;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f3429a.add(recyclerView);
    }

    void f(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.f3430b == 0) {
            this.f3430b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.e(i10, i11);
    }

    void g(long j10) {
        b();
        d(j10);
    }

    public void j(RecyclerView recyclerView) {
        this.f3429a.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            z.i.a("RV Prefetch");
            if (!this.f3429a.isEmpty()) {
                int size = this.f3429a.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = (RecyclerView) this.f3429a.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f3431c);
                    this.f3430b = 0L;
                    z.i.b();
                }
            }
        } finally {
            this.f3430b = 0L;
            z.i.b();
        }
    }
}
