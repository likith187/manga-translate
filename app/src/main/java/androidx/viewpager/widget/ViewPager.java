package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.coui.appcompat.uiutil.UIUtil;
import com.oplus.aiunit.core.ConfigPackage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    static final int[] f3881i0 = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final Comparator f3882j0 = new a();

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final Interpolator f3883k0 = new b();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final l f3884l0 = new l();
    private int A;
    private boolean B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private float J;
    private int K;
    private VelocityTracker L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private EdgeEffect R;
    private EdgeEffect S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3885a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private List f3886a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f3887b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private j f3888b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f3889c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private j f3890c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private List f3891d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f3892e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Rect f3893f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private ArrayList f3894f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private final Runnable f3895g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    androidx.viewpager.widget.a f3896h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f3897h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f3898i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3899j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Parcelable f3900k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ClassLoader f3901l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Scroller f3902m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f3903n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private k f3904o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f3905p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f3906q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3907r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f3908s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f3909t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f3910u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3911v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f3912w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f3913x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f3914y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f3915z;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3916a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Parcelable f3917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ClassLoader f3918c;

        static class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3916a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f3916a);
            parcel.writeParcelable(this.f3917b, i10);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f3916a = parcel.readInt();
            this.f3917b = parcel.readParcelable(classLoader);
            this.f3918c = classLoader;
        }
    }

    static class a implements Comparator {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f fVar, f fVar2) {
            return fVar.f3923b - fVar2.f3923b;
        }
    }

    static class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.D();
        }
    }

    class d implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f3920a = new Rect();

        d() {
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            a1 a1VarV = m0.V(view, a1Var);
            if (a1VarV.q()) {
                return a1VarV;
            }
            Rect rect = this.f3920a;
            rect.left = a1VarV.k();
            rect.top = a1VarV.m();
            rect.right = a1VarV.l();
            rect.bottom = a1VarV.j();
            int childCount = ViewPager.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                a1 a1VarF = m0.f(ViewPager.this.getChildAt(i10), a1VarV);
                rect.left = Math.min(a1VarF.k(), rect.left);
                rect.top = Math.min(a1VarF.m(), rect.top);
                rect.right = Math.min(a1VarF.l(), rect.right);
                rect.bottom = Math.min(a1VarF.j(), rect.bottom);
            }
            return a1VarV.s(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    public @interface e {
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f3922a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3924c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f3925d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f3926e;

        f() {
        }
    }

    class h extends androidx.core.view.a {
        h() {
        }

        private boolean c() {
            androidx.viewpager.widget.a aVar = ViewPager.this.f3896h;
            return aVar != null && aVar.getCount() > 1;
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            androidx.viewpager.widget.a aVar;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(c());
            if (accessibilityEvent.getEventType() != 4096 || (aVar = ViewPager.this.f3896h) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.getCount());
            accessibilityEvent.setFromIndex(ViewPager.this.f3898i);
            accessibilityEvent.setToIndex(ViewPager.this.f3898i);
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            hVar.h0(ViewPager.class.getName());
            hVar.C0(c());
            if (ViewPager.this.canScrollHorizontally(1)) {
                hVar.a(ConfigPackage.FRAME_SIZE_5);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                hVar.a(ConfigPackage.FRAME_SIZE_6);
            }
        }

        @Override // androidx.core.view.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            if (i10 == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f3898i + 1);
                return true;
            }
            if (i10 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f3898i - 1);
            return true;
        }
    }

    public interface i {
        void onAdapterChanged(ViewPager viewPager, androidx.viewpager.widget.a aVar, androidx.viewpager.widget.a aVar2);
    }

    public interface j {
        void onPageScrollStateChanged(int i10);

        void onPageScrolled(int i10, float f10, int i11);

        void onPageSelected(int i10);
    }

    private class k extends DataSetObserver {
        k() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.h();
        }
    }

    static class l implements Comparator {
        l() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            g gVar = (g) view.getLayoutParams();
            g gVar2 = (g) view2.getLayoutParams();
            boolean z10 = gVar.f3927a;
            return z10 != gVar2.f3927a ? z10 ? 1 : -1 : gVar.f3931e - gVar2.f3931e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.f3887b = new ArrayList();
        this.f3889c = new f();
        this.f3893f = new Rect();
        this.f3899j = -1;
        this.f3900k = null;
        this.f3901l = null;
        this.f3909t = -3.4028235E38f;
        this.f3910u = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.T = true;
        this.U = false;
        this.f3895g0 = new c();
        this.f3897h0 = 0;
        u();
    }

    private boolean B(int i10) {
        if (this.f3887b.size() == 0) {
            if (this.T) {
                return false;
            }
            this.V = false;
            x(0, 0.0f, 0);
            if (this.V) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        f fVarS = s();
        int clientWidth = getClientWidth();
        int i11 = this.f3905p;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = fVarS.f3923b;
        float f11 = ((i10 / f10) - fVarS.f3926e) / (fVarS.f3925d + (i11 / f10));
        this.V = false;
        x(i13, f11, (int) (i12 * f11));
        if (this.V) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean C(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.G - f10;
        this.G = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.f3909t * clientWidth;
        float f13 = this.f3910u * clientWidth;
        boolean z12 = false;
        f fVar = (f) this.f3887b.get(0);
        ArrayList arrayList = this.f3887b;
        f fVar2 = (f) arrayList.get(arrayList.size() - 1);
        if (fVar.f3923b != 0) {
            f12 = fVar.f3926e * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (fVar2.f3923b != this.f3896h.getCount() - 1) {
            f13 = fVar2.f3926e * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.R.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.S.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i10 = (int) scrollX;
        this.G += scrollX - i10;
        scrollTo(i10, getScrollY());
        B(i10);
        return z12;
    }

    private void F(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.f3887b.isEmpty()) {
            if (!this.f3902m.isFinished()) {
                this.f3902m.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        f fVarT = t(this.f3898i);
        int iMin = (int) ((fVarT != null ? Math.min(fVarT.f3926e, this.f3910u) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            g(false);
            scrollTo(iMin, getScrollY());
        }
    }

    private void G() {
        int i10 = 0;
        while (i10 < getChildCount()) {
            if (!((g) getChildAt(i10).getLayoutParams()).f3927a) {
                removeViewAt(i10);
                i10--;
            }
            i10++;
        }
    }

    private void J(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    private boolean K() {
        this.K = -1;
        n();
        this.R.onRelease();
        this.S.onRelease();
        return this.R.isFinished() || this.S.isFinished();
    }

    private void L(int i10, boolean z10, int i11, boolean z11) {
        f fVarT = t(i10);
        int clientWidth = fVarT != null ? (int) (getClientWidth() * Math.max(this.f3909t, Math.min(fVarT.f3926e, this.f3910u))) : 0;
        if (z10) {
            Q(clientWidth, 0, i11);
            if (z11) {
                k(i10);
                return;
            }
            return;
        }
        if (z11) {
            k(i10);
        }
        g(false);
        scrollTo(clientWidth, 0);
        B(clientWidth);
    }

    private void R() {
        if (this.f3892e0 != 0) {
            ArrayList arrayList = this.f3894f0;
            if (arrayList == null) {
                this.f3894f0 = new ArrayList();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.f3894f0.add(getChildAt(i10));
            }
            Collections.sort(this.f3894f0, f3884l0);
        }
    }

    private void e(f fVar, int i10, f fVar2) {
        int i11;
        int i12;
        f fVar3;
        f fVar4;
        int count = this.f3896h.getCount();
        int clientWidth = getClientWidth();
        float f10 = clientWidth > 0 ? this.f3905p / clientWidth : 0.0f;
        if (fVar2 != null) {
            int i13 = fVar2.f3923b;
            int i14 = fVar.f3923b;
            if (i13 < i14) {
                float pageWidth = fVar2.f3926e + fVar2.f3925d + f10;
                int i15 = i13 + 1;
                int i16 = 0;
                while (i15 <= fVar.f3923b && i16 < this.f3887b.size()) {
                    Object obj = this.f3887b.get(i16);
                    while (true) {
                        fVar4 = (f) obj;
                        if (i15 <= fVar4.f3923b || i16 >= this.f3887b.size() - 1) {
                            break;
                        }
                        i16++;
                        obj = this.f3887b.get(i16);
                    }
                    while (i15 < fVar4.f3923b) {
                        pageWidth += this.f3896h.getPageWidth(i15) + f10;
                        i15++;
                    }
                    fVar4.f3926e = pageWidth;
                    pageWidth += fVar4.f3925d + f10;
                    i15++;
                }
            } else if (i13 > i14) {
                int size = this.f3887b.size() - 1;
                float pageWidth2 = fVar2.f3926e;
                while (true) {
                    i13--;
                    if (i13 < fVar.f3923b || size < 0) {
                        break;
                    }
                    Object obj2 = this.f3887b.get(size);
                    while (true) {
                        fVar3 = (f) obj2;
                        if (i13 >= fVar3.f3923b || size <= 0) {
                            break;
                        }
                        size--;
                        obj2 = this.f3887b.get(size);
                    }
                    while (i13 > fVar3.f3923b) {
                        pageWidth2 -= this.f3896h.getPageWidth(i13) + f10;
                        i13--;
                    }
                    pageWidth2 -= fVar3.f3925d + f10;
                    fVar3.f3926e = pageWidth2;
                }
            }
        }
        int size2 = this.f3887b.size();
        float pageWidth3 = fVar.f3926e;
        int i17 = fVar.f3923b;
        int i18 = i17 - 1;
        this.f3909t = i17 == 0 ? pageWidth3 : -3.4028235E38f;
        int i19 = count - 1;
        this.f3910u = i17 == i19 ? (fVar.f3925d + pageWidth3) - 1.0f : Float.MAX_VALUE;
        int i20 = i10 - 1;
        while (i20 >= 0) {
            f fVar5 = (f) this.f3887b.get(i20);
            while (true) {
                i12 = fVar5.f3923b;
                if (i18 <= i12) {
                    break;
                }
                pageWidth3 -= this.f3896h.getPageWidth(i18) + f10;
                i18--;
            }
            pageWidth3 -= fVar5.f3925d + f10;
            fVar5.f3926e = pageWidth3;
            if (i12 == 0) {
                this.f3909t = pageWidth3;
            }
            i20--;
            i18--;
        }
        float pageWidth4 = fVar.f3926e + fVar.f3925d + f10;
        int i21 = fVar.f3923b + 1;
        int i22 = i10 + 1;
        while (i22 < size2) {
            f fVar6 = (f) this.f3887b.get(i22);
            while (true) {
                i11 = fVar6.f3923b;
                if (i21 >= i11) {
                    break;
                }
                pageWidth4 += this.f3896h.getPageWidth(i21) + f10;
                i21++;
            }
            if (i11 == i19) {
                this.f3910u = (fVar6.f3925d + pageWidth4) - 1.0f;
            }
            fVar6.f3926e = pageWidth4;
            pageWidth4 += fVar6.f3925d + f10;
            i22++;
            i21++;
        }
        this.U = false;
    }

    private void g(boolean z10) {
        boolean z11 = this.f3897h0 == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.f3902m.isFinished()) {
                this.f3902m.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f3902m.getCurrX();
                int currY = this.f3902m.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        B(currX);
                    }
                }
            }
        }
        this.f3915z = false;
        for (int i10 = 0; i10 < this.f3887b.size(); i10++) {
            f fVar = (f) this.f3887b.get(i10);
            if (fVar.f3924c) {
                fVar.f3924c = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                m0.a0(this, this.f3895g0);
            } else {
                this.f3895g0.run();
            }
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private int i(int i10, float f10, int i11, int i12) {
        if (Math.abs(i12) <= this.O || Math.abs(i11) <= this.M) {
            i10 += (int) (f10 + (i10 >= this.f3898i ? 0.4f : 0.6f));
        } else if (i11 <= 0) {
            i10++;
        }
        if (this.f3887b.size() <= 0) {
            return i10;
        }
        return Math.max(((f) this.f3887b.get(0)).f3923b, Math.min(i10, ((f) this.f3887b.get(r1.size() - 1)).f3923b));
    }

    private void j(int i10, float f10, int i11) {
        j jVar = this.f3888b0;
        if (jVar != null) {
            jVar.onPageScrolled(i10, f10, i11);
        }
        List list = this.f3886a0;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                j jVar2 = (j) this.f3886a0.get(i12);
                if (jVar2 != null) {
                    jVar2.onPageScrolled(i10, f10, i11);
                }
            }
        }
        j jVar3 = this.f3890c0;
        if (jVar3 != null) {
            jVar3.onPageScrolled(i10, f10, i11);
        }
    }

    private void k(int i10) {
        j jVar = this.f3888b0;
        if (jVar != null) {
            jVar.onPageSelected(i10);
        }
        List list = this.f3886a0;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar2 = (j) this.f3886a0.get(i11);
                if (jVar2 != null) {
                    jVar2.onPageSelected(i10);
                }
            }
        }
        j jVar3 = this.f3890c0;
        if (jVar3 != null) {
            jVar3.onPageSelected(i10);
        }
    }

    private void l(int i10) {
        j jVar = this.f3888b0;
        if (jVar != null) {
            jVar.onPageScrollStateChanged(i10);
        }
        List list = this.f3886a0;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar2 = (j) this.f3886a0.get(i11);
                if (jVar2 != null) {
                    jVar2.onPageScrollStateChanged(i10);
                }
            }
        }
        j jVar3 = this.f3890c0;
        if (jVar3 != null) {
            jVar3.onPageScrollStateChanged(i10);
        }
    }

    private void n() {
        this.B = false;
        this.C = false;
        VelocityTracker velocityTracker = this.L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.L = null;
        }
    }

    private Rect p(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private f s() {
        int i10;
        int clientWidth = getClientWidth();
        float f10 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f11 = clientWidth > 0 ? this.f3905p / clientWidth : 0.0f;
        int i11 = 0;
        boolean z10 = true;
        f fVar = null;
        int i12 = -1;
        float f12 = 0.0f;
        while (i11 < this.f3887b.size()) {
            f fVar2 = (f) this.f3887b.get(i11);
            if (!z10 && fVar2.f3923b != (i10 = i12 + 1)) {
                fVar2 = this.f3889c;
                fVar2.f3926e = f10 + f12 + f11;
                fVar2.f3923b = i10;
                fVar2.f3925d = this.f3896h.getPageWidth(i10);
                i11--;
            }
            f fVar3 = fVar2;
            f10 = fVar3.f3926e;
            float f13 = fVar3.f3925d + f10 + f11;
            if (!z10 && scrollX < f10) {
                return fVar;
            }
            if (scrollX < f13 || i11 == this.f3887b.size() - 1) {
                return fVar3;
            }
            int i13 = fVar3.f3923b;
            float f14 = fVar3.f3925d;
            i11++;
            z10 = false;
            i12 = i13;
            f12 = f14;
            fVar = fVar3;
        }
        return fVar;
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.f3914y != z10) {
            this.f3914y = z10;
        }
    }

    private static boolean v(View view) {
        return view.getClass().getAnnotation(e.class) != null;
    }

    private boolean w(float f10, float f11) {
        return (f10 < ((float) this.E) && f11 > 0.0f) || (f10 > ((float) (getWidth() - this.E)) && f11 < 0.0f);
    }

    private void y(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.K) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.G = motionEvent.getX(i10);
            this.K = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    boolean A() {
        androidx.viewpager.widget.a aVar = this.f3896h;
        if (aVar == null || this.f3898i >= aVar.getCount() - 1) {
            return false;
        }
        M(this.f3898i + 1, true);
        return true;
    }

    void D() {
        E(this.f3898i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cb A[PHI: r7 r10 r15
      0x00cb: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
      0x00cb: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
      0x00cb: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:64:0x00ef, B:61:0x00d9, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void E(int r18) {
        /*
            Method dump skipped, instruction units count: 615
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.E(int):void");
    }

    public void H(i iVar) {
        List list = this.f3891d0;
        if (list != null) {
            list.remove(iVar);
        }
    }

    public void I(j jVar) {
        List list = this.f3886a0;
        if (list != null) {
            list.remove(jVar);
        }
    }

    public void M(int i10, boolean z10) {
        this.f3915z = false;
        N(i10, z10, false);
    }

    void N(int i10, boolean z10, boolean z11) {
        O(i10, z10, z11, 0);
    }

    void O(int i10, boolean z10, boolean z11, int i11) {
        androidx.viewpager.widget.a aVar = this.f3896h;
        if (aVar == null || aVar.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z11 && this.f3898i == i10 && this.f3887b.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 >= this.f3896h.getCount()) {
            i10 = this.f3896h.getCount() - 1;
        }
        int i12 = this.A;
        int i13 = this.f3898i;
        if (i10 > i13 + i12 || i10 < i13 - i12) {
            for (int i14 = 0; i14 < this.f3887b.size(); i14++) {
                ((f) this.f3887b.get(i14)).f3924c = true;
            }
        }
        boolean z12 = this.f3898i != i10;
        if (!this.T) {
            E(i10);
            L(i10, z10, i11, z12);
        } else {
            this.f3898i = i10;
            if (z12) {
                k(i10);
            }
            requestLayout();
        }
    }

    j P(j jVar) {
        j jVar2 = this.f3890c0;
        this.f3890c0 = jVar;
        return jVar2;
    }

    void Q(int i10, int i11, int i12) {
        int scrollX;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f3902m;
        if (scroller == null || scroller.isFinished()) {
            scrollX = getScrollX();
        } else {
            scrollX = this.f3903n ? this.f3902m.getCurrX() : this.f3902m.getStartX();
            this.f3902m.abortAnimation();
            setScrollingCacheEnabled(false);
        }
        int i13 = scrollX;
        int scrollY = getScrollY();
        int i14 = i10 - i13;
        int i15 = i11 - scrollY;
        if (i14 == 0 && i15 == 0) {
            g(false);
            D();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i16 = clientWidth / 2;
        float f10 = clientWidth;
        float f11 = i16;
        float fM = f11 + (m(Math.min(1.0f, (Math.abs(i14) * 1.0f) / f10)) * f11);
        int iAbs = Math.abs(i12);
        int iMin = Math.min(iAbs > 0 ? Math.round(Math.abs(fM / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i14) / ((f10 * this.f3896h.getPageWidth(this.f3898i)) + this.f3905p)) + 1.0f) * 100.0f), UIUtil.MEDIUM_WIDTH_DP);
        this.f3903n = false;
        this.f3902m.startScroll(i13, scrollY, i14, i15, iMin);
        m0.Z(this);
    }

    f a(int i10, int i11) {
        f fVar = new f();
        fVar.f3923b = i10;
        fVar.f3922a = this.f3896h.instantiateItem((ViewGroup) this, i10);
        fVar.f3925d = this.f3896h.getPageWidth(i10);
        if (i11 < 0 || i11 >= this.f3887b.size()) {
            this.f3887b.add(fVar);
        } else {
            this.f3887b.add(i11, fVar);
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i10, int i11) {
        f fVarR;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f3923b == this.f3898i) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList arrayList) {
        f fVarR;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f3923b == this.f3898i) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        g gVar = (g) layoutParams;
        boolean zV = gVar.f3927a | v(view);
        gVar.f3927a = zV;
        if (!this.f3913x) {
            super.addView(view, i10, layoutParams);
        } else {
            if (zV) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            gVar.f3930d = true;
            addViewInLayout(view, i10, layoutParams);
        }
    }

    public void b(i iVar) {
        if (this.f3891d0 == null) {
            this.f3891d0 = new ArrayList();
        }
        this.f3891d0.add(iVar);
    }

    public void c(j jVar) {
        if (this.f3886a0 == null) {
            this.f3886a0 = new ArrayList();
        }
        this.f3886a0.add(jVar);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.f3896h == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i10 < 0 ? scrollX > ((int) (((float) clientWidth) * this.f3909t)) : i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.f3910u));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof g) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f3903n = true;
        if (this.f3902m.isFinished() || !this.f3902m.computeScrollOffset()) {
            g(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f3902m.getCurrX();
        int currY = this.f3902m.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!B(currX)) {
                this.f3902m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        m0.Z(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(int r5) {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || o(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        f fVarR;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f3923b == this.f3898i && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        androidx.viewpager.widget.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f3896h) != null && aVar.getCount() > 1)) {
            if (!this.R.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f3909t * width);
                this.R.setSize(height, width);
                zDraw = this.R.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.S.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f3910u + 1.0f)) * width2);
                this.S.setSize(height2, width2);
                zDraw |= this.S.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.R.finish();
            this.S.finish();
        }
        if (zDraw) {
            m0.Z(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3906q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    protected boolean f(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && f(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public androidx.viewpager.widget.a getAdapter() {
        return this.f3896h;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.f3892e0 == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((g) ((View) this.f3894f0.get(i11)).getLayoutParams()).f3932f;
    }

    public int getCurrentItem() {
        return this.f3898i;
    }

    public int getOffscreenPageLimit() {
        return this.A;
    }

    public int getPageMargin() {
        return this.f3905p;
    }

    void h() {
        int count = this.f3896h.getCount();
        this.f3885a = count;
        boolean z10 = this.f3887b.size() < (this.A * 2) + 1 && this.f3887b.size() < count;
        int iMax = this.f3898i;
        int i10 = 0;
        boolean z11 = false;
        while (i10 < this.f3887b.size()) {
            f fVar = (f) this.f3887b.get(i10);
            int itemPosition = this.f3896h.getItemPosition(fVar.f3922a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f3887b.remove(i10);
                    i10--;
                    if (!z11) {
                        this.f3896h.startUpdate((ViewGroup) this);
                        z11 = true;
                    }
                    this.f3896h.destroyItem((ViewGroup) this, fVar.f3923b, fVar.f3922a);
                    int i11 = this.f3898i;
                    if (i11 == fVar.f3923b) {
                        iMax = Math.max(0, Math.min(i11, count - 1));
                    }
                } else {
                    int i12 = fVar.f3923b;
                    if (i12 != itemPosition) {
                        if (i12 == this.f3898i) {
                            iMax = itemPosition;
                        }
                        fVar.f3923b = itemPosition;
                    }
                }
                z10 = true;
            }
            i10++;
        }
        if (z11) {
            this.f3896h.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f3887b, f3882j0);
        if (z10) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                g gVar = (g) getChildAt(i13).getLayoutParams();
                if (!gVar.f3927a) {
                    gVar.f3929c = 0.0f;
                }
            }
            N(iMax, false, true);
            requestLayout();
        }
    }

    float m(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    public boolean o(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return keyEvent.hasModifiers(2) ? z() : d(17);
            }
            if (keyCode == 22) {
                return keyEvent.hasModifiers(2) ? A() : d(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return d(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return d(1);
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.T = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f3895g0);
        Scroller scroller = this.f3902m;
        if (scroller != null && !scroller.isFinished()) {
            this.f3902m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f3905p <= 0 || this.f3906q == null || this.f3887b.size() <= 0 || this.f3896h == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f12 = this.f3905p / width;
        int i11 = 0;
        f fVar = (f) this.f3887b.get(0);
        float f13 = fVar.f3926e;
        int size = this.f3887b.size();
        int i12 = fVar.f3923b;
        int i13 = ((f) this.f3887b.get(size - 1)).f3923b;
        while (i12 < i13) {
            while (true) {
                i10 = fVar.f3923b;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                fVar = (f) this.f3887b.get(i11);
            }
            if (i12 == i10) {
                float f14 = fVar.f3926e;
                float f15 = fVar.f3925d;
                f10 = (f14 + f15) * width;
                f13 = f14 + f15 + f12;
            } else {
                float pageWidth = this.f3896h.getPageWidth(i12);
                f10 = (f13 + pageWidth) * width;
                f13 += pageWidth + f12;
            }
            if (this.f3905p + f10 > scrollX) {
                f11 = f12;
                this.f3906q.setBounds(Math.round(f10), this.f3907r, Math.round(this.f3905p + f10), this.f3908s);
                this.f3906q.draw(canvas);
            } else {
                f11 = f12;
            }
            if (f10 > scrollX + r2) {
                return;
            }
            i12++;
            f12 = f11;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            K();
            return false;
        }
        if (action != 0) {
            if (this.B) {
                return true;
            }
            if (this.C) {
                return false;
            }
        }
        if (action == 0) {
            float x10 = motionEvent.getX();
            this.I = x10;
            this.G = x10;
            float y10 = motionEvent.getY();
            this.J = y10;
            this.H = y10;
            this.K = motionEvent.getPointerId(0);
            this.C = false;
            this.f3903n = true;
            this.f3902m.computeScrollOffset();
            if (this.f3897h0 != 2 || Math.abs(this.f3902m.getFinalX() - this.f3902m.getCurrX()) <= this.P) {
                g(false);
                this.B = false;
            } else {
                this.f3902m.abortAnimation();
                this.f3915z = false;
                D();
                this.B = true;
                J(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i10 = this.K;
            if (i10 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i10);
                float x11 = motionEvent.getX(iFindPointerIndex);
                float f10 = x11 - this.G;
                float fAbs = Math.abs(f10);
                float y11 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y11 - this.J);
                if (f10 != 0.0f && !w(this.G, f10) && f(this, false, (int) f10, (int) x11, (int) y11)) {
                    this.G = x11;
                    this.H = y11;
                    this.C = true;
                    return false;
                }
                int i11 = this.F;
                if (fAbs > i11 && fAbs * 0.5f > fAbs2) {
                    this.B = true;
                    J(true);
                    setScrollState(1);
                    float f11 = this.I;
                    float f12 = this.F;
                    this.G = f10 > 0.0f ? f11 + f12 : f11 - f12;
                    this.H = y11;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i11) {
                    this.C = true;
                }
                if (this.B && C(x11)) {
                    m0.Z(this);
                }
            }
        } else if (action == 6) {
            y(motionEvent);
        }
        if (this.L == null) {
            this.L = VelocityTracker.obtain();
        }
        this.L.addMovement(motionEvent);
        return this.B;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        g gVar;
        g gVar2;
        int i12;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.E = Math.min(measuredWidth / 10, this.D);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i13 = 0;
        while (true) {
            boolean z10 = true;
            int i14 = 1073741824;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8 && (gVar2 = (g) childAt.getLayoutParams()) != null && gVar2.f3927a) {
                int i15 = gVar2.f3928b;
                int i16 = i15 & 7;
                int i17 = i15 & 112;
                boolean z11 = i17 == 48 || i17 == 80;
                if (i16 != 3 && i16 != 5) {
                    z10 = false;
                }
                int i18 = Integer.MIN_VALUE;
                if (z11) {
                    i12 = Integer.MIN_VALUE;
                    i18 = 1073741824;
                } else {
                    i12 = z10 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i19 = ((ViewGroup.LayoutParams) gVar2).width;
                if (i19 != -2) {
                    if (i19 == -1) {
                        i19 = paddingLeft;
                    }
                    i18 = 1073741824;
                } else {
                    i19 = paddingLeft;
                }
                int i20 = ((ViewGroup.LayoutParams) gVar2).height;
                if (i20 == -2) {
                    i20 = measuredHeight;
                    i14 = i12;
                } else if (i20 == -1) {
                    i20 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i19, i18), View.MeasureSpec.makeMeasureSpec(i20, i14));
                if (z11) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z10) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i13++;
        }
        this.f3911v = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f3912w = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f3913x = true;
        D();
        this.f3913x = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((gVar = (g) childAt2.getLayoutParams()) == null || !gVar.f3927a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * gVar.f3929c), 1073741824), this.f3912w);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        f fVarR;
        int childCount = getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f3923b == this.f3898i && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i13;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        androidx.viewpager.widget.a aVar = this.f3896h;
        if (aVar != null) {
            aVar.restoreState(savedState.f3917b, savedState.f3918c);
            N(savedState.f3916a, false, true);
        } else {
            this.f3899j = savedState.f3916a;
            this.f3900k = savedState.f3917b;
            this.f3901l = savedState.f3918c;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3916a = this.f3898i;
        androidx.viewpager.widget.a aVar = this.f3896h;
        if (aVar != null) {
            savedState.f3917b = aVar.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.f3905p;
            F(i10, i12, i14, i14);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00dc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    f q(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return r(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    f r(View view) {
        for (int i10 = 0; i10 < this.f3887b.size(); i10++) {
            f fVar = (f) this.f3887b.get(i10);
            if (this.f3896h.isViewFromObject(view, fVar.f3922a)) {
                return fVar;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f3913x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(androidx.viewpager.widget.a aVar) {
        androidx.viewpager.widget.a aVar2 = this.f3896h;
        if (aVar2 != null) {
            aVar2.setViewPagerObserver(null);
            this.f3896h.startUpdate((ViewGroup) this);
            for (int i10 = 0; i10 < this.f3887b.size(); i10++) {
                f fVar = (f) this.f3887b.get(i10);
                this.f3896h.destroyItem((ViewGroup) this, fVar.f3923b, fVar.f3922a);
            }
            this.f3896h.finishUpdate((ViewGroup) this);
            this.f3887b.clear();
            G();
            this.f3898i = 0;
            scrollTo(0, 0);
        }
        androidx.viewpager.widget.a aVar3 = this.f3896h;
        this.f3896h = aVar;
        this.f3885a = 0;
        if (aVar != null) {
            if (this.f3904o == null) {
                this.f3904o = new k();
            }
            this.f3896h.setViewPagerObserver(this.f3904o);
            this.f3915z = false;
            boolean z10 = this.T;
            this.T = true;
            this.f3885a = this.f3896h.getCount();
            if (this.f3899j >= 0) {
                this.f3896h.restoreState(this.f3900k, this.f3901l);
                N(this.f3899j, false, true);
                this.f3899j = -1;
                this.f3900k = null;
                this.f3901l = null;
            } else if (z10) {
                requestLayout();
            } else {
                D();
            }
        }
        List list = this.f3891d0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f3891d0.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((i) this.f3891d0.get(i11)).onAdapterChanged(this, aVar3, aVar);
        }
    }

    public void setCurrentItem(int i10) {
        this.f3915z = false;
        N(i10, !this.T, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i10 + " too small; defaulting to 1");
            i10 = 1;
        }
        if (i10 != this.A) {
            this.A = i10;
            D();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.f3888b0 = jVar;
    }

    public void setPageMargin(int i10) {
        int i11 = this.f3905p;
        this.f3905p = i10;
        int width = getWidth();
        F(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f3906q = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i10) {
        if (this.f3897h0 == i10) {
            return;
        }
        this.f3897h0 = i10;
        l(i10);
    }

    f t(int i10) {
        for (int i11 = 0; i11 < this.f3887b.size(); i11++) {
            f fVar = (f) this.f3887b.get(i11);
            if (fVar.f3923b == i10) {
                return fVar;
            }
        }
        return null;
    }

    void u() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f3902m = new Scroller(context, f3883k0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.F = viewConfiguration.getScaledPagingTouchSlop();
        this.M = (int) (400.0f * f10);
        this.N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.R = new EdgeEffect(context);
        this.S = new EdgeEffect(context);
        this.O = (int) (25.0f * f10);
        this.P = (int) (2.0f * f10);
        this.D = (int) (f10 * 16.0f);
        m0.j0(this, new h());
        if (m0.t(this) == 0) {
            m0.t0(this, 1);
        }
        m0.y0(this, new d());
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3906q;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void x(int r12, float r13, int r14) {
        /*
            r11 = this;
            int r0 = r11.W
            r1 = 1
            if (r0 <= 0) goto L6b
            int r0 = r11.getScrollX()
            int r2 = r11.getPaddingLeft()
            int r3 = r11.getPaddingRight()
            int r4 = r11.getWidth()
            int r5 = r11.getChildCount()
            r6 = 0
        L1a:
            if (r6 >= r5) goto L6b
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.viewpager.widget.ViewPager$g r8 = (androidx.viewpager.widget.ViewPager.g) r8
            boolean r9 = r8.f3927a
            if (r9 != 0) goto L2b
            goto L68
        L2b:
            int r8 = r8.f3928b
            r8 = r8 & 7
            if (r8 == r1) goto L4f
            r9 = 3
            if (r8 == r9) goto L49
            r9 = 5
            if (r8 == r9) goto L39
            r8 = r2
            goto L5c
        L39:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredWidth()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredWidth()
            int r3 = r3 + r9
        L45:
            r10 = r8
            r8 = r2
            r2 = r10
            goto L5c
        L49:
            int r8 = r7.getWidth()
            int r8 = r8 + r2
            goto L5c
        L4f:
            int r8 = r7.getMeasuredWidth()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
            goto L45
        L5c:
            int r2 = r2 + r0
            int r9 = r7.getLeft()
            int r2 = r2 - r9
            if (r2 == 0) goto L67
            r7.offsetLeftAndRight(r2)
        L67:
            r2 = r8
        L68:
            int r6 = r6 + 1
            goto L1a
        L6b:
            r11.j(r12, r13, r14)
            r11.V = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.x(int, float, int):void");
    }

    boolean z() {
        int i10 = this.f3898i;
        if (i10 <= 0) {
            return false;
        }
        M(i10 - 1, true);
        return true;
    }

    public static class g extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3927a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f3929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3932f;

        public g() {
            super(-1, -1);
            this.f3929c = 0.0f;
        }

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3929c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f3881i0);
            this.f3928b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(r.a.e(getContext(), i10));
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3887b = new ArrayList();
        this.f3889c = new f();
        this.f3893f = new Rect();
        this.f3899j = -1;
        this.f3900k = null;
        this.f3901l = null;
        this.f3909t = -3.4028235E38f;
        this.f3910u = Float.MAX_VALUE;
        this.A = 1;
        this.K = -1;
        this.T = true;
        this.U = false;
        this.f3895g0 = new c();
        this.f3897h0 = 0;
        u();
    }
}
