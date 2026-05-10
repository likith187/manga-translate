package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.oplus.backup.sdk.common.utils.ModuleType;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.p implements RecyclerView.z.b {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final a mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final b mLayoutChunkResult;
    private c mLayoutState;
    int mOrientation;
    t mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        int f3090a;

        /* JADX INFO: renamed from: b */
        int f3091b;

        /* JADX INFO: renamed from: c */
        boolean f3092c;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState() {
        }

        boolean a() {
            return this.f3090a >= 0;
        }

        void b() {
            this.f3090a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f3090a);
            parcel.writeInt(this.f3091b);
            parcel.writeInt(this.f3092c ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.f3090a = parcel.readInt();
            this.f3091b = parcel.readInt();
            this.f3092c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f3090a = savedState.f3090a;
            this.f3091b = savedState.f3091b;
            this.f3092c = savedState.f3092c;
        }
    }

    static class a {

        /* JADX INFO: renamed from: a */
        t f3093a;

        /* JADX INFO: renamed from: b */
        int f3094b;

        /* JADX INFO: renamed from: c */
        int f3095c;

        /* JADX INFO: renamed from: d */
        boolean f3096d;

        /* JADX INFO: renamed from: e */
        boolean f3097e;

        a() {
            e();
        }

        void a() {
            this.f3095c = this.f3096d ? this.f3093a.i() : this.f3093a.n();
        }

        public void b(View view, int i10) {
            if (this.f3096d) {
                this.f3095c = this.f3093a.d(view) + this.f3093a.p();
            } else {
                this.f3095c = this.f3093a.g(view);
            }
            this.f3094b = i10;
        }

        public void c(View view, int i10) {
            int iP = this.f3093a.p();
            if (iP >= 0) {
                b(view, i10);
                return;
            }
            this.f3094b = i10;
            if (this.f3096d) {
                int i11 = (this.f3093a.i() - iP) - this.f3093a.d(view);
                this.f3095c = this.f3093a.i() - i11;
                if (i11 > 0) {
                    int iE = this.f3095c - this.f3093a.e(view);
                    int iN = this.f3093a.n();
                    int iMin = iE - (iN + Math.min(this.f3093a.g(view) - iN, 0));
                    if (iMin < 0) {
                        this.f3095c += Math.min(i11, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f3093a.g(view);
            int iN2 = iG - this.f3093a.n();
            this.f3095c = iG;
            if (iN2 > 0) {
                int i12 = (this.f3093a.i() - Math.min(0, (this.f3093a.i() - iP) - this.f3093a.d(view))) - (iG + this.f3093a.e(view));
                if (i12 < 0) {
                    this.f3095c -= Math.min(iN2, -i12);
                }
            }
        }

        boolean d(View view, RecyclerView.a0 a0Var) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return !qVar.c() && qVar.a() >= 0 && qVar.a() < a0Var.b();
        }

        void e() {
            this.f3094b = -1;
            this.f3095c = Integer.MIN_VALUE;
            this.f3096d = false;
            this.f3097e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3094b + ", mCoordinate=" + this.f3095c + ", mLayoutFromEnd=" + this.f3096d + ", mValid=" + this.f3097e + AbstractJsonLexerKt.END_OBJ;
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a */
        public int f3098a;

        /* JADX INFO: renamed from: b */
        public boolean f3099b;

        /* JADX INFO: renamed from: c */
        public boolean f3100c;

        /* JADX INFO: renamed from: d */
        public boolean f3101d;

        protected b() {
        }

        void a() {
            this.f3098a = 0;
            this.f3099b = false;
            this.f3100c = false;
            this.f3101d = false;
        }
    }

    static class c {

        /* JADX INFO: renamed from: b */
        int f3103b;

        /* JADX INFO: renamed from: c */
        int f3104c;

        /* JADX INFO: renamed from: d */
        int f3105d;

        /* JADX INFO: renamed from: e */
        int f3106e;

        /* JADX INFO: renamed from: f */
        int f3107f;

        /* JADX INFO: renamed from: g */
        int f3108g;

        /* JADX INFO: renamed from: k */
        int f3112k;

        /* JADX INFO: renamed from: m */
        boolean f3114m;

        /* JADX INFO: renamed from: a */
        boolean f3102a = true;

        /* JADX INFO: renamed from: h */
        int f3109h = 0;

        /* JADX INFO: renamed from: i */
        int f3110i = 0;

        /* JADX INFO: renamed from: j */
        boolean f3111j = false;

        /* JADX INFO: renamed from: l */
        List f3113l = null;

        c() {
        }

        private View e() {
            int size = this.f3113l.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = ((RecyclerView.d0) this.f3113l.get(i10)).itemView;
                RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
                if (!qVar.c() && this.f3105d == qVar.a()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            b(null);
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.f3105d = -1;
            } else {
                this.f3105d = ((RecyclerView.q) viewF.getLayoutParams()).a();
            }
        }

        boolean c(RecyclerView.a0 a0Var) {
            int i10 = this.f3105d;
            return i10 >= 0 && i10 < a0Var.b();
        }

        View d(RecyclerView.w wVar) {
            if (this.f3113l != null) {
                return e();
            }
            View viewO = wVar.o(this.f3105d);
            this.f3105d += this.f3106e;
            return viewO;
        }

        public View f(View view) {
            int iA;
            int size = this.f3113l.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = ((RecyclerView.d0) this.f3113l.get(i11)).itemView;
                RecyclerView.q qVar = (RecyclerView.q) view3.getLayoutParams();
                if (view3 != view && !qVar.c() && (iA = (qVar.a() - this.f3105d) * this.f3106e) >= 0 && iA < i10) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    }
                    i10 = iA;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private void A(RecyclerView.w wVar, int i10, int i11) {
        if (i10 < 0) {
            return;
        }
        int i12 = i10 - i11;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (this.mOrientationHelper.d(childAt) > i12 || this.mOrientationHelper.q(childAt) > i12) {
                    y(wVar, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = childCount - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View childAt2 = getChildAt(i15);
            if (this.mOrientationHelper.d(childAt2) > i12 || this.mOrientationHelper.q(childAt2) > i12) {
                y(wVar, i14, i15);
                return;
            }
        }
    }

    private void B() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean C(RecyclerView.w wVar, RecyclerView.a0 a0Var, a aVar) {
        View viewFindReferenceChild;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && aVar.d(focusedChild, a0Var)) {
            aVar.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 != z12 || (viewFindReferenceChild = findReferenceChild(wVar, a0Var, aVar.f3096d, z12)) == null) {
            return false;
        }
        aVar.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!a0Var.e() && supportsPredictiveItemAnimations()) {
            int iG = this.mOrientationHelper.g(viewFindReferenceChild);
            int iD = this.mOrientationHelper.d(viewFindReferenceChild);
            int iN = this.mOrientationHelper.n();
            int i10 = this.mOrientationHelper.i();
            boolean z13 = iD <= iN && iG < iN;
            if (iG >= i10 && iD > i10) {
                z10 = true;
            }
            if (z13 || z10) {
                if (aVar.f3096d) {
                    iN = i10;
                }
                aVar.f3095c = iN;
            }
        }
        return true;
    }

    private boolean D(RecyclerView.a0 a0Var, a aVar) {
        int i10;
        if (!a0Var.e() && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < a0Var.b()) {
                aVar.f3094b = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.a()) {
                    boolean z10 = this.mPendingSavedState.f3092c;
                    aVar.f3096d = z10;
                    if (z10) {
                        aVar.f3095c = this.mOrientationHelper.i() - this.mPendingSavedState.f3091b;
                    } else {
                        aVar.f3095c = this.mOrientationHelper.n() + this.mPendingSavedState.f3091b;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    boolean z11 = this.mShouldReverseLayout;
                    aVar.f3096d = z11;
                    if (z11) {
                        aVar.f3095c = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                    } else {
                        aVar.f3095c = this.mOrientationHelper.n() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        aVar.f3096d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    aVar.a();
                } else {
                    if (this.mOrientationHelper.e(viewFindViewByPosition) > this.mOrientationHelper.o()) {
                        aVar.a();
                        return true;
                    }
                    if (this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.n() < 0) {
                        aVar.f3095c = this.mOrientationHelper.n();
                        aVar.f3096d = false;
                        return true;
                    }
                    if (this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition) < 0) {
                        aVar.f3095c = this.mOrientationHelper.i();
                        aVar.f3096d = true;
                        return true;
                    }
                    aVar.f3095c = aVar.f3096d ? this.mOrientationHelper.d(viewFindViewByPosition) + this.mOrientationHelper.p() : this.mOrientationHelper.g(viewFindViewByPosition);
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void E(RecyclerView.w wVar, RecyclerView.a0 a0Var, a aVar) {
        if (D(a0Var, aVar) || C(wVar, a0Var, aVar)) {
            return;
        }
        aVar.a();
        aVar.f3094b = this.mStackFromEnd ? a0Var.b() - 1 : 0;
    }

    private void F(int i10, int i11, boolean z10, RecyclerView.a0 a0Var) {
        int iN;
        this.mLayoutState.f3114m = resolveIsInfinite();
        this.mLayoutState.f3107f = i10;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(a0Var, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z11 = i10 == 1;
        c cVar = this.mLayoutState;
        int i12 = z11 ? iMax2 : iMax;
        cVar.f3109h = i12;
        if (!z11) {
            iMax = iMax2;
        }
        cVar.f3110i = iMax;
        if (z11) {
            cVar.f3109h = i12 + this.mOrientationHelper.j();
            View viewT = t();
            c cVar2 = this.mLayoutState;
            cVar2.f3106e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewT);
            c cVar3 = this.mLayoutState;
            cVar2.f3105d = position + cVar3.f3106e;
            cVar3.f3103b = this.mOrientationHelper.d(viewT);
            iN = this.mOrientationHelper.d(viewT) - this.mOrientationHelper.i();
        } else {
            View viewU = u();
            this.mLayoutState.f3109h += this.mOrientationHelper.n();
            c cVar4 = this.mLayoutState;
            cVar4.f3106e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewU);
            c cVar5 = this.mLayoutState;
            cVar4.f3105d = position2 + cVar5.f3106e;
            cVar5.f3103b = this.mOrientationHelper.g(viewU);
            iN = (-this.mOrientationHelper.g(viewU)) + this.mOrientationHelper.n();
        }
        c cVar6 = this.mLayoutState;
        cVar6.f3104c = i11;
        if (z10) {
            cVar6.f3104c = i11 - iN;
        }
        cVar6.f3108g = iN;
    }

    private void G(int i10, int i11) {
        this.mLayoutState.f3104c = this.mOrientationHelper.i() - i11;
        c cVar = this.mLayoutState;
        cVar.f3106e = this.mShouldReverseLayout ? -1 : 1;
        cVar.f3105d = i10;
        cVar.f3107f = 1;
        cVar.f3103b = i11;
        cVar.f3108g = Integer.MIN_VALUE;
    }

    private void H(a aVar) {
        G(aVar.f3094b, aVar.f3095c);
    }

    private void I(int i10, int i11) {
        this.mLayoutState.f3104c = i11 - this.mOrientationHelper.n();
        c cVar = this.mLayoutState;
        cVar.f3105d = i10;
        cVar.f3106e = this.mShouldReverseLayout ? 1 : -1;
        cVar.f3107f = -1;
        cVar.f3103b = i11;
        cVar.f3108g = Integer.MIN_VALUE;
    }

    private void J(a aVar) {
        I(aVar.f3094b, aVar.f3095c);
    }

    private int k(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return w.a(a0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int l(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return w.b(a0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int m(RecyclerView.a0 a0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return w.c(a0Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View n() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View o() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View p() {
        return this.mShouldReverseLayout ? n() : o();
    }

    private View q() {
        return this.mShouldReverseLayout ? o() : n();
    }

    private int r(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10) {
        int i11;
        int i12 = this.mOrientationHelper.i() - i10;
        if (i12 <= 0) {
            return 0;
        }
        int i13 = -scrollBy(-i12, wVar, a0Var);
        int i14 = i10 + i13;
        if (!z10 || (i11 = this.mOrientationHelper.i() - i14) <= 0) {
            return i13;
        }
        this.mOrientationHelper.s(i11);
        return i11 + i13;
    }

    private int s(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10) {
        int iN;
        int iN2 = i10 - this.mOrientationHelper.n();
        if (iN2 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(iN2, wVar, a0Var);
        int i12 = i10 + i11;
        if (!z10 || (iN = i12 - this.mOrientationHelper.n()) <= 0) {
            return i11;
        }
        this.mOrientationHelper.s(-iN);
        return i11 - iN;
    }

    private View t() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View u() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void v(RecyclerView.w wVar, RecyclerView.a0 a0Var, int i10, int i11) {
        if (!a0Var.g() || getChildCount() == 0 || a0Var.e() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List listK = wVar.k();
        int size = listK.size();
        int position = getPosition(getChildAt(0));
        int iE = 0;
        int iE2 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.d0 d0Var = (RecyclerView.d0) listK.get(i12);
            if (!d0Var.isRemoved()) {
                if ((d0Var.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                    iE += this.mOrientationHelper.e(d0Var.itemView);
                } else {
                    iE2 += this.mOrientationHelper.e(d0Var.itemView);
                }
            }
        }
        this.mLayoutState.f3113l = listK;
        if (iE > 0) {
            I(getPosition(u()), i10);
            c cVar = this.mLayoutState;
            cVar.f3109h = iE;
            cVar.f3104c = 0;
            cVar.a();
            fill(wVar, this.mLayoutState, a0Var, false);
        }
        if (iE2 > 0) {
            G(getPosition(t()), i11);
            c cVar2 = this.mLayoutState;
            cVar2.f3109h = iE2;
            cVar2.f3104c = 0;
            cVar2.a();
            fill(wVar, this.mLayoutState, a0Var, false);
        }
        this.mLayoutState.f3113l = null;
    }

    private void w() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.g(childAt));
        }
        Log.d(TAG, "==============");
    }

    private void x(RecyclerView.w wVar, c cVar) {
        if (!cVar.f3102a || cVar.f3114m) {
            return;
        }
        int i10 = cVar.f3108g;
        int i11 = cVar.f3110i;
        if (cVar.f3107f == -1) {
            z(wVar, i10, i11);
        } else {
            A(wVar, i10, i11);
        }
    }

    private void y(RecyclerView.w wVar, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                removeAndRecycleViewAt(i10, wVar);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                removeAndRecycleViewAt(i12, wVar);
            }
        }
    }

    private void z(RecyclerView.w wVar, int i10, int i11) {
        int childCount = getChildCount();
        if (i10 < 0) {
            return;
        }
        int iH = (this.mOrientationHelper.h() - i10) + i11;
        if (this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.g(childAt) < iH || this.mOrientationHelper.r(childAt) < iH) {
                    y(wVar, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.g(childAt2) < iH || this.mOrientationHelper.r(childAt2) < iH) {
                y(wVar, i13, i14);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    protected void calculateExtraLayoutSpace(RecyclerView.a0 a0Var, int[] iArr) {
        int i10;
        int extraLayoutSpace = getExtraLayoutSpace(a0Var);
        if (this.mLayoutState.f3107f == -1) {
            i10 = 0;
        } else {
            i10 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.a0 a0Var, RecyclerView.p.c cVar) {
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        ensureLayoutState();
        F(i10 > 0 ? 1 : -1, Math.abs(i10), true, a0Var);
        collectPrefetchPositionsForLayoutState(a0Var, this.mLayoutState, cVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void collectInitialPrefetchPositions(int i10, RecyclerView.p.c cVar) {
        boolean z10;
        int i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.a()) {
            B();
            z10 = this.mShouldReverseLayout;
            i11 = this.mPendingScrollPosition;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z10 = savedState2.f3092c;
            i11 = savedState2.f3090a;
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.mInitialPrefetchItemCount && i11 >= 0 && i11 < i10; i13++) {
            cVar.a(i11, 0);
            i11 += i12;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.a0 a0Var, c cVar, RecyclerView.p.c cVar2) {
        int i10 = cVar.f3105d;
        if (i10 < 0 || i10 >= a0Var.b()) {
            return;
        }
        cVar2.a(i10, Math.max(0, cVar.f3108g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.a0 a0Var) {
        return k(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.a0 a0Var) {
        return l(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.a0 a0Var) {
        return m(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.z.b
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = (i10 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.a0 a0Var) {
        return k(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.a0 a0Var) {
        return l(a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.a0 a0Var) {
        return m(a0Var);
    }

    int convertFocusDirectionToLayoutDirection(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    c createLayoutState() {
        return new c();
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.w wVar, c cVar, RecyclerView.a0 a0Var, boolean z10) {
        int i10 = cVar.f3104c;
        int i11 = cVar.f3108g;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                cVar.f3108g = i11 + i10;
            }
            x(wVar, cVar);
        }
        int i12 = cVar.f3104c + cVar.f3109h;
        b bVar = this.mLayoutChunkResult;
        while (true) {
            if ((!cVar.f3114m && i12 <= 0) || !cVar.c(a0Var)) {
                break;
            }
            bVar.a();
            layoutChunk(wVar, a0Var, cVar, bVar);
            if (!bVar.f3099b) {
                cVar.f3103b += bVar.f3098a * cVar.f3107f;
                if (!bVar.f3100c || cVar.f3113l != null || !a0Var.e()) {
                    int i13 = cVar.f3104c;
                    int i14 = bVar.f3098a;
                    cVar.f3104c = i13 - i14;
                    i12 -= i14;
                }
                int i15 = cVar.f3108g;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + bVar.f3098a;
                    cVar.f3108g = i16;
                    int i17 = cVar.f3104c;
                    if (i17 < 0) {
                        cVar.f3108g = i16 + i17;
                    }
                    x(wVar, cVar);
                }
                if (z10 && bVar.f3101d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - cVar.f3104c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findFirstVisibleChildClosestToEnd(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z10, z11) : findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
    }

    View findFirstVisibleChildClosestToStart(boolean z10, boolean z11) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z10, z11) : findOneVisibleChild(0, getChildCount(), z10, z11);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i10, int i11) {
        int i12;
        int i13;
        ensureLayoutState();
        if (i11 <= i10 && i11 >= i10) {
            return getChildAt(i10);
        }
        if (this.mOrientationHelper.g(getChildAt(i10)) < this.mOrientationHelper.n()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i12, i13) : this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    View findOneVisibleChild(int i10, int i11, boolean z10, boolean z11) {
        ensureLayoutState();
        int i12 = ModuleType.TYPE_WEATHER;
        int i13 = z10 ? 24579 : 320;
        if (!z11) {
            i12 = 0;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i13, i12) : this.mVerticalBoundCheck.a(i10, i11, i13, i12);
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View findReferenceChild(androidx.recyclerview.widget.RecyclerView.w r17, androidx.recyclerview.widget.RecyclerView.a0 r18, boolean r19, boolean r20) {
        /*
            r16 = this;
            r0 = r16
            r16.ensureLayoutState()
            int r1 = r16.getChildCount()
            r2 = 0
            r3 = 1
            if (r20 == 0) goto L15
            int r1 = r16.getChildCount()
            int r1 = r1 - r3
            r4 = -1
            r5 = r4
            goto L18
        L15:
            r4 = r1
            r1 = r2
            r5 = r3
        L18:
            int r6 = r18.b()
            androidx.recyclerview.widget.t r7 = r0.mOrientationHelper
            int r7 = r7.n()
            androidx.recyclerview.widget.t r8 = r0.mOrientationHelper
            int r8 = r8.i()
            r9 = 0
            r10 = r9
            r11 = r10
        L2b:
            if (r1 == r4) goto L7a
            android.view.View r12 = r0.getChildAt(r1)
            int r13 = r0.getPosition(r12)
            androidx.recyclerview.widget.t r14 = r0.mOrientationHelper
            int r14 = r14.g(r12)
            androidx.recyclerview.widget.t r15 = r0.mOrientationHelper
            int r15 = r15.d(r12)
            if (r13 < 0) goto L78
            if (r13 >= r6) goto L78
            android.view.ViewGroup$LayoutParams r13 = r12.getLayoutParams()
            androidx.recyclerview.widget.RecyclerView$q r13 = (androidx.recyclerview.widget.RecyclerView.q) r13
            boolean r13 = r13.c()
            if (r13 == 0) goto L55
            if (r11 != 0) goto L78
            r11 = r12
            goto L78
        L55:
            if (r15 > r7) goto L5b
            if (r14 >= r7) goto L5b
            r13 = r3
            goto L5c
        L5b:
            r13 = r2
        L5c:
            if (r14 < r8) goto L62
            if (r15 <= r8) goto L62
            r14 = r3
            goto L63
        L62:
            r14 = r2
        L63:
            if (r13 != 0) goto L69
            if (r14 == 0) goto L68
            goto L69
        L68:
            return r12
        L69:
            if (r19 == 0) goto L71
            if (r14 == 0) goto L6e
            goto L73
        L6e:
            if (r9 != 0) goto L78
            goto L77
        L71:
            if (r13 == 0) goto L75
        L73:
            r10 = r12
            goto L78
        L75:
            if (r9 != 0) goto L78
        L77:
            r9 = r12
        L78:
            int r1 = r1 + r5
            goto L2b
        L7a:
            if (r9 == 0) goto L7d
            goto L82
        L7d:
            if (r10 == 0) goto L81
            r9 = r10
            goto L82
        L81:
            r9 = r11
        L82:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.findReferenceChild(androidx.recyclerview.widget.RecyclerView$w, androidx.recyclerview.widget.RecyclerView$a0, boolean, boolean):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View findViewByPosition(int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i10 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i10) {
                return childAt;
            }
        }
        return super.findViewByPosition(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return new RecyclerView.q(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.a0 a0Var) {
        if (a0Var.d()) {
            return this.mOrientationHelper.o();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.w wVar, RecyclerView.a0 a0Var, c cVar, b bVar) {
        int i10;
        int i11;
        int i12;
        int paddingLeft;
        int iF;
        View viewD = cVar.d(wVar);
        if (viewD == null) {
            bVar.f3099b = true;
            return;
        }
        RecyclerView.q qVar = (RecyclerView.q) viewD.getLayoutParams();
        if (cVar.f3113l == null) {
            if (this.mShouldReverseLayout == (cVar.f3107f == -1)) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (cVar.f3107f == -1)) {
                addDisappearingView(viewD);
            } else {
                addDisappearingView(viewD, 0);
            }
        }
        measureChildWithMargins(viewD, 0, 0);
        bVar.f3098a = this.mOrientationHelper.e(viewD);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iF = getWidth() - getPaddingRight();
                paddingLeft = iF - this.mOrientationHelper.f(viewD);
            } else {
                paddingLeft = getPaddingLeft();
                iF = this.mOrientationHelper.f(viewD) + paddingLeft;
            }
            if (cVar.f3107f == -1) {
                int i13 = cVar.f3103b;
                i12 = i13;
                i11 = iF;
                i10 = i13 - bVar.f3098a;
            } else {
                int i14 = cVar.f3103b;
                i10 = i14;
                i11 = iF;
                i12 = bVar.f3098a + i14;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF2 = this.mOrientationHelper.f(viewD) + paddingTop;
            if (cVar.f3107f == -1) {
                int i15 = cVar.f3103b;
                i11 = i15;
                i10 = paddingTop;
                i12 = iF2;
                paddingLeft = i15 - bVar.f3098a;
            } else {
                int i16 = cVar.f3103b;
                i10 = paddingTop;
                i11 = bVar.f3098a + i16;
                i12 = iF2;
                paddingLeft = i16;
            }
        }
        layoutDecoratedWithMargins(viewD, paddingLeft, i10, i11, i12);
        if (qVar.c() || qVar.b()) {
            bVar.f3100c = true;
        }
        bVar.f3101d = viewD.hasFocusable();
    }

    void onAnchorReady(RecyclerView.w wVar, RecyclerView.a0 a0Var, a aVar, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(wVar);
            wVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        int iConvertFocusDirectionToLayoutDirection;
        B();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        F(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.o() * MAX_SCROLL_FACTOR), false, a0Var);
        c cVar = this.mLayoutState;
        cVar.f3108g = Integer.MIN_VALUE;
        cVar.f3102a = false;
        fill(wVar, cVar, a0Var, true);
        View viewQ = iConvertFocusDirectionToLayoutDirection == -1 ? q() : p();
        View viewU = iConvertFocusDirectionToLayoutDirection == -1 ? u() : t();
        if (!viewU.hasFocusable()) {
            return viewQ;
        }
        if (viewQ == null) {
            return null;
        }
        return viewU;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iR;
        int i14;
        View viewFindViewByPosition;
        int iG;
        int i15;
        int i16 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && a0Var.b() == 0) {
            removeAndRecycleAllViews(wVar);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f3090a;
        }
        ensureLayoutState();
        this.mLayoutState.f3102a = false;
        B();
        View focusedChild = getFocusedChild();
        a aVar = this.mAnchorInfo;
        if (!aVar.f3097e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            aVar.e();
            a aVar2 = this.mAnchorInfo;
            aVar2.f3096d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            E(wVar, a0Var, aVar2);
            this.mAnchorInfo.f3097e = true;
        } else if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.n())) {
            this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
        }
        c cVar = this.mLayoutState;
        cVar.f3107f = cVar.f3112k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(a0Var, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.n();
        int iMax2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (a0Var.e() && (i14 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i14)) != null) {
            if (this.mShouldReverseLayout) {
                i15 = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition);
                iG = this.mPendingScrollPositionOffset;
            } else {
                iG = this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.n();
                i15 = this.mPendingScrollPositionOffset;
            }
            int i17 = i15 - iG;
            if (i17 > 0) {
                iMax += i17;
            } else {
                iMax2 -= i17;
            }
        }
        a aVar3 = this.mAnchorInfo;
        if (!aVar3.f3096d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i16 = 1;
        }
        onAnchorReady(wVar, a0Var, aVar3, i16);
        detachAndScrapAttachedViews(wVar);
        this.mLayoutState.f3114m = resolveIsInfinite();
        this.mLayoutState.f3111j = a0Var.e();
        this.mLayoutState.f3110i = 0;
        a aVar4 = this.mAnchorInfo;
        if (aVar4.f3096d) {
            J(aVar4);
            c cVar2 = this.mLayoutState;
            cVar2.f3109h = iMax;
            fill(wVar, cVar2, a0Var, false);
            c cVar3 = this.mLayoutState;
            i11 = cVar3.f3103b;
            int i18 = cVar3.f3105d;
            int i19 = cVar3.f3104c;
            if (i19 > 0) {
                iMax2 += i19;
            }
            H(this.mAnchorInfo);
            c cVar4 = this.mLayoutState;
            cVar4.f3109h = iMax2;
            cVar4.f3105d += cVar4.f3106e;
            fill(wVar, cVar4, a0Var, false);
            c cVar5 = this.mLayoutState;
            i10 = cVar5.f3103b;
            int i20 = cVar5.f3104c;
            if (i20 > 0) {
                I(i18, i11);
                c cVar6 = this.mLayoutState;
                cVar6.f3109h = i20;
                fill(wVar, cVar6, a0Var, false);
                i11 = this.mLayoutState.f3103b;
            }
        } else {
            H(aVar4);
            c cVar7 = this.mLayoutState;
            cVar7.f3109h = iMax2;
            fill(wVar, cVar7, a0Var, false);
            c cVar8 = this.mLayoutState;
            i10 = cVar8.f3103b;
            int i21 = cVar8.f3105d;
            int i22 = cVar8.f3104c;
            if (i22 > 0) {
                iMax += i22;
            }
            J(this.mAnchorInfo);
            c cVar9 = this.mLayoutState;
            cVar9.f3109h = iMax;
            cVar9.f3105d += cVar9.f3106e;
            fill(wVar, cVar9, a0Var, false);
            c cVar10 = this.mLayoutState;
            i11 = cVar10.f3103b;
            int i23 = cVar10.f3104c;
            if (i23 > 0) {
                G(i21, i10);
                c cVar11 = this.mLayoutState;
                cVar11.f3109h = i23;
                fill(wVar, cVar11, a0Var, false);
                i10 = this.mLayoutState.f3103b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iR2 = r(i10, wVar, a0Var, true);
                i12 = i11 + iR2;
                i13 = i10 + iR2;
                iR = s(i12, wVar, a0Var, false);
            } else {
                int iS = s(i11, wVar, a0Var, true);
                i12 = i11 + iS;
                i13 = i10 + iS;
                iR = r(i13, wVar, a0Var, false);
            }
            i11 = i12 + iR;
            i10 = i13 + iR;
        }
        v(wVar, a0Var, i11, i10);
        if (a0Var.e()) {
            this.mAnchorInfo.e();
        } else {
            this.mOrientationHelper.t();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.a0 a0Var) {
        super.onLayoutCompleted(a0Var);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z10 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.f3092c = z10;
            if (z10) {
                View viewT = t();
                savedState.f3091b = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewT);
                savedState.f3090a = getPosition(viewT);
            } else {
                View viewU = u();
                savedState.f3090a = getPosition(viewU);
                savedState.f3091b = this.mOrientationHelper.g(viewU) - this.mOrientationHelper.n();
            }
        } else {
            savedState.b();
        }
        return savedState;
    }

    public void prepareForDrop(View view, View view2, int i10, int i11) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        B();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b10 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b10 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (b10 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.l() == 0 && this.mOrientationHelper.h() == 0;
    }

    int scrollBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f3102a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        F(i11, iAbs, true, a0Var);
        c cVar = this.mLayoutState;
        int iFill = cVar.f3108g + fill(wVar, cVar, a0Var, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i10 = i11 * iFill;
        }
        this.mOrientationHelper.s(-i10);
        this.mLayoutState.f3112k = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i10, wVar, a0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.a0 a0Var) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i10, wVar, a0Var);
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.mInitialPrefetchItemCount = i10;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mOrientation || this.mOrientationHelper == null) {
            t tVarB = t.b(this, i10);
            this.mOrientationHelper = tVarB;
            this.mAnchorInfo.f3093a = tVarB;
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z10) {
        this.mRecycleChildrenOnDetach = z10;
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (z10 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z10;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z10) {
        this.mSmoothScrollbarEnabled = z10;
    }

    public void setStackFromEnd(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z10) {
            return;
        }
        this.mStackFromEnd = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i10) {
        p pVar = new p(recyclerView.getContext());
        pVar.setTargetPosition(i10);
        startSmoothScroll(pVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iG = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i10 = 1; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int position2 = getPosition(childAt);
                int iG2 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    w();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(iG2 < iG);
                    throw new RuntimeException(sb.toString());
                }
                if (iG2 > iG) {
                    w();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i11 = 1; i11 < getChildCount(); i11++) {
            View childAt2 = getChildAt(i11);
            int position3 = getPosition(childAt2);
            int iG3 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                w();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(iG3 < iG);
                throw new RuntimeException(sb2.toString());
            }
            if (iG3 < iG) {
                w();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i10, boolean z10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i10);
        setReverseLayout(z10);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new a();
        this.mLayoutChunkResult = new b();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.p.d properties = RecyclerView.p.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f3159a);
        setReverseLayout(properties.f3161c);
        setStackFromEnd(properties.f3162d);
    }
}
