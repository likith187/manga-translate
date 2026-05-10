package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.p implements RecyclerView.z.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d[] f3190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    t f3191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    t f3192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o f3195g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BitSet f3198j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f3203o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f3204p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private SavedState f3205q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3206r;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int[] f3211w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3189a = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f3196h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f3197i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f3199k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f3200l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    LazySpanLookup f3201m = new LazySpanLookup();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3202n = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Rect f3207s = new Rect();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final b f3208t = new b();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f3209u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f3210v = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Runnable f3212x = new a();

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3220b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3221c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f3222f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f3223h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int[] f3224i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        List f3225j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f3226k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f3227l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f3228m;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState() {
        }

        void a() {
            this.f3222f = null;
            this.f3221c = 0;
            this.f3219a = -1;
            this.f3220b = -1;
        }

        void b() {
            this.f3222f = null;
            this.f3221c = 0;
            this.f3223h = 0;
            this.f3224i = null;
            this.f3225j = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f3219a);
            parcel.writeInt(this.f3220b);
            parcel.writeInt(this.f3221c);
            if (this.f3221c > 0) {
                parcel.writeIntArray(this.f3222f);
            }
            parcel.writeInt(this.f3223h);
            if (this.f3223h > 0) {
                parcel.writeIntArray(this.f3224i);
            }
            parcel.writeInt(this.f3226k ? 1 : 0);
            parcel.writeInt(this.f3227l ? 1 : 0);
            parcel.writeInt(this.f3228m ? 1 : 0);
            parcel.writeList(this.f3225j);
        }

        SavedState(Parcel parcel) {
            this.f3219a = parcel.readInt();
            this.f3220b = parcel.readInt();
            int i10 = parcel.readInt();
            this.f3221c = i10;
            if (i10 > 0) {
                int[] iArr = new int[i10];
                this.f3222f = iArr;
                parcel.readIntArray(iArr);
            }
            int i11 = parcel.readInt();
            this.f3223h = i11;
            if (i11 > 0) {
                int[] iArr2 = new int[i11];
                this.f3224i = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f3226k = parcel.readInt() == 1;
            this.f3227l = parcel.readInt() == 1;
            this.f3228m = parcel.readInt() == 1;
            this.f3225j = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f3221c = savedState.f3221c;
            this.f3219a = savedState.f3219a;
            this.f3220b = savedState.f3220b;
            this.f3222f = savedState.f3222f;
            this.f3223h = savedState.f3223h;
            this.f3224i = savedState.f3224i;
            this.f3226k = savedState.f3226k;
            this.f3227l = savedState.f3227l;
            this.f3228m = savedState.f3228m;
            this.f3225j = savedState.f3225j;
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.q();
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3231b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3232c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3233d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f3234e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f3235f;

        b() {
            c();
        }

        void a() {
            this.f3231b = this.f3232c ? StaggeredGridLayoutManager.this.f3191c.i() : StaggeredGridLayoutManager.this.f3191c.n();
        }

        void b(int i10) {
            if (this.f3232c) {
                this.f3231b = StaggeredGridLayoutManager.this.f3191c.i() - i10;
            } else {
                this.f3231b = StaggeredGridLayoutManager.this.f3191c.n() + i10;
            }
        }

        void c() {
            this.f3230a = -1;
            this.f3231b = Integer.MIN_VALUE;
            this.f3232c = false;
            this.f3233d = false;
            this.f3234e = false;
            int[] iArr = this.f3235f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(d[] dVarArr) {
            int length = dVarArr.length;
            int[] iArr = this.f3235f;
            if (iArr == null || iArr.length < length) {
                this.f3235f = new int[StaggeredGridLayoutManager.this.f3190b.length];
            }
            for (int i10 = 0; i10 < length; i10++) {
                this.f3235f[i10] = dVarArr[i10].p(Integer.MIN_VALUE);
            }
        }
    }

    public static class c extends RecyclerView.q {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d f3237e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f3238f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean e() {
            return this.f3238f;
        }

        public c(int i10, int i11) {
            super(i10, i11);
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList f3239a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3240b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3241c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3242d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f3243e;

        d(int i10) {
            this.f3243e = i10;
        }

        void a(View view) {
            c cVarN = n(view);
            cVarN.f3237e = this;
            this.f3239a.add(view);
            this.f3241c = Integer.MIN_VALUE;
            if (this.f3239a.size() == 1) {
                this.f3240b = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f3242d += StaggeredGridLayoutManager.this.f3191c.e(view);
            }
        }

        void b(boolean z10, int i10) {
            int iL = z10 ? l(Integer.MIN_VALUE) : p(Integer.MIN_VALUE);
            e();
            if (iL == Integer.MIN_VALUE) {
                return;
            }
            if (!z10 || iL >= StaggeredGridLayoutManager.this.f3191c.i()) {
                if (z10 || iL <= StaggeredGridLayoutManager.this.f3191c.n()) {
                    if (i10 != Integer.MIN_VALUE) {
                        iL += i10;
                    }
                    this.f3241c = iL;
                    this.f3240b = iL;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList arrayList = this.f3239a;
            View view = (View) arrayList.get(arrayList.size() - 1);
            c cVarN = n(view);
            this.f3241c = StaggeredGridLayoutManager.this.f3191c.d(view);
            if (cVarN.f3238f && (fullSpanItemF = StaggeredGridLayoutManager.this.f3201m.f(cVarN.a())) != null && fullSpanItemF.f3216b == 1) {
                this.f3241c += fullSpanItemF.a(this.f3243e);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = (View) this.f3239a.get(0);
            c cVarN = n(view);
            this.f3240b = StaggeredGridLayoutManager.this.f3191c.g(view);
            if (cVarN.f3238f && (fullSpanItemF = StaggeredGridLayoutManager.this.f3201m.f(cVarN.a())) != null && fullSpanItemF.f3216b == -1) {
                this.f3240b -= fullSpanItemF.a(this.f3243e);
            }
        }

        void e() {
            this.f3239a.clear();
            q();
            this.f3242d = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.f3196h ? i(this.f3239a.size() - 1, -1, true) : i(0, this.f3239a.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.f3196h ? i(0, this.f3239a.size(), true) : i(this.f3239a.size() - 1, -1, true);
        }

        int h(int i10, int i11, boolean z10, boolean z11, boolean z12) {
            int iN = StaggeredGridLayoutManager.this.f3191c.n();
            int i12 = StaggeredGridLayoutManager.this.f3191c.i();
            int i13 = i11 > i10 ? 1 : -1;
            while (i10 != i11) {
                View view = (View) this.f3239a.get(i10);
                int iG = StaggeredGridLayoutManager.this.f3191c.g(view);
                int iD = StaggeredGridLayoutManager.this.f3191c.d(view);
                boolean z13 = false;
                boolean z14 = !z12 ? iG >= i12 : iG > i12;
                if (!z12 ? iD > iN : iD >= iN) {
                    z13 = true;
                }
                if (z14 && z13) {
                    if (z10 && z11) {
                        if (iG >= iN && iD <= i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z11) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (iG < iN || iD > i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i10 += i13;
            }
            return -1;
        }

        int i(int i10, int i11, boolean z10) {
            return h(i10, i11, false, false, z10);
        }

        public int j() {
            return this.f3242d;
        }

        int k() {
            int i10 = this.f3241c;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            c();
            return this.f3241c;
        }

        int l(int i10) {
            int i11 = this.f3241c;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f3239a.size() == 0) {
                return i10;
            }
            c();
            return this.f3241c;
        }

        public View m(int i10, int i11) {
            View view = null;
            if (i11 != -1) {
                int size = this.f3239a.size() - 1;
                while (size >= 0) {
                    View view2 = (View) this.f3239a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f3196h && staggeredGridLayoutManager.getPosition(view2) >= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f3196h && staggeredGridLayoutManager2.getPosition(view2) <= i10) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f3239a.size();
                int i12 = 0;
                while (i12 < size2) {
                    View view3 = (View) this.f3239a.get(i12);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f3196h && staggeredGridLayoutManager3.getPosition(view3) <= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f3196h && staggeredGridLayoutManager4.getPosition(view3) >= i10) || !view3.hasFocusable()) {
                        break;
                    }
                    i12++;
                    view = view3;
                }
            }
            return view;
        }

        c n(View view) {
            return (c) view.getLayoutParams();
        }

        int o() {
            int i10 = this.f3240b;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            d();
            return this.f3240b;
        }

        int p(int i10) {
            int i11 = this.f3240b;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.f3239a.size() == 0) {
                return i10;
            }
            d();
            return this.f3240b;
        }

        void q() {
            this.f3240b = Integer.MIN_VALUE;
            this.f3241c = Integer.MIN_VALUE;
        }

        void r(int i10) {
            int i11 = this.f3240b;
            if (i11 != Integer.MIN_VALUE) {
                this.f3240b = i11 + i10;
            }
            int i12 = this.f3241c;
            if (i12 != Integer.MIN_VALUE) {
                this.f3241c = i12 + i10;
            }
        }

        void s() {
            int size = this.f3239a.size();
            View view = (View) this.f3239a.remove(size - 1);
            c cVarN = n(view);
            cVarN.f3237e = null;
            if (cVarN.c() || cVarN.b()) {
                this.f3242d -= StaggeredGridLayoutManager.this.f3191c.e(view);
            }
            if (size == 1) {
                this.f3240b = Integer.MIN_VALUE;
            }
            this.f3241c = Integer.MIN_VALUE;
        }

        void t() {
            View view = (View) this.f3239a.remove(0);
            c cVarN = n(view);
            cVarN.f3237e = null;
            if (this.f3239a.size() == 0) {
                this.f3241c = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f3242d -= StaggeredGridLayoutManager.this.f3191c.e(view);
            }
            this.f3240b = Integer.MIN_VALUE;
        }

        void u(View view) {
            c cVarN = n(view);
            cVarN.f3237e = this;
            this.f3239a.add(0, view);
            this.f3240b = Integer.MIN_VALUE;
            if (this.f3239a.size() == 1) {
                this.f3241c = Integer.MIN_VALUE;
            }
            if (cVarN.c() || cVarN.b()) {
                this.f3242d += StaggeredGridLayoutManager.this.f3191c.e(view);
            }
        }

        void v(int i10) {
            this.f3240b = i10;
            this.f3241c = i10;
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.p.d properties = RecyclerView.p.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f3159a);
        c0(properties.f3160b);
        setReverseLayout(properties.f3161c);
        this.f3195g = new o();
        x();
    }

    private int D(int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    private void E(RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10) {
        int i10;
        int I = I(Integer.MIN_VALUE);
        if (I != Integer.MIN_VALUE && (i10 = this.f3191c.i() - I) > 0) {
            int i11 = i10 - (-scrollBy(-i10, wVar, a0Var));
            if (!z10 || i11 <= 0) {
                return;
            }
            this.f3191c.s(i11);
        }
    }

    private void F(RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10) {
        int iN;
        int iL = L(Integer.MAX_VALUE);
        if (iL != Integer.MAX_VALUE && (iN = iL - this.f3191c.n()) > 0) {
            int iScrollBy = iN - scrollBy(iN, wVar, a0Var);
            if (!z10 || iScrollBy <= 0) {
                return;
            }
            this.f3191c.s(-iScrollBy);
        }
    }

    private int I(int i10) {
        int iL = this.f3190b[0].l(i10);
        for (int i11 = 1; i11 < this.f3189a; i11++) {
            int iL2 = this.f3190b[i11].l(i10);
            if (iL2 > iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    private int J(int i10) {
        int iP = this.f3190b[0].p(i10);
        for (int i11 = 1; i11 < this.f3189a; i11++) {
            int iP2 = this.f3190b[i11].p(i10);
            if (iP2 > iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private int K(int i10) {
        int iL = this.f3190b[0].l(i10);
        for (int i11 = 1; i11 < this.f3189a; i11++) {
            int iL2 = this.f3190b[i11].l(i10);
            if (iL2 < iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    private int L(int i10) {
        int iP = this.f3190b[0].p(i10);
        for (int i11 = 1; i11 < this.f3189a; i11++) {
            int iP2 = this.f3190b[i11].p(i10);
            if (iP2 < iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    private d M(o oVar) {
        int i10;
        int i11;
        int i12;
        if (T(oVar.f3446e)) {
            i11 = this.f3189a - 1;
            i10 = -1;
            i12 = -1;
        } else {
            i10 = this.f3189a;
            i11 = 0;
            i12 = 1;
        }
        d dVar = null;
        if (oVar.f3446e == 1) {
            int iN = this.f3191c.n();
            int i13 = Integer.MAX_VALUE;
            while (i11 != i10) {
                d dVar2 = this.f3190b[i11];
                int iL = dVar2.l(iN);
                if (iL < i13) {
                    dVar = dVar2;
                    i13 = iL;
                }
                i11 += i12;
            }
            return dVar;
        }
        int i14 = this.f3191c.i();
        int i15 = Integer.MIN_VALUE;
        while (i11 != i10) {
            d dVar3 = this.f3190b[i11];
            int iP = dVar3.p(i14);
            if (iP > i15) {
                dVar = dVar3;
                i15 = iP;
            }
            i11 += i12;
        }
        return dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void N(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.f3197i
            if (r0 == 0) goto L9
            int r0 = r6.H()
            goto Ld
        L9:
            int r0 = r6.G()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1b
            if (r7 >= r8) goto L17
            int r2 = r8 + 1
        L15:
            r3 = r7
            goto L1e
        L17:
            int r2 = r7 + 1
            r3 = r8
            goto L1e
        L1b:
            int r2 = r7 + r8
            goto L15
        L1e:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.f3201m
            r4.h(r3)
            r4 = 1
            if (r9 == r4) goto L3d
            r5 = 2
            if (r9 == r5) goto L37
            if (r9 == r1) goto L2c
            goto L42
        L2c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f3201m
            r9.k(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.f3201m
            r7.j(r8, r4)
            goto L42
        L37:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f3201m
            r9.k(r7, r8)
            goto L42
        L3d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f3201m
            r9.j(r7, r8)
        L42:
            if (r2 > r0) goto L45
            return
        L45:
            boolean r7 = r6.f3197i
            if (r7 == 0) goto L4e
            int r7 = r6.G()
            goto L52
        L4e:
            int r7 = r6.H()
        L52:
            if (r3 > r7) goto L57
            r6.requestLayout()
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.N(int, int, int):void");
    }

    private void Q(View view, int i10, int i11, boolean z10) {
        calculateItemDecorationsForChild(view, this.f3207s);
        c cVar = (c) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) cVar).leftMargin;
        Rect rect = this.f3207s;
        int iK0 = k0(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) cVar).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) cVar).topMargin;
        Rect rect2 = this.f3207s;
        int iK02 = k0(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) cVar).bottomMargin + rect2.bottom);
        if (z10 ? shouldReMeasureChild(view, iK0, iK02, cVar) : shouldMeasureChild(view, iK0, iK02, cVar)) {
            view.measure(iK0, iK02);
        }
    }

    private void R(View view, c cVar, boolean z10) {
        if (cVar.f3238f) {
            if (this.f3193e == 1) {
                Q(view, this.f3206r, RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z10);
                return;
            } else {
                Q(view, RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), this.f3206r, z10);
                return;
            }
        }
        if (this.f3193e == 1) {
            Q(view, RecyclerView.p.getChildMeasureSpec(this.f3194f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).width, false), RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) cVar).height, true), z10);
        } else {
            Q(view, RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) cVar).width, true), RecyclerView.p.getChildMeasureSpec(this.f3194f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) cVar).height, false), z10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void S(androidx.recyclerview.widget.RecyclerView.w r9, androidx.recyclerview.widget.RecyclerView.a0 r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 374
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.S(androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$a0, boolean):void");
    }

    private boolean T(int i10) {
        if (this.f3193e == 0) {
            return (i10 == -1) != this.f3197i;
        }
        return ((i10 == -1) == this.f3197i) == isLayoutRTL();
    }

    private void V(View view) {
        for (int i10 = this.f3189a - 1; i10 >= 0; i10--) {
            this.f3190b[i10].u(view);
        }
    }

    private void W(RecyclerView.w wVar, o oVar) {
        if (!oVar.f3442a || oVar.f3450i) {
            return;
        }
        if (oVar.f3443b == 0) {
            if (oVar.f3446e == -1) {
                X(wVar, oVar.f3448g);
                return;
            } else {
                Y(wVar, oVar.f3447f);
                return;
            }
        }
        if (oVar.f3446e != -1) {
            int iK = K(oVar.f3448g) - oVar.f3448g;
            Y(wVar, iK < 0 ? oVar.f3447f : Math.min(iK, oVar.f3443b) + oVar.f3447f);
        } else {
            int i10 = oVar.f3447f;
            int iJ = i10 - J(i10);
            X(wVar, iJ < 0 ? oVar.f3448g : oVar.f3448g - Math.min(iJ, oVar.f3443b));
        }
    }

    private void X(RecyclerView.w wVar, int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f3191c.g(childAt) < i10 || this.f3191c.r(childAt) < i10) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f3238f) {
                for (int i11 = 0; i11 < this.f3189a; i11++) {
                    if (this.f3190b[i11].f3239a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f3189a; i12++) {
                    this.f3190b[i12].s();
                }
            } else if (cVar.f3237e.f3239a.size() == 1) {
                return;
            } else {
                cVar.f3237e.s();
            }
            removeAndRecycleView(childAt, wVar);
        }
    }

    private void Y(RecyclerView.w wVar, int i10) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f3191c.d(childAt) > i10 || this.f3191c.q(childAt) > i10) {
                return;
            }
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.f3238f) {
                for (int i11 = 0; i11 < this.f3189a; i11++) {
                    if (this.f3190b[i11].f3239a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.f3189a; i12++) {
                    this.f3190b[i12].t();
                }
            } else if (cVar.f3237e.f3239a.size() == 1) {
                return;
            } else {
                cVar.f3237e.t();
            }
            removeAndRecycleView(childAt, wVar);
        }
    }

    private void Z() {
        if (this.f3192d.l() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            float fE = this.f3192d.e(childAt);
            if (fE >= fMax) {
                if (((c) childAt.getLayoutParams()).e()) {
                    fE = (fE * 1.0f) / this.f3189a;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i11 = this.f3194f;
        int iRound = Math.round(fMax * this.f3189a);
        if (this.f3192d.l() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f3192d.o());
        }
        i0(iRound);
        if (this.f3194f == i11) {
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            c cVar = (c) childAt2.getLayoutParams();
            if (!cVar.f3238f) {
                if (isLayoutRTL() && this.f3193e == 1) {
                    int i13 = this.f3189a;
                    int i14 = cVar.f3237e.f3243e;
                    childAt2.offsetLeftAndRight(((-((i13 - 1) - i14)) * this.f3194f) - ((-((i13 - 1) - i14)) * i11));
                } else {
                    int i15 = cVar.f3237e.f3243e;
                    int i16 = this.f3194f * i15;
                    int i17 = i15 * i11;
                    if (this.f3193e == 1) {
                        childAt2.offsetLeftAndRight(i16 - i17);
                    } else {
                        childAt2.offsetTopAndBottom(i16 - i17);
                    }
                }
            }
        }
    }

    private void a0() {
        if (this.f3193e == 1 || !isLayoutRTL()) {
            this.f3197i = this.f3196h;
        } else {
            this.f3197i = !this.f3196h;
        }
    }

    private void b0(int i10) {
        o oVar = this.f3195g;
        oVar.f3446e = i10;
        oVar.f3445d = this.f3197i != (i10 == -1) ? -1 : 1;
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.f3193e == 1) ? 1 : Integer.MIN_VALUE : this.f3193e == 0 ? 1 : Integer.MIN_VALUE : this.f3193e == 1 ? -1 : Integer.MIN_VALUE : this.f3193e == 0 ? -1 : Integer.MIN_VALUE : (this.f3193e != 1 && isLayoutRTL()) ? -1 : 1 : (this.f3193e != 1 && isLayoutRTL()) ? 1 : -1;
    }

    private void d0(int i10, int i11) {
        for (int i12 = 0; i12 < this.f3189a; i12++) {
            if (!this.f3190b[i12].f3239a.isEmpty()) {
                j0(this.f3190b[i12], i10, i11);
            }
        }
    }

    private boolean e0(RecyclerView.a0 a0Var, b bVar) {
        bVar.f3230a = this.f3203o ? D(a0Var.b()) : z(a0Var.b());
        bVar.f3231b = Integer.MIN_VALUE;
        return true;
    }

    private void h0(int i10, RecyclerView.a0 a0Var) {
        int iO;
        int iO2;
        int iC;
        o oVar = this.f3195g;
        boolean z10 = false;
        oVar.f3443b = 0;
        oVar.f3444c = i10;
        if (!isSmoothScrolling() || (iC = a0Var.c()) == -1) {
            iO = 0;
            iO2 = 0;
        } else {
            if (this.f3197i == (iC < i10)) {
                iO = this.f3191c.o();
                iO2 = 0;
            } else {
                iO2 = this.f3191c.o();
                iO = 0;
            }
        }
        if (getClipToPadding()) {
            this.f3195g.f3447f = this.f3191c.n() - iO2;
            this.f3195g.f3448g = this.f3191c.i() + iO;
        } else {
            this.f3195g.f3448g = this.f3191c.h() + iO;
            this.f3195g.f3447f = -iO2;
        }
        o oVar2 = this.f3195g;
        oVar2.f3449h = false;
        oVar2.f3442a = true;
        if (this.f3191c.l() == 0 && this.f3191c.h() == 0) {
            z10 = true;
        }
        oVar2.f3450i = z10;
    }

    private void j0(d dVar, int i10, int i11) {
        int iJ = dVar.j();
        if (i10 == -1) {
            if (dVar.o() + iJ <= i11) {
                this.f3198j.set(dVar.f3243e, false);
            }
        } else if (dVar.k() - iJ >= i11) {
            this.f3198j.set(dVar.f3243e, false);
        }
    }

    private void k(View view) {
        for (int i10 = this.f3189a - 1; i10 >= 0; i10--) {
            this.f3190b[i10].a(view);
        }
    }

    private int k0(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    private void l(b bVar) {
        SavedState savedState = this.f3205q;
        int i10 = savedState.f3221c;
        if (i10 > 0) {
            if (i10 == this.f3189a) {
                for (int i11 = 0; i11 < this.f3189a; i11++) {
                    this.f3190b[i11].e();
                    SavedState savedState2 = this.f3205q;
                    int i12 = savedState2.f3222f[i11];
                    if (i12 != Integer.MIN_VALUE) {
                        i12 += savedState2.f3227l ? this.f3191c.i() : this.f3191c.n();
                    }
                    this.f3190b[i11].v(i12);
                }
            } else {
                savedState.b();
                SavedState savedState3 = this.f3205q;
                savedState3.f3219a = savedState3.f3220b;
            }
        }
        SavedState savedState4 = this.f3205q;
        this.f3204p = savedState4.f3228m;
        setReverseLayout(savedState4.f3226k);
        a0();
        SavedState savedState5 = this.f3205q;
        int i13 = savedState5.f3219a;
        if (i13 != -1) {
            this.f3199k = i13;
            bVar.f3232c = savedState5.f3227l;
        } else {
            bVar.f3232c = this.f3197i;
        }
        if (savedState5.f3223h > 1) {
            LazySpanLookup lazySpanLookup = this.f3201m;
            lazySpanLookup.f3213a = savedState5.f3224i;
            lazySpanLookup.f3214b = savedState5.f3225j;
        }
    }

    private void o(View view, c cVar, o oVar) {
        if (oVar.f3446e == 1) {
            if (cVar.f3238f) {
                k(view);
                return;
            } else {
                cVar.f3237e.a(view);
                return;
            }
        }
        if (cVar.f3238f) {
            V(view);
        } else {
            cVar.f3237e.u(view);
        }
    }

    private int p(int i10) {
        if (getChildCount() == 0) {
            return this.f3197i ? 1 : -1;
        }
        return (i10 < G()) != this.f3197i ? -1 : 1;
    }

    private boolean r(d dVar) {
        if (this.f3197i) {
            if (dVar.k() < this.f3191c.i()) {
                ArrayList arrayList = dVar.f3239a;
                return !dVar.n((View) arrayList.get(arrayList.size() - 1)).f3238f;
            }
        } else if (dVar.o() > this.f3191c.n()) {
            return !dVar.n((View) dVar.f3239a.get(0)).f3238f;
        }
        return false;
    }

    private int s(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return w.a(a0Var, this.f3191c, B(!this.f3210v), A(!this.f3210v), this, this.f3210v);
    }

    private int t(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return w.b(a0Var, this.f3191c, B(!this.f3210v), A(!this.f3210v), this, this.f3210v, this.f3197i);
    }

    private int u(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return w.c(a0Var, this.f3191c, B(!this.f3210v), A(!this.f3210v), this, this.f3210v);
    }

    private LazySpanLookup.FullSpanItem v(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3217c = new int[this.f3189a];
        for (int i11 = 0; i11 < this.f3189a; i11++) {
            fullSpanItem.f3217c[i11] = i10 - this.f3190b[i11].l(i10);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem w(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f3217c = new int[this.f3189a];
        for (int i11 = 0; i11 < this.f3189a; i11++) {
            fullSpanItem.f3217c[i11] = this.f3190b[i11].p(i10) - i10;
        }
        return fullSpanItem;
    }

    private void x() {
        this.f3191c = t.b(this, this.f3193e);
        this.f3192d = t.b(this, 1 - this.f3193e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int y(RecyclerView.w wVar, o oVar, RecyclerView.a0 a0Var) {
        d dVarM;
        int iE;
        int i10;
        int iE2;
        int iE3;
        boolean z10;
        ?? r92 = 0;
        this.f3198j.set(0, this.f3189a, true);
        int i11 = this.f3195g.f3450i ? oVar.f3446e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : oVar.f3446e == 1 ? oVar.f3448g + oVar.f3443b : oVar.f3447f - oVar.f3443b;
        d0(oVar.f3446e, i11);
        int i12 = this.f3197i ? this.f3191c.i() : this.f3191c.n();
        ?? r02 = false;
        while (oVar.a(a0Var) && (this.f3195g.f3450i || !this.f3198j.isEmpty())) {
            View viewB = oVar.b(wVar);
            c cVar = (c) viewB.getLayoutParams();
            int iA = cVar.a();
            int iG = this.f3201m.g(iA);
            ?? r32 = iG == -1 ? 1 : r92;
            if (r32 != 0) {
                dVarM = cVar.f3238f ? this.f3190b[r92] : M(oVar);
                this.f3201m.n(iA, dVarM);
            } else {
                dVarM = this.f3190b[iG];
            }
            d dVar = dVarM;
            cVar.f3237e = dVar;
            if (oVar.f3446e == 1) {
                addView(viewB);
            } else {
                addView(viewB, r92);
            }
            R(viewB, cVar, r92);
            if (oVar.f3446e == 1) {
                int I = cVar.f3238f ? I(i12) : dVar.l(i12);
                int iE4 = this.f3191c.e(viewB) + I;
                if (r32 != 0 && cVar.f3238f) {
                    LazySpanLookup.FullSpanItem fullSpanItemV = v(I);
                    fullSpanItemV.f3216b = -1;
                    fullSpanItemV.f3215a = iA;
                    this.f3201m.a(fullSpanItemV);
                }
                i10 = iE4;
                iE = I;
            } else {
                int iL = cVar.f3238f ? L(i12) : dVar.p(i12);
                iE = iL - this.f3191c.e(viewB);
                if (r32 != 0 && cVar.f3238f) {
                    LazySpanLookup.FullSpanItem fullSpanItemW = w(iL);
                    fullSpanItemW.f3216b = 1;
                    fullSpanItemW.f3215a = iA;
                    this.f3201m.a(fullSpanItemW);
                }
                i10 = iL;
            }
            if (cVar.f3238f && oVar.f3445d == -1) {
                if (r32 != 0) {
                    this.f3209u = true;
                } else {
                    if (!(oVar.f3446e == 1 ? m() : n())) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.f3201m.f(iA);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f3218f = true;
                        }
                        this.f3209u = true;
                    }
                }
            }
            o(viewB, cVar, oVar);
            if (isLayoutRTL() && this.f3193e == 1) {
                int i13 = cVar.f3238f ? this.f3192d.i() : this.f3192d.i() - (((this.f3189a - 1) - dVar.f3243e) * this.f3194f);
                iE3 = i13;
                iE2 = i13 - this.f3192d.e(viewB);
            } else {
                int iN = cVar.f3238f ? this.f3192d.n() : (dVar.f3243e * this.f3194f) + this.f3192d.n();
                iE2 = iN;
                iE3 = this.f3192d.e(viewB) + iN;
            }
            if (this.f3193e == 1) {
                layoutDecoratedWithMargins(viewB, iE2, iE, iE3, i10);
            } else {
                layoutDecoratedWithMargins(viewB, iE, iE2, i10, iE3);
            }
            if (cVar.f3238f) {
                d0(this.f3195g.f3446e, i11);
            } else {
                j0(dVar, this.f3195g.f3446e, i11);
            }
            W(wVar, this.f3195g);
            if (!this.f3195g.f3449h || !viewB.hasFocusable()) {
                z10 = false;
            } else if (cVar.f3238f) {
                this.f3198j.clear();
                z10 = false;
            } else {
                z10 = false;
                this.f3198j.set(dVar.f3243e, false);
            }
            r92 = z10;
            r02 = true;
        }
        ?? r33 = r92;
        if (r02 == false) {
            W(wVar, this.f3195g);
        }
        int iN2 = this.f3195g.f3446e == -1 ? this.f3191c.n() - L(this.f3191c.n()) : I(this.f3191c.i()) - this.f3191c.i();
        return iN2 > 0 ? Math.min(oVar.f3443b, iN2) : r33 == true ? 1 : 0;
    }

    private int z(int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            int position = getPosition(getChildAt(i11));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    View A(boolean z10) {
        int iN = this.f3191c.n();
        int i10 = this.f3191c.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iG = this.f3191c.g(childAt);
            int iD = this.f3191c.d(childAt);
            if (iD > iN && iG < i10) {
                if (iD <= i10 || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View B(boolean z10) {
        int iN = this.f3191c.n();
        int i10 = this.f3191c.i();
        int childCount = getChildCount();
        View view = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int iG = this.f3191c.g(childAt);
            if (this.f3191c.d(childAt) > iN && iG < i10) {
                if (iG >= iN || !z10) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    int C() {
        View viewA = this.f3197i ? A(true) : B(true);
        if (viewA == null) {
            return -1;
        }
        return getPosition(viewA);
    }

    int G() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int H() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View O() {
        /*
            r12 = this;
            int r0 = r12.getChildCount()
            int r1 = r0 + (-1)
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.f3189a
            r2.<init>(r3)
            int r3 = r12.f3189a
            r4 = 0
            r5 = 1
            r2.set(r4, r3, r5)
            int r3 = r12.f3193e
            r6 = -1
            if (r3 != r5) goto L21
            boolean r3 = r12.isLayoutRTL()
            if (r3 == 0) goto L21
            r3 = r5
            goto L22
        L21:
            r3 = r6
        L22:
            boolean r7 = r12.f3197i
            if (r7 == 0) goto L28
            r0 = r6
            goto L29
        L28:
            r1 = r4
        L29:
            if (r1 >= r0) goto L2c
            r6 = r5
        L2c:
            if (r1 == r0) goto La4
            android.view.View r7 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r8.f3237e
            int r9 = r9.f3243e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L52
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r8.f3237e
            boolean r9 = r12.r(r9)
            if (r9 == 0) goto L4b
            return r7
        L4b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r8.f3237e
            int r9 = r9.f3243e
            r2.clear(r9)
        L52:
            boolean r9 = r8.f3238f
            if (r9 == 0) goto L57
            goto La2
        L57:
            int r9 = r1 + r6
            if (r9 == r0) goto La2
            android.view.View r9 = r12.getChildAt(r9)
            boolean r10 = r12.f3197i
            if (r10 == 0) goto L75
            androidx.recyclerview.widget.t r10 = r12.f3191c
            int r10 = r10.d(r7)
            androidx.recyclerview.widget.t r11 = r12.f3191c
            int r11 = r11.d(r9)
            if (r10 >= r11) goto L72
            return r7
        L72:
            if (r10 != r11) goto La2
            goto L86
        L75:
            androidx.recyclerview.widget.t r10 = r12.f3191c
            int r10 = r10.g(r7)
            androidx.recyclerview.widget.t r11 = r12.f3191c
            int r11 = r11.g(r9)
            if (r10 <= r11) goto L84
            return r7
        L84:
            if (r10 != r11) goto La2
        L86:
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.c) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r8 = r8.f3237e
            int r8 = r8.f3243e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$d r9 = r9.f3237e
            int r9 = r9.f3243e
            int r8 = r8 - r9
            if (r8 >= 0) goto L99
            r8 = r5
            goto L9a
        L99:
            r8 = r4
        L9a:
            if (r3 >= 0) goto L9e
            r9 = r5
            goto L9f
        L9e:
            r9 = r4
        L9f:
            if (r8 == r9) goto La2
            return r7
        La2:
            int r1 = r1 + r6
            goto L2c
        La4:
            r12 = 0
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.O():android.view.View");
    }

    public void P() {
        this.f3201m.b();
        requestLayout();
    }

    void U(int i10, RecyclerView.a0 a0Var) {
        int iG;
        int i11;
        if (i10 > 0) {
            iG = H();
            i11 = 1;
        } else {
            iG = G();
            i11 = -1;
        }
        this.f3195g.f3442a = true;
        h0(iG, a0Var);
        b0(i11);
        o oVar = this.f3195g;
        oVar.f3444c = iG + oVar.f3445d;
        oVar.f3443b = Math.abs(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f3205q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void c0(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 != this.f3189a) {
            P();
            this.f3189a = i10;
            this.f3198j = new BitSet(this.f3189a);
            this.f3190b = new d[this.f3189a];
            for (int i11 = 0; i11 < this.f3189a; i11++) {
                this.f3190b[i11] = new d(i11);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        return this.f3193e == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        return this.f3193e == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean checkLayoutParams(RecyclerView.q qVar) {
        return qVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.a0 a0Var, RecyclerView.p.c cVar) {
        int iL;
        int iP;
        if (this.f3193e != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        U(i10, a0Var);
        int[] iArr = this.f3211w;
        if (iArr == null || iArr.length < this.f3189a) {
            this.f3211w = new int[this.f3189a];
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f3189a; i13++) {
            o oVar = this.f3195g;
            if (oVar.f3445d == -1) {
                iL = oVar.f3447f;
                iP = this.f3190b[i13].p(iL);
            } else {
                iL = this.f3190b[i13].l(oVar.f3448g);
                iP = this.f3195g.f3448g;
            }
            int i14 = iL - iP;
            if (i14 >= 0) {
                this.f3211w[i12] = i14;
                i12++;
            }
        }
        Arrays.sort(this.f3211w, 0, i12);
        for (int i15 = 0; i15 < i12 && this.f3195g.a(a0Var); i15++) {
            cVar.a(this.f3195g.f3444c, this.f3211w[i15]);
            o oVar2 = this.f3195g;
            oVar2.f3444c += oVar2.f3445d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.a0 a0Var) {
        return s(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.a0 a0Var) {
        return t(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.a0 a0Var) {
        return u(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z.b
    public PointF computeScrollVectorForPosition(int i10) {
        int iP = p(i10);
        PointF pointF = new PointF();
        if (iP == 0) {
            return null;
        }
        if (this.f3193e == 0) {
            pointF.x = iP;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iP;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.a0 a0Var) {
        return s(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.a0 a0Var) {
        return t(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.a0 a0Var) {
        return u(a0Var);
    }

    boolean f0(RecyclerView.a0 a0Var, b bVar) {
        int i10;
        if (!a0Var.e() && (i10 = this.f3199k) != -1) {
            if (i10 >= 0 && i10 < a0Var.b()) {
                SavedState savedState = this.f3205q;
                if (savedState == null || savedState.f3219a == -1 || savedState.f3221c < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.f3199k);
                    if (viewFindViewByPosition != null) {
                        bVar.f3230a = this.f3197i ? H() : G();
                        if (this.f3200l != Integer.MIN_VALUE) {
                            if (bVar.f3232c) {
                                bVar.f3231b = (this.f3191c.i() - this.f3200l) - this.f3191c.d(viewFindViewByPosition);
                            } else {
                                bVar.f3231b = (this.f3191c.n() + this.f3200l) - this.f3191c.g(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.f3191c.e(viewFindViewByPosition) > this.f3191c.o()) {
                            bVar.f3231b = bVar.f3232c ? this.f3191c.i() : this.f3191c.n();
                            return true;
                        }
                        int iG = this.f3191c.g(viewFindViewByPosition) - this.f3191c.n();
                        if (iG < 0) {
                            bVar.f3231b = -iG;
                            return true;
                        }
                        int i11 = this.f3191c.i() - this.f3191c.d(viewFindViewByPosition);
                        if (i11 < 0) {
                            bVar.f3231b = i11;
                            return true;
                        }
                        bVar.f3231b = Integer.MIN_VALUE;
                    } else {
                        int i12 = this.f3199k;
                        bVar.f3230a = i12;
                        int i13 = this.f3200l;
                        if (i13 == Integer.MIN_VALUE) {
                            bVar.f3232c = p(i12) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i13);
                        }
                        bVar.f3233d = true;
                    }
                } else {
                    bVar.f3231b = Integer.MIN_VALUE;
                    bVar.f3230a = this.f3199k;
                }
                return true;
            }
            this.f3199k = -1;
            this.f3200l = Integer.MIN_VALUE;
        }
        return false;
    }

    void g0(RecyclerView.a0 a0Var, b bVar) {
        if (f0(a0Var, bVar) || e0(a0Var, bVar)) {
            return;
        }
        bVar.a();
        bVar.f3230a = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return this.f3193e == 0 ? new c(-2, -1) : new c(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    void i0(int i10) {
        this.f3194f = i10 / this.f3189a;
        this.f3206r = View.MeasureSpec.makeMeasureSpec(i10, this.f3192d.l());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return this.f3202n != 0;
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    boolean m() {
        int iL = this.f3190b[0].l(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f3189a; i10++) {
            if (this.f3190b[i10].l(Integer.MIN_VALUE) != iL) {
                return false;
            }
        }
        return true;
    }

    boolean n() {
        int iP = this.f3190b[0].p(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.f3189a; i10++) {
            if (this.f3190b[i10].p(Integer.MIN_VALUE) != iP) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void offsetChildrenHorizontal(int i10) {
        super.offsetChildrenHorizontal(i10);
        for (int i11 = 0; i11 < this.f3189a; i11++) {
            this.f3190b[i11].r(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        for (int i11 = 0; i11 < this.f3189a; i11++) {
            this.f3190b[i11].r(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onAdapterChanged(RecyclerView.h hVar, RecyclerView.h hVar2) {
        this.f3201m.b();
        for (int i10 = 0; i10 < this.f3189a; i10++) {
            this.f3190b[i10].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        removeCallbacks(this.f3212x);
        for (int i10 = 0; i10 < this.f3189a; i10++) {
            this.f3190b[i10].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        View viewFindContainingItemView;
        View viewM;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        a0();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        c cVar = (c) viewFindContainingItemView.getLayoutParams();
        boolean z10 = cVar.f3238f;
        d dVar = cVar.f3237e;
        int iH = iConvertFocusDirectionToLayoutDirection == 1 ? H() : G();
        h0(iH, a0Var);
        b0(iConvertFocusDirectionToLayoutDirection);
        o oVar = this.f3195g;
        oVar.f3444c = oVar.f3445d + iH;
        oVar.f3443b = (int) (this.f3191c.o() * 0.33333334f);
        o oVar2 = this.f3195g;
        oVar2.f3449h = true;
        oVar2.f3442a = false;
        y(wVar, oVar2, a0Var);
        this.f3203o = this.f3197i;
        if (!z10 && (viewM = dVar.m(iH, iConvertFocusDirectionToLayoutDirection)) != null && viewM != viewFindContainingItemView) {
            return viewM;
        }
        if (T(iConvertFocusDirectionToLayoutDirection)) {
            for (int i11 = this.f3189a - 1; i11 >= 0; i11--) {
                View viewM2 = this.f3190b[i11].m(iH, iConvertFocusDirectionToLayoutDirection);
                if (viewM2 != null && viewM2 != viewFindContainingItemView) {
                    return viewM2;
                }
            }
        } else {
            for (int i12 = 0; i12 < this.f3189a; i12++) {
                View viewM3 = this.f3190b[i12].m(iH, iConvertFocusDirectionToLayoutDirection);
                if (viewM3 != null && viewM3 != viewFindContainingItemView) {
                    return viewM3;
                }
            }
        }
        boolean z11 = (this.f3196h ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z10) {
            View viewFindViewByPosition = findViewByPosition(z11 ? dVar.f() : dVar.g());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (T(iConvertFocusDirectionToLayoutDirection)) {
            for (int i13 = this.f3189a - 1; i13 >= 0; i13--) {
                if (i13 != dVar.f3243e) {
                    View viewFindViewByPosition2 = findViewByPosition(z11 ? this.f3190b[i13].f() : this.f3190b[i13].g());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i14 = 0; i14 < this.f3189a; i14++) {
                View viewFindViewByPosition3 = findViewByPosition(z11 ? this.f3190b[i14].f() : this.f3190b[i14].g());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewB = B(false);
            View viewA = A(false);
            if (viewB == null || viewA == null) {
                return;
            }
            int position = getPosition(viewB);
            int position2 = getPosition(viewA);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        N(i10, i11, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f3201m.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        N(i10, i11, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        N(i10, i11, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        N(i10, i11, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        S(wVar, a0Var, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.a0 a0Var) {
        super.onLayoutCompleted(a0Var);
        this.f3199k = -1;
        this.f3200l = Integer.MIN_VALUE;
        this.f3205q = null;
        this.f3208t.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f3205q = savedState;
            if (this.f3199k != -1) {
                savedState.a();
                this.f3205q.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable onSaveInstanceState() {
        int iP;
        int iN;
        int[] iArr;
        if (this.f3205q != null) {
            return new SavedState(this.f3205q);
        }
        SavedState savedState = new SavedState();
        savedState.f3226k = this.f3196h;
        savedState.f3227l = this.f3203o;
        savedState.f3228m = this.f3204p;
        LazySpanLookup lazySpanLookup = this.f3201m;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f3213a) == null) {
            savedState.f3223h = 0;
        } else {
            savedState.f3224i = iArr;
            savedState.f3223h = iArr.length;
            savedState.f3225j = lazySpanLookup.f3214b;
        }
        if (getChildCount() > 0) {
            savedState.f3219a = this.f3203o ? H() : G();
            savedState.f3220b = C();
            int i10 = this.f3189a;
            savedState.f3221c = i10;
            savedState.f3222f = new int[i10];
            for (int i11 = 0; i11 < this.f3189a; i11++) {
                if (this.f3203o) {
                    iP = this.f3190b[i11].l(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iN = this.f3191c.i();
                        iP -= iN;
                    }
                } else {
                    iP = this.f3190b[i11].p(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iN = this.f3191c.n();
                        iP -= iN;
                    }
                }
                savedState.f3222f[i11] = iP;
            }
        } else {
            savedState.f3219a = -1;
            savedState.f3220b = -1;
            savedState.f3221c = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            q();
        }
    }

    boolean q() {
        int iG;
        int iH;
        if (getChildCount() == 0 || this.f3202n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f3197i) {
            iG = H();
            iH = G();
        } else {
            iG = G();
            iH = H();
        }
        if (iG == 0 && O() != null) {
            this.f3201m.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f3209u) {
            return false;
        }
        int i10 = this.f3197i ? -1 : 1;
        int i11 = iH + 1;
        LazySpanLookup.FullSpanItem fullSpanItemE = this.f3201m.e(iG, i11, i10, true);
        if (fullSpanItemE == null) {
            this.f3209u = false;
            this.f3201m.d(i11);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemE2 = this.f3201m.e(iG, fullSpanItemE.f3215a, i10 * (-1), true);
        if (fullSpanItemE2 == null) {
            this.f3201m.d(fullSpanItemE.f3215a);
        } else {
            this.f3201m.d(fullSpanItemE2.f3215a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    int scrollBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        U(i10, a0Var);
        int iY = y(wVar, this.f3195g, a0Var);
        if (this.f3195g.f3443b >= iY) {
            i10 = i10 < 0 ? -iY : iY;
        }
        this.f3191c.s(-i10);
        this.f3203o = this.f3197i;
        o oVar = this.f3195g;
        oVar.f3443b = 0;
        W(wVar, oVar);
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        return scrollBy(i10, wVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        SavedState savedState = this.f3205q;
        if (savedState != null && savedState.f3219a != i10) {
            savedState.a();
        }
        this.f3199k = i10;
        this.f3200l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        return scrollBy(i10, wVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f3193e == 1) {
            iChooseSize2 = RecyclerView.p.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = RecyclerView.p.chooseSize(i10, (this.f3194f * this.f3189a) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.p.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = RecyclerView.p.chooseSize(i11, (this.f3194f * this.f3189a) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i10 == this.f3193e) {
            return;
        }
        this.f3193e = i10;
        t tVar = this.f3191c;
        this.f3191c = this.f3192d;
        this.f3192d = tVar;
        requestLayout();
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f3205q;
        if (savedState != null && savedState.f3226k != z10) {
            savedState.f3226k = z10;
        }
        this.f3196h = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
        p pVar = new p(recyclerView.getContext());
        pVar.setTargetPosition(i10);
        startSmoothScroll(pVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.f3205q == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f3213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List f3214b;

        LazySpanLookup() {
        }

        private int i(int i10) {
            if (this.f3214b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i10);
            if (fullSpanItemF != null) {
                this.f3214b.remove(fullSpanItemF);
            }
            int size = this.f3214b.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    i11 = -1;
                    break;
                }
                if (((FullSpanItem) this.f3214b.get(i11)).f3215a >= i10) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = (FullSpanItem) this.f3214b.get(i11);
            this.f3214b.remove(i11);
            return fullSpanItem.f3215a;
        }

        private void l(int i10, int i11) {
            List list = this.f3214b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f3214b.get(size);
                int i12 = fullSpanItem.f3215a;
                if (i12 >= i10) {
                    fullSpanItem.f3215a = i12 + i11;
                }
            }
        }

        private void m(int i10, int i11) {
            List list = this.f3214b;
            if (list == null) {
                return;
            }
            int i12 = i10 + i11;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f3214b.get(size);
                int i13 = fullSpanItem.f3215a;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.f3214b.remove(size);
                    } else {
                        fullSpanItem.f3215a = i13 - i11;
                    }
                }
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f3214b == null) {
                this.f3214b = new ArrayList();
            }
            int size = this.f3214b.size();
            for (int i10 = 0; i10 < size; i10++) {
                FullSpanItem fullSpanItem2 = (FullSpanItem) this.f3214b.get(i10);
                if (fullSpanItem2.f3215a == fullSpanItem.f3215a) {
                    this.f3214b.remove(i10);
                }
                if (fullSpanItem2.f3215a >= fullSpanItem.f3215a) {
                    this.f3214b.add(i10, fullSpanItem);
                    return;
                }
            }
            this.f3214b.add(fullSpanItem);
        }

        void b() {
            int[] iArr = this.f3213a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3214b = null;
        }

        void c(int i10) {
            int[] iArr = this.f3213a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.f3213a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int[] iArr3 = new int[o(i10)];
                this.f3213a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f3213a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i10) {
            List list = this.f3214b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((FullSpanItem) this.f3214b.get(size)).f3215a >= i10) {
                        this.f3214b.remove(size);
                    }
                }
            }
            return h(i10);
        }

        public FullSpanItem e(int i10, int i11, int i12, boolean z10) {
            List list = this.f3214b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f3214b.get(i13);
                int i14 = fullSpanItem.f3215a;
                if (i14 >= i11) {
                    return null;
                }
                if (i14 >= i10 && (i12 == 0 || fullSpanItem.f3216b == i12 || (z10 && fullSpanItem.f3218f))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i10) {
            List list = this.f3214b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = (FullSpanItem) this.f3214b.get(size);
                if (fullSpanItem.f3215a == i10) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        int g(int i10) {
            int[] iArr = this.f3213a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            return iArr[i10];
        }

        int h(int i10) {
            int[] iArr = this.f3213a;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                int[] iArr2 = this.f3213a;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.f3213a.length;
            }
            int iMin = Math.min(i11 + 1, this.f3213a.length);
            Arrays.fill(this.f3213a, i10, iMin, -1);
            return iMin;
        }

        void j(int i10, int i11) {
            int[] iArr = this.f3213a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f3213a;
            System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
            Arrays.fill(this.f3213a, i10, i12, -1);
            l(i10, i11);
        }

        void k(int i10, int i11) {
            int[] iArr = this.f3213a;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.f3213a;
            System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
            int[] iArr3 = this.f3213a;
            Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
            m(i10, i11);
        }

        void n(int i10, d dVar) {
            c(i10);
            this.f3213a[i10] = dVar.f3243e;
        }

        int o(int i10) {
            int length = this.f3213a.length;
            while (length <= i10) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f3215a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f3216b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int[] f3217c;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            boolean f3218f;

            class a implements Parcelable.Creator {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i10) {
                    return new FullSpanItem[i10];
                }
            }

            FullSpanItem(Parcel parcel) {
                this.f3215a = parcel.readInt();
                this.f3216b = parcel.readInt();
                this.f3218f = parcel.readInt() == 1;
                int i10 = parcel.readInt();
                if (i10 > 0) {
                    int[] iArr = new int[i10];
                    this.f3217c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            int a(int i10) {
                int[] iArr = this.f3217c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i10];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f3215a + ", mGapDir=" + this.f3216b + ", mHasUnwantedGapAfter=" + this.f3218f + ", mGapPerSpan=" + Arrays.toString(this.f3217c) + AbstractJsonLexerKt.END_OBJ;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f3215a);
                parcel.writeInt(this.f3216b);
                parcel.writeInt(this.f3218f ? 1 : 0);
                int[] iArr = this.f3217c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f3217c);
                }
            }

            FullSpanItem() {
            }
        }
    }
}
