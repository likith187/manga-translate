package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.t;
import com.coui.appcompat.preference.COUIPreferenceUtils;
import com.coui.appcompat.tooltips.COUIToolTips;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.appcompat.version.COUIVersionUtil;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import o.d;
import o.e;
import o.h;
import o.k;
import o.m;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.2.0-alpha04";
    private static e sSharedValues;
    SparseArray<View> mChildrenByIds;
    private ArrayList<ConstraintHelper> mConstraintHelpers;
    protected androidx.constraintlayout.widget.b mConstraintLayoutSpec;
    private androidx.constraintlayout.widget.c mConstraintSet;
    private int mConstraintSetId;
    private HashMap<String, Integer> mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected o.f mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    c mMeasurer;
    private l.e mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private ArrayList<d> mModifiers;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<o.e> mTempMapIdToWidget;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1658a;

        static {
            int[] iArr = new int[e.b.values().length];
            f1658a = iArr;
            try {
                iArr[e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1658a[e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1658a[e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1658a[e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class c implements b.InterfaceC0199b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ConstraintLayout f1660a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1661b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1662c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1663d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1664e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1665f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f1666g;

        c(ConstraintLayout constraintLayout) {
            this.f1660a = constraintLayout;
        }

        private boolean d(int i10, int i11, int i12) {
            if (i10 == i11) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i10);
            return View.MeasureSpec.getMode(i11) == 1073741824 && (mode == Integer.MIN_VALUE || mode == 0) && i12 == View.MeasureSpec.getSize(i11);
        }

        @Override // p.b.InterfaceC0199b
        public final void a() {
            int childCount = this.f1660a.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = this.f1660a.getChildAt(i10);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).b(this.f1660a);
                }
            }
            int size = this.f1660a.mConstraintHelpers.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    ((ConstraintHelper) this.f1660a.mConstraintHelpers.get(i11)).s(this.f1660a);
                }
            }
        }

        @Override // p.b.InterfaceC0199b
        public final void b(o.e eVar, b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int i10;
            int measuredHeight;
            int i11;
            if (eVar == null) {
                return;
            }
            if (eVar.X() == 8 && !eVar.l0()) {
                aVar.f15066e = 0;
                aVar.f15067f = 0;
                aVar.f15068g = 0;
                return;
            }
            if (eVar.M() == null) {
                return;
            }
            ConstraintLayout.access$000(ConstraintLayout.this);
            e.b bVar = aVar.f15062a;
            e.b bVar2 = aVar.f15063b;
            int i12 = aVar.f15064c;
            int i13 = aVar.f15065d;
            int i14 = this.f1661b + this.f1662c;
            int i15 = this.f1663d;
            View view = (View) eVar.u();
            int[] iArr = a.f1658a;
            int i16 = iArr[bVar.ordinal()];
            if (i16 == 1) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else if (i16 == 2) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1665f, i15, -2);
            } else if (i16 == 3) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1665f, i15 + eVar.D(), -1);
            } else if (i16 != 4) {
                iMakeMeasureSpec = 0;
            } else {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1665f, i15, -2);
                boolean z10 = eVar.f14213w == 1;
                int i17 = aVar.f15071j;
                if (i17 == b.a.f15060l || i17 == b.a.f15061m) {
                    boolean z11 = view.getMeasuredHeight() == eVar.z();
                    if (aVar.f15071j == b.a.f15061m || !z10 || ((z10 && z11) || (view instanceof Placeholder) || eVar.p0())) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.Y(), 1073741824);
                    }
                }
            }
            int i18 = iArr[bVar2.ordinal()];
            if (i18 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
            } else if (i18 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1666g, i14, -2);
            } else if (i18 == 3) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1666g, i14 + eVar.W(), -1);
            } else if (i18 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1666g, i14, -2);
                boolean z12 = eVar.f14215x == 1;
                int i19 = aVar.f15071j;
                if (i19 == b.a.f15060l || i19 == b.a.f15061m) {
                    boolean z13 = view.getMeasuredWidth() == eVar.Y();
                    if (aVar.f15071j == b.a.f15061m || !z12 || ((z12 && z13) || (view instanceof Placeholder) || eVar.q0())) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.z(), 1073741824);
                    }
                }
            }
            o.f fVar = (o.f) eVar.M();
            if (fVar != null && k.b(ConstraintLayout.this.mOptimizationLevel, COUIToolTips.ALIGN_TOP) && view.getMeasuredWidth() == eVar.Y() && view.getMeasuredWidth() < fVar.Y() && view.getMeasuredHeight() == eVar.z() && view.getMeasuredHeight() < fVar.z() && view.getBaseline() == eVar.r() && !eVar.o0() && d(eVar.E(), iMakeMeasureSpec, eVar.Y()) && d(eVar.F(), iMakeMeasureSpec2, eVar.z())) {
                aVar.f15066e = eVar.Y();
                aVar.f15067f = eVar.z();
                aVar.f15068g = eVar.r();
                return;
            }
            e.b bVar3 = e.b.MATCH_CONSTRAINT;
            boolean z14 = bVar == bVar3;
            boolean z15 = bVar2 == bVar3;
            e.b bVar4 = e.b.MATCH_PARENT;
            boolean z16 = bVar2 == bVar4 || bVar2 == e.b.FIXED;
            boolean z17 = bVar == bVar4 || bVar == e.b.FIXED;
            boolean z18 = z14 && eVar.f14180f0 > 0.0f;
            boolean z19 = z15 && eVar.f14180f0 > 0.0f;
            if (view == null) {
                return;
            }
            b bVar5 = (b) view.getLayoutParams();
            int i20 = aVar.f15071j;
            if (i20 != b.a.f15060l && i20 != b.a.f15061m && z14 && eVar.f14213w == 0 && z15 && eVar.f14215x == 0) {
                i11 = -1;
                measuredHeight = 0;
                baseline = 0;
                iMax = 0;
            } else {
                if ((view instanceof VirtualLayout) && (eVar instanceof m)) {
                    ((VirtualLayout) view).x((m) eVar, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                eVar.a1(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i21 = eVar.f14219z;
                iMax = i21 > 0 ? Math.max(i21, measuredWidth) : measuredWidth;
                int i22 = eVar.A;
                if (i22 > 0) {
                    iMax = Math.min(i22, iMax);
                }
                int i23 = eVar.C;
                if (i23 > 0) {
                    measuredHeight = Math.max(i23, measuredHeight2);
                    i10 = iMakeMeasureSpec;
                } else {
                    i10 = iMakeMeasureSpec;
                    measuredHeight = measuredHeight2;
                }
                int i24 = eVar.D;
                if (i24 > 0) {
                    measuredHeight = Math.min(i24, measuredHeight);
                }
                int i25 = iMakeMeasureSpec2;
                if (!k.b(ConstraintLayout.this.mOptimizationLevel, 1)) {
                    if (z18 && z16) {
                        iMax = (int) ((measuredHeight * eVar.f14180f0) + 0.5f);
                    } else if (z19 && z17) {
                        measuredHeight = (int) ((iMax / eVar.f14180f0) + 0.5f);
                    }
                }
                if (measuredWidth != iMax || measuredHeight2 != measuredHeight) {
                    int iMakeMeasureSpec3 = measuredWidth != iMax ? View.MeasureSpec.makeMeasureSpec(iMax, 1073741824) : i10;
                    int iMakeMeasureSpec4 = measuredHeight2 != measuredHeight ? View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824) : i25;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                    eVar.a1(iMakeMeasureSpec3, iMakeMeasureSpec4);
                    iMax = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i11 = -1;
            }
            boolean z20 = baseline != i11;
            aVar.f15070i = (iMax == aVar.f15064c && measuredHeight == aVar.f15065d) ? false : true;
            if (bVar5.mNeedsBaseline) {
                z20 = true;
            }
            if (z20 && baseline != -1 && eVar.r() != baseline) {
                aVar.f15070i = true;
            }
            aVar.f15066e = iMax;
            aVar.f15067f = measuredHeight;
            aVar.f15069h = z20;
            aVar.f15068g = baseline;
            ConstraintLayout.access$000(ConstraintLayout.this);
        }

        public void c(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f1661b = i12;
            this.f1662c = i13;
            this.f1663d = i14;
            this.f1664e = i15;
            this.f1665f = i10;
            this.f1666g = i11;
        }
    }

    public interface d {
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new o.f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        c(null, 0, 0);
    }

    static /* synthetic */ l.e access$000(ConstraintLayout constraintLayout) {
        constraintLayout.getClass();
        return null;
    }

    private o.e b(int i10) {
        if (i10 == 0) {
            return this.mLayoutWidget;
        }
        View viewFindViewById = this.mChildrenByIds.get(i10);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i10)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.mLayoutWidget;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((b) viewFindViewById.getLayoutParams()).mWidget;
    }

    private void c(AttributeSet attributeSet, int i10, int i11) {
        this.mLayoutWidget.G0(this);
        this.mLayoutWidget.b2(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i10, i11);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i12 = 0; i12 < indexCount; i12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i12);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = typedArrayObtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == R$styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        this.mConstraintSet = cVar;
                        cVar.F(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.c2(this.mOptimizationLevel);
    }

    private void d() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void e() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            o.e viewWidget = getViewWidget(getChildAt(i10));
            if (viewWidget != null) {
                viewWidget.v0();
            }
        }
        if (zIsInEditMode) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    b(childAt.getId()).H0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt2 = getChildAt(i12);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.c cVar = this.mConstraintSet;
        if (cVar != null) {
            cVar.k(this, true);
        }
        this.mLayoutWidget.z1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i13 = 0; i13 < size; i13++) {
                this.mConstraintHelpers.get(i13).u(this);
            }
        }
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt3 = getChildAt(i14);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).c(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt4 = getChildAt(i15);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt5 = getChildAt(i16);
            o.e viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                b bVar = (b) childAt5.getLayoutParams();
                this.mLayoutWidget.b(viewWidget2);
                applyConstraintsFromLayoutParams(zIsInEditMode, childAt5, viewWidget2, bVar, this.mTempMapIdToWidget);
            }
        }
    }

    private void f(o.e eVar, b bVar, SparseArray sparseArray, int i10, d.a aVar) {
        View view = this.mChildrenByIds.get(i10);
        o.e eVar2 = (o.e) sparseArray.get(i10);
        if (eVar2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.mNeedsBaseline = true;
        d.a aVar2 = d.a.BASELINE;
        if (aVar == aVar2) {
            b bVar2 = (b) view.getLayoutParams();
            bVar2.mNeedsBaseline = true;
            bVar2.mWidget.P0(true);
        }
        eVar.q(aVar2).b(eVar2.q(aVar), bVar.baselineMargin, bVar.goneBaselineMargin, true);
        eVar.P0(true);
        eVar.q(d.a.TOP).q();
        eVar.q(d.a.BOTTOM).q();
    }

    private boolean g() {
        int childCount = getChildCount();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            if (getChildAt(i10).isLayoutRequested()) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10) {
            e();
        }
        return z10;
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int iMax2 = Math.max(0, getPaddingStart()) + Math.max(0, getPaddingEnd());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static e getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new e();
        }
        return sSharedValues;
    }

    public void addValueModifier(d dVar) {
        if (this.mModifiers == null) {
            this.mModifiers = new ArrayList<>();
        }
        this.mModifiers.add(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyConstraintsFromLayoutParams(boolean z10, View view, o.e eVar, b bVar, SparseArray<o.e> sparseArray) {
        o.e eVar2;
        o.e eVar3;
        o.e eVar4;
        o.e eVar5;
        int i10;
        bVar.validate();
        bVar.helped = false;
        eVar.o1(view.getVisibility());
        if (bVar.mIsInPlaceholder) {
            eVar.Y0(true);
            eVar.o1(8);
        }
        eVar.G0(view);
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).q(eVar, this.mLayoutWidget.V1());
        }
        if (bVar.mIsGuideline) {
            h hVar = (h) eVar;
            int i11 = bVar.mResolvedGuideBegin;
            int i12 = bVar.mResolvedGuideEnd;
            float f10 = bVar.mResolvedGuidePercent;
            if (f10 != -1.0f) {
                hVar.E1(f10);
                return;
            } else if (i11 != -1) {
                hVar.C1(i11);
                return;
            } else {
                if (i12 != -1) {
                    hVar.D1(i12);
                    return;
                }
                return;
            }
        }
        int i13 = bVar.mResolvedLeftToLeft;
        int i14 = bVar.mResolvedLeftToRight;
        int i15 = bVar.mResolvedRightToLeft;
        int i16 = bVar.mResolvedRightToRight;
        int i17 = bVar.mResolveGoneLeftMargin;
        int i18 = bVar.mResolveGoneRightMargin;
        float f11 = bVar.mResolvedHorizontalBias;
        int i19 = bVar.circleConstraint;
        if (i19 != -1) {
            o.e eVar6 = sparseArray.get(i19);
            if (eVar6 != null) {
                eVar.m(eVar6, bVar.circleAngle, bVar.circleRadius);
            }
        } else {
            if (i13 != -1) {
                o.e eVar7 = sparseArray.get(i13);
                if (eVar7 != null) {
                    d.a aVar = d.a.LEFT;
                    eVar.g0(aVar, eVar7, aVar, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i17);
                }
            } else if (i14 != -1 && (eVar2 = sparseArray.get(i14)) != null) {
                eVar.g0(d.a.LEFT, eVar2, d.a.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i17);
            }
            if (i15 != -1) {
                o.e eVar8 = sparseArray.get(i15);
                if (eVar8 != null) {
                    eVar.g0(d.a.RIGHT, eVar8, d.a.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i18);
                }
            } else if (i16 != -1 && (eVar3 = sparseArray.get(i16)) != null) {
                d.a aVar2 = d.a.RIGHT;
                eVar.g0(aVar2, eVar3, aVar2, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i18);
            }
            int i20 = bVar.topToTop;
            if (i20 != -1) {
                o.e eVar9 = sparseArray.get(i20);
                if (eVar9 != null) {
                    d.a aVar3 = d.a.TOP;
                    eVar.g0(aVar3, eVar9, aVar3, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.goneTopMargin);
                }
            } else {
                int i21 = bVar.topToBottom;
                if (i21 != -1 && (eVar4 = sparseArray.get(i21)) != null) {
                    eVar.g0(d.a.TOP, eVar4, d.a.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.goneTopMargin);
                }
            }
            int i22 = bVar.bottomToTop;
            if (i22 != -1) {
                o.e eVar10 = sparseArray.get(i22);
                if (eVar10 != null) {
                    eVar.g0(d.a.BOTTOM, eVar10, d.a.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.goneBottomMargin);
                }
            } else {
                int i23 = bVar.bottomToBottom;
                if (i23 != -1 && (eVar5 = sparseArray.get(i23)) != null) {
                    d.a aVar4 = d.a.BOTTOM;
                    eVar.g0(aVar4, eVar5, aVar4, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.goneBottomMargin);
                }
            }
            int i24 = bVar.baselineToBaseline;
            if (i24 != -1) {
                f(eVar, bVar, sparseArray, i24, d.a.BASELINE);
            } else {
                int i25 = bVar.baselineToTop;
                if (i25 != -1) {
                    f(eVar, bVar, sparseArray, i25, d.a.TOP);
                } else {
                    int i26 = bVar.baselineToBottom;
                    if (i26 != -1) {
                        f(eVar, bVar, sparseArray, i26, d.a.BOTTOM);
                    }
                }
            }
            if (f11 >= 0.0f) {
                eVar.R0(f11);
            }
            float f12 = bVar.verticalBias;
            if (f12 >= 0.0f) {
                eVar.i1(f12);
            }
        }
        if (z10 && ((i10 = bVar.editorAbsoluteX) != -1 || bVar.editorAbsoluteY != -1)) {
            eVar.g1(i10, bVar.editorAbsoluteY);
        }
        if (bVar.mHorizontalDimensionFixed) {
            eVar.U0(e.b.FIXED);
            eVar.p1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                eVar.U0(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
            if (bVar.constrainedWidth) {
                eVar.U0(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.U0(e.b.MATCH_PARENT);
            }
            eVar.q(d.a.LEFT).f14166g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            eVar.q(d.a.RIGHT).f14166g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        } else {
            eVar.U0(e.b.MATCH_CONSTRAINT);
            eVar.p1(0);
        }
        if (bVar.mVerticalDimensionFixed) {
            eVar.l1(e.b.FIXED);
            eVar.Q0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                eVar.l1(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
            if (bVar.constrainedHeight) {
                eVar.l1(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.l1(e.b.MATCH_PARENT);
            }
            eVar.q(d.a.TOP).f14166g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            eVar.q(d.a.BOTTOM).f14166g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        } else {
            eVar.l1(e.b.MATCH_CONSTRAINT);
            eVar.Q0(0);
        }
        eVar.I0(bVar.dimensionRatio);
        eVar.W0(bVar.horizontalWeight);
        eVar.n1(bVar.verticalWeight);
        eVar.S0(bVar.horizontalChainStyle);
        eVar.j1(bVar.verticalChainStyle);
        eVar.q1(bVar.wrapBehaviorInParent);
        eVar.V0(bVar.matchConstraintDefaultWidth, bVar.matchConstraintMinWidth, bVar.matchConstraintMaxWidth, bVar.matchConstraintPercentWidth);
        eVar.m1(bVar.matchConstraintDefaultHeight, bVar.matchConstraintMinHeight, bVar.matchConstraintMaxHeight, bVar.matchConstraintPercentHeight);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.mConstraintHelpers.get(i10).t(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i12 = Integer.parseInt(strArrSplit[0]);
                        int i13 = Integer.parseInt(strArrSplit[1]);
                        int i14 = Integer.parseInt(strArrSplit[2]);
                        int i15 = (int) ((i12 / 1080.0f) * width);
                        int i16 = (int) ((i13 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f10 = i15;
                        float f11 = i16;
                        float f12 = i15 + ((int) ((i14 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float f13 = i16 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f12, f11, f12, f13, paint);
                        canvas.drawLine(f12, f13, f10, f13, paint);
                        canvas.drawLine(f10, f13, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, f13, paint);
                        canvas.drawLine(f10, f13, f12, f11, paint);
                    }
                }
            }
        }
    }

    protected boolean dynamicUpdateConstraints(int i10, int i11) {
        if (this.mModifiers == null) {
            return false;
        }
        View.MeasureSpec.getSize(i10);
        View.MeasureSpec.getSize(i11);
        Iterator<d> it = this.mModifiers.iterator();
        while (it.hasNext()) {
            t.a(it.next());
            Iterator it2 = this.mLayoutWidget.w1().iterator();
            if (it2.hasNext()) {
                View view = (View) ((o.e) it2.next()).u();
                view.getId();
                throw null;
            }
        }
        return false;
    }

    public void fillMetrics(l.e eVar) {
        this.mLayoutWidget.N1(eVar);
    }

    @Override // android.view.View
    public void forceLayout() {
        d();
        super.forceLayout();
    }

    public Object getDesignInformation(int i10, Object obj) {
        if (i10 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.mDesignIds;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.P1();
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.mLayoutWidget.f14197o == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.mLayoutWidget.f14197o = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.mLayoutWidget.f14197o = "parent";
            }
        }
        if (this.mLayoutWidget.v() == null) {
            o.f fVar = this.mLayoutWidget;
            fVar.H0(fVar.f14197o);
            Log.v(TAG, " setDebugName " + this.mLayoutWidget.v());
        }
        for (o.e eVar : this.mLayoutWidget.w1()) {
            View view = (View) eVar.u();
            if (view != null) {
                if (eVar.f14197o == null && (id = view.getId()) != -1) {
                    eVar.f14197o = getContext().getResources().getResourceEntryName(id);
                }
                if (eVar.v() == null) {
                    eVar.H0(eVar.f14197o);
                    Log.v(TAG, " setDebugName " + eVar.v());
                }
            }
        }
        this.mLayoutWidget.Q(sb);
        return sb.toString();
    }

    public View getViewById(int i10) {
        return this.mChildrenByIds.get(i10);
    }

    public final o.e getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).mWidget;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).mWidget;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isRtl() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    public void loadLayoutDescription(int i10) {
        if (i10 == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.b(getContext(), this, i10);
        } catch (Resources.NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            b bVar = (b) childAt.getLayoutParams();
            o.e eVar = bVar.mWidget;
            if ((childAt.getVisibility() != 8 || bVar.mIsGuideline || bVar.mIsHelper || bVar.mIsVirtualGroup || zIsInEditMode) && !bVar.mIsInPlaceholder) {
                int iZ = eVar.Z();
                int iA0 = eVar.a0();
                int iY = eVar.Y() + iZ;
                int iZ2 = eVar.z() + iA0;
                childAt.layout(iZ, iA0, iY, iZ2);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iZ, iA0, iY, iZ2);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                this.mConstraintHelpers.get(i15).r(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean zDynamicUpdateConstraints = this.mDirtyHierarchy | dynamicUpdateConstraints(i10, i11);
        this.mDirtyHierarchy = zDynamicUpdateConstraints;
        if (!zDynamicUpdateConstraints) {
            int childCount = getChildCount();
            int i12 = 0;
            while (true) {
                if (i12 >= childCount) {
                    break;
                }
                if (getChildAt(i12).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
                i12++;
            }
        }
        this.mOnMeasureWidthMeasureSpec = i10;
        this.mOnMeasureHeightMeasureSpec = i11;
        this.mLayoutWidget.e2(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (g()) {
                this.mLayoutWidget.g2();
            }
        }
        this.mLayoutWidget.N1(null);
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i10, i11);
        resolveMeasuredDimension(i10, i11, this.mLayoutWidget.Y(), this.mLayoutWidget.z(), this.mLayoutWidget.W1(), this.mLayoutWidget.U1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        o.e viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof h)) {
            b bVar = (b) view.getLayoutParams();
            h hVar = new h();
            bVar.mWidget = hVar;
            bVar.mIsGuideline = true;
            hVar.F1(bVar.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.w();
            ((b) view.getLayoutParams()).mIsHelper = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.y1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    protected void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = new androidx.constraintlayout.widget.b(getContext(), this, i10);
    }

    void removeValueModifier(d dVar) {
        if (dVar == null) {
            return;
        }
        this.mModifiers.remove(dVar);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        d();
        super.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resolveMeasuredDimension(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        c cVar = this.mMeasurer;
        int i14 = cVar.f1664e;
        int iResolveSizeAndState = View.resolveSizeAndState(i12 + cVar.f1663d, i10, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i13 + i14, i11, 0);
        int i15 = iResolveSizeAndState & UIUtil.CONSTANT_COLOR_MASK;
        int i16 = iResolveSizeAndState2 & UIUtil.CONSTANT_COLOR_MASK;
        int iMin = Math.min(this.mMaxWidth, i15);
        int iMin2 = Math.min(this.mMaxHeight, i16);
        if (z10) {
            iMin |= 16777216;
        }
        if (z11) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.mLastMeasureWidth = iMin;
        this.mLastMeasureHeight = iMin2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resolveSystem(o.f fVar, int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int iMax = Math.max(0, getPaddingTop());
        int iMax2 = Math.max(0, getPaddingBottom());
        int i13 = iMax + iMax2;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i11, i12, iMax, iMax2, paddingWidth, i13);
        int iMax3 = Math.max(0, getPaddingStart());
        int iMax4 = Math.max(0, getPaddingEnd());
        if (iMax3 <= 0 && iMax4 <= 0) {
            iMax4 = Math.max(0, getPaddingLeft());
        } else if (!isRtl()) {
            iMax4 = iMax3;
        }
        int i14 = size - paddingWidth;
        int i15 = size2 - i13;
        setSelfDimensionBehaviour(fVar, mode, i14, mode2, i15);
        fVar.X1(i10, mode, i14, mode2, i15, this.mLastMeasureWidth, this.mLastMeasureHeight, iMax4, iMax);
    }

    public void setConstraintSet(androidx.constraintlayout.widget.c cVar) {
        this.mConstraintSet = cVar;
    }

    public void setDesignInformation(int i10, Object obj, Object obj2) {
        if (i10 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            Integer num = (Integer) obj2;
            num.intValue();
            this.mDesignIds.put(strSubstring, num);
        }
    }

    @Override // android.view.View
    public void setId(int i10) {
        this.mChildrenByIds.remove(getId());
        super.setId(i10);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(androidx.constraintlayout.widget.d dVar) {
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.c(dVar);
        }
    }

    public void setOptimizationLevel(int i10) {
        this.mOptimizationLevel = i10;
        this.mLayoutWidget.c2(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[PHI: r2
      0x003e: PHI (r2v4 o.e$b) = (r2v3 o.e$b), (r2v0 o.e$b) binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void setSelfDimensionBehaviour(o.f r8, int r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            androidx.constraintlayout.widget.ConstraintLayout$c r0 = r7.mMeasurer
            int r1 = r0.f1664e
            int r0 = r0.f1663d
            o.e$b r2 = o.e.b.FIXED
            int r3 = r7.getChildCount()
            r4 = 1073741824(0x40000000, float:2.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = 0
            if (r9 == r5) goto L2e
            if (r9 == 0) goto L23
            if (r9 == r4) goto L1a
            r9 = r2
        L18:
            r10 = r6
            goto L38
        L1a:
            int r9 = r7.mMaxWidth
            int r9 = r9 - r0
            int r10 = java.lang.Math.min(r9, r10)
            r9 = r2
            goto L38
        L23:
            o.e$b r9 = o.e.b.WRAP_CONTENT
            if (r3 != 0) goto L18
            int r10 = r7.mMinWidth
            int r10 = java.lang.Math.max(r6, r10)
            goto L38
        L2e:
            o.e$b r9 = o.e.b.WRAP_CONTENT
            if (r3 != 0) goto L38
            int r10 = r7.mMinWidth
            int r10 = java.lang.Math.max(r6, r10)
        L38:
            if (r11 == r5) goto L53
            if (r11 == 0) goto L48
            if (r11 == r4) goto L40
        L3e:
            r12 = r6
            goto L5d
        L40:
            int r11 = r7.mMaxHeight
            int r11 = r11 - r1
            int r12 = java.lang.Math.min(r11, r12)
            goto L5d
        L48:
            o.e$b r2 = o.e.b.WRAP_CONTENT
            if (r3 != 0) goto L3e
            int r11 = r7.mMinHeight
            int r12 = java.lang.Math.max(r6, r11)
            goto L5d
        L53:
            o.e$b r2 = o.e.b.WRAP_CONTENT
            if (r3 != 0) goto L5d
            int r11 = r7.mMinHeight
            int r12 = java.lang.Math.max(r6, r11)
        L5d:
            int r11 = r8.Y()
            if (r10 != r11) goto L69
            int r11 = r8.z()
            if (r12 == r11) goto L6c
        L69:
            r8.T1()
        L6c:
            r8.r1(r6)
            r8.s1(r6)
            int r11 = r7.mMaxWidth
            int r11 = r11 - r0
            r8.c1(r11)
            int r11 = r7.mMaxHeight
            int r11 = r11 - r1
            r8.b1(r11)
            r8.f1(r6)
            r8.e1(r6)
            r8.U0(r9)
            r8.p1(r10)
            r8.l1(r2)
            r8.Q0(r12)
            int r9 = r7.mMinWidth
            int r9 = r9 - r0
            r8.f1(r9)
            int r7 = r7.mMinHeight
            int r7 = r7 - r1
            r8.e1(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.setSelfDimensionBehaviour(o.f, int, int, int, int):void");
    }

    public void setState(int i10, int i11, int i12) {
        androidx.constraintlayout.widget.b bVar = this.mConstraintLayoutSpec;
        if (bVar != null) {
            bVar.d(i10, i11, i12);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new o.f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        c(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new o.f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        c(attributeSet, i10, 0);
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public static final int BASELINE = 5;
        public static final int BOTTOM = 4;
        public static final int CHAIN_PACKED = 2;
        public static final int CHAIN_SPREAD = 0;
        public static final int CHAIN_SPREAD_INSIDE = 1;
        public static final int CIRCLE = 8;
        public static final int END = 7;
        public static final int GONE_UNSET = Integer.MIN_VALUE;
        public static final int HORIZONTAL = 0;
        public static final int LEFT = 1;
        public static final int MATCH_CONSTRAINT = 0;
        public static final int MATCH_CONSTRAINT_PERCENT = 2;
        public static final int MATCH_CONSTRAINT_SPREAD = 0;
        public static final int MATCH_CONSTRAINT_WRAP = 1;
        public static final int PARENT_ID = 0;
        public static final int RIGHT = 2;
        public static final int START = 6;
        public static final int TOP = 3;
        public static final int UNSET = -1;
        public static final int VERTICAL = 1;
        public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
        public static final int WRAP_BEHAVIOR_INCLUDED = 0;
        public static final int WRAP_BEHAVIOR_SKIPPED = 3;
        public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
        public int baselineMargin;
        public int baselineToBaseline;
        public int baselineToBottom;
        public int baselineToTop;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String constraintTag;
        public String dimensionRatio;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endToEnd;
        public int endToStart;
        public int goneBaselineMargin;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean guidelineUseRtl;
        public boolean helped;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;
        public int leftToLeft;
        public int leftToRight;
        int mDimensionRatioSide;
        float mDimensionRatioValue;
        boolean mHeightSet;
        boolean mHorizontalDimensionFixed;
        boolean mIsGuideline;
        boolean mIsHelper;
        boolean mIsInPlaceholder;
        boolean mIsVirtualGroup;
        boolean mNeedsBaseline;
        int mResolveGoneLeftMargin;
        int mResolveGoneRightMargin;
        int mResolvedGuideBegin;
        int mResolvedGuideEnd;
        float mResolvedGuidePercent;
        float mResolvedHorizontalBias;
        int mResolvedLeftToLeft;
        int mResolvedLeftToRight;
        int mResolvedRightToLeft;
        int mResolvedRightToRight;
        boolean mVerticalDimensionFixed;
        o.e mWidget;
        boolean mWidthSet;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        public float matchConstraintPercentHeight;
        public float matchConstraintPercentWidth;
        public int orientation;
        public int rightToLeft;
        public int rightToRight;
        public int startToEnd;
        public int startToStart;
        public int topToBottom;
        public int topToTop;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int wrapBehaviorInParent;

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1659a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1659a = sparseIntArray;
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.mWidthSet = true;
            this.mHeightSet = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.mDimensionRatioValue = 0.0f;
            this.mDimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            this.mNeedsBaseline = false;
            this.mIsGuideline = false;
            this.mIsHelper = false;
            this.mIsInPlaceholder = false;
            this.mIsVirtualGroup = false;
            this.mResolvedLeftToLeft = -1;
            this.mResolvedLeftToRight = -1;
            this.mResolvedRightToLeft = -1;
            this.mResolvedRightToRight = -1;
            this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
            this.mResolveGoneRightMargin = Integer.MIN_VALUE;
            this.mResolvedHorizontalBias = 0.5f;
            this.mWidget = new o.e();
            this.helped = false;
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
                ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
                ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
                ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
                setMarginStart(marginLayoutParams.getMarginStart());
                setMarginEnd(marginLayoutParams.getMarginEnd());
            }
            if (layoutParams instanceof b) {
                b bVar = (b) layoutParams;
                this.guideBegin = bVar.guideBegin;
                this.guideEnd = bVar.guideEnd;
                this.guidePercent = bVar.guidePercent;
                this.guidelineUseRtl = bVar.guidelineUseRtl;
                this.leftToLeft = bVar.leftToLeft;
                this.leftToRight = bVar.leftToRight;
                this.rightToLeft = bVar.rightToLeft;
                this.rightToRight = bVar.rightToRight;
                this.topToTop = bVar.topToTop;
                this.topToBottom = bVar.topToBottom;
                this.bottomToTop = bVar.bottomToTop;
                this.bottomToBottom = bVar.bottomToBottom;
                this.baselineToBaseline = bVar.baselineToBaseline;
                this.baselineToTop = bVar.baselineToTop;
                this.baselineToBottom = bVar.baselineToBottom;
                this.circleConstraint = bVar.circleConstraint;
                this.circleRadius = bVar.circleRadius;
                this.circleAngle = bVar.circleAngle;
                this.startToEnd = bVar.startToEnd;
                this.startToStart = bVar.startToStart;
                this.endToStart = bVar.endToStart;
                this.endToEnd = bVar.endToEnd;
                this.goneLeftMargin = bVar.goneLeftMargin;
                this.goneTopMargin = bVar.goneTopMargin;
                this.goneRightMargin = bVar.goneRightMargin;
                this.goneBottomMargin = bVar.goneBottomMargin;
                this.goneStartMargin = bVar.goneStartMargin;
                this.goneEndMargin = bVar.goneEndMargin;
                this.goneBaselineMargin = bVar.goneBaselineMargin;
                this.baselineMargin = bVar.baselineMargin;
                this.horizontalBias = bVar.horizontalBias;
                this.verticalBias = bVar.verticalBias;
                this.dimensionRatio = bVar.dimensionRatio;
                this.mDimensionRatioValue = bVar.mDimensionRatioValue;
                this.mDimensionRatioSide = bVar.mDimensionRatioSide;
                this.horizontalWeight = bVar.horizontalWeight;
                this.verticalWeight = bVar.verticalWeight;
                this.horizontalChainStyle = bVar.horizontalChainStyle;
                this.verticalChainStyle = bVar.verticalChainStyle;
                this.constrainedWidth = bVar.constrainedWidth;
                this.constrainedHeight = bVar.constrainedHeight;
                this.matchConstraintDefaultWidth = bVar.matchConstraintDefaultWidth;
                this.matchConstraintDefaultHeight = bVar.matchConstraintDefaultHeight;
                this.matchConstraintMinWidth = bVar.matchConstraintMinWidth;
                this.matchConstraintMaxWidth = bVar.matchConstraintMaxWidth;
                this.matchConstraintMinHeight = bVar.matchConstraintMinHeight;
                this.matchConstraintMaxHeight = bVar.matchConstraintMaxHeight;
                this.matchConstraintPercentWidth = bVar.matchConstraintPercentWidth;
                this.matchConstraintPercentHeight = bVar.matchConstraintPercentHeight;
                this.editorAbsoluteX = bVar.editorAbsoluteX;
                this.editorAbsoluteY = bVar.editorAbsoluteY;
                this.orientation = bVar.orientation;
                this.mHorizontalDimensionFixed = bVar.mHorizontalDimensionFixed;
                this.mVerticalDimensionFixed = bVar.mVerticalDimensionFixed;
                this.mNeedsBaseline = bVar.mNeedsBaseline;
                this.mIsGuideline = bVar.mIsGuideline;
                this.mResolvedLeftToLeft = bVar.mResolvedLeftToLeft;
                this.mResolvedLeftToRight = bVar.mResolvedLeftToRight;
                this.mResolvedRightToLeft = bVar.mResolvedRightToLeft;
                this.mResolvedRightToRight = bVar.mResolvedRightToRight;
                this.mResolveGoneLeftMargin = bVar.mResolveGoneLeftMargin;
                this.mResolveGoneRightMargin = bVar.mResolveGoneRightMargin;
                this.mResolvedHorizontalBias = bVar.mResolvedHorizontalBias;
                this.constraintTag = bVar.constraintTag;
                this.wrapBehaviorInParent = bVar.wrapBehaviorInParent;
                this.mWidget = bVar.mWidget;
                this.mWidthSet = bVar.mWidthSet;
                this.mHeightSet = bVar.mHeightSet;
            }
        }

        public String getConstraintTag() {
            return this.constraintTag;
        }

        public o.e getConstraintWidget() {
            return this.mWidget;
        }

        public void reset() {
            o.e eVar = this.mWidget;
            if (eVar != null) {
                eVar.v0();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void resolveLayoutDirection(int r11) {
            /*
                Method dump skipped, instruction units count: 259
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b.resolveLayoutDirection(int):void");
        }

        public void setWidgetDebugName(String str) {
            this.mWidget.H0(str);
        }

        public void validate() {
            this.mIsGuideline = false;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            int i10 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i10 == -2 && this.constrainedWidth) {
                this.mHorizontalDimensionFixed = false;
                if (this.matchConstraintDefaultWidth == 0) {
                    this.matchConstraintDefaultWidth = 1;
                }
            }
            int i11 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i11 == -2 && this.constrainedHeight) {
                this.mVerticalDimensionFixed = false;
                if (this.matchConstraintDefaultHeight == 0) {
                    this.matchConstraintDefaultHeight = 1;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.mHorizontalDimensionFixed = false;
                if (i10 == 0 && this.matchConstraintDefaultWidth == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.mVerticalDimensionFixed = false;
                if (i11 == 0 && this.matchConstraintDefaultHeight == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent == -1.0f && this.guideBegin == -1 && this.guideEnd == -1) {
                return;
            }
            this.mIsGuideline = true;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            if (!(this.mWidget instanceof h)) {
                this.mWidget = new h();
            }
            ((h) this.mWidget).F1(this.orientation);
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.mWidthSet = true;
            this.mHeightSet = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.mDimensionRatioValue = 0.0f;
            this.mDimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            this.mNeedsBaseline = false;
            this.mIsGuideline = false;
            this.mIsHelper = false;
            this.mIsInPlaceholder = false;
            this.mIsVirtualGroup = false;
            this.mResolvedLeftToLeft = -1;
            this.mResolvedLeftToRight = -1;
            this.mResolvedRightToLeft = -1;
            this.mResolvedRightToRight = -1;
            this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
            this.mResolveGoneRightMargin = Integer.MIN_VALUE;
            this.mResolvedHorizontalBias = 0.5f;
            this.mWidget = new o.e();
            this.helped = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = a.f1659a.get(index);
                switch (i11) {
                    case 1:
                        this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.circleConstraint);
                        this.circleConstraint = resourceId;
                        if (resourceId == -1) {
                            this.circleConstraint = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                        break;
                    case 4:
                        float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle) % 360.0f;
                        this.circleAngle = f10;
                        if (f10 < 0.0f) {
                            this.circleAngle = (360.0f - f10) % 360.0f;
                        }
                        break;
                    case 5:
                        this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 6:
                        this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 7:
                        this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.leftToLeft);
                        this.leftToLeft = resourceId2;
                        if (resourceId2 == -1) {
                            this.leftToLeft = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.leftToRight);
                        this.leftToRight = resourceId3;
                        if (resourceId3 == -1) {
                            this.leftToRight = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.rightToLeft);
                        this.rightToLeft = resourceId4;
                        if (resourceId4 == -1) {
                            this.rightToLeft = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.rightToRight);
                        this.rightToRight = resourceId5;
                        if (resourceId5 == -1) {
                            this.rightToRight = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.topToTop);
                        this.topToTop = resourceId6;
                        if (resourceId6 == -1) {
                            this.topToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.topToBottom);
                        this.topToBottom = resourceId7;
                        if (resourceId7 == -1) {
                            this.topToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.bottomToTop);
                        this.bottomToTop = resourceId8;
                        if (resourceId8 == -1) {
                            this.bottomToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                        this.bottomToBottom = resourceId9;
                        if (resourceId9 == -1) {
                            this.bottomToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                        this.baselineToBaseline = resourceId10;
                        if (resourceId10 == -1) {
                            this.baselineToBaseline = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.startToEnd);
                        this.startToEnd = resourceId11;
                        if (resourceId11 == -1) {
                            this.startToEnd = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.startToStart);
                        this.startToStart = resourceId12;
                        if (resourceId12 == -1) {
                            this.startToStart = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.endToStart);
                        this.endToStart = resourceId13;
                        if (resourceId13 == -1) {
                            this.endToStart = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.endToEnd);
                        this.endToEnd = resourceId14;
                        if (resourceId14 == -1) {
                            this.endToEnd = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case COUIVersionUtil.COUI_8_2 /* 21 */:
                        this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 22:
                        this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 23:
                        this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 24:
                        this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case VibrateUtils.MIN_VIBRATOR_TIME /* 25 */:
                        this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 26:
                        this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 27:
                        this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                        break;
                    case 28:
                        this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                        break;
                    case 29:
                        this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case UIUtil.CONSTANT_INT_THIRTY /* 30 */:
                        this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 31:
                        int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.matchConstraintDefaultWidth = i12;
                        if (i12 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.matchConstraintDefaultHeight = i13;
                        if (i13 == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.matchConstraintMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMinWidth) == -2) {
                                this.matchConstraintMinWidth = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.matchConstraintMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMaxWidth) == -2) {
                                this.matchConstraintMaxWidth = -2;
                            }
                        }
                        break;
                    case 35:
                        this.matchConstraintPercentWidth = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.matchConstraintPercentWidth));
                        this.matchConstraintDefaultWidth = 2;
                        break;
                    case COUIPreferenceUtils.ICON_SIZE_DP_MEDIUM_LARGE /* 36 */:
                        try {
                            this.matchConstraintMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMinHeight) == -2) {
                                this.matchConstraintMinHeight = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.matchConstraintMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMaxHeight) == -2) {
                                this.matchConstraintMaxHeight = -2;
                            }
                        }
                        break;
                    case 38:
                        this.matchConstraintPercentHeight = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.matchConstraintPercentHeight));
                        this.matchConstraintDefaultHeight = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                androidx.constraintlayout.widget.c.K(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                                break;
                            case 46:
                                this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                                break;
                            case 47:
                                this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case VibrateUtils.VIBRATE_SOFT_MIN_FREQUENCY /* 48 */:
                                this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                                break;
                            case 50:
                                this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                                break;
                            case 51:
                                this.constraintTag = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case VibrateUtils.VIBRATE_SOFT_MIN_INTENSITY /* 52 */:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToTop);
                                this.baselineToTop = resourceId15;
                                if (resourceId15 == -1) {
                                    this.baselineToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 53:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToBottom);
                                this.baselineToBottom = resourceId16;
                                if (resourceId16 == -1) {
                                    this.baselineToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 54:
                                this.baselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                break;
                            case VibrateUtils.VIBRATE_SOFT_MAX_FREQUENCY /* 55 */:
                                this.goneBaselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                break;
                            default:
                                switch (i11) {
                                    case COUIToolTips.ALIGN_END /* 64 */:
                                        androidx.constraintlayout.widget.c.I(this, typedArrayObtainStyledAttributes, index, 0);
                                        this.mWidthSet = true;
                                        break;
                                    case 65:
                                        androidx.constraintlayout.widget.c.I(this, typedArrayObtainStyledAttributes, index, 1);
                                        this.mHeightSet = true;
                                        break;
                                    case 66:
                                        this.wrapBehaviorInParent = typedArrayObtainStyledAttributes.getInt(index, this.wrapBehaviorInParent);
                                        break;
                                    case 67:
                                        this.guidelineUseRtl = typedArrayObtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            validate();
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.guidelineUseRtl = true;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.baselineToTop = -1;
            this.baselineToBottom = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = Integer.MIN_VALUE;
            this.goneTopMargin = Integer.MIN_VALUE;
            this.goneRightMargin = Integer.MIN_VALUE;
            this.goneBottomMargin = Integer.MIN_VALUE;
            this.goneStartMargin = Integer.MIN_VALUE;
            this.goneEndMargin = Integer.MIN_VALUE;
            this.goneBaselineMargin = Integer.MIN_VALUE;
            this.baselineMargin = 0;
            this.mWidthSet = true;
            this.mHeightSet = true;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.mDimensionRatioValue = 0.0f;
            this.mDimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.constraintTag = null;
            this.wrapBehaviorInParent = 0;
            this.mHorizontalDimensionFixed = true;
            this.mVerticalDimensionFixed = true;
            this.mNeedsBaseline = false;
            this.mIsGuideline = false;
            this.mIsHelper = false;
            this.mIsInPlaceholder = false;
            this.mIsVirtualGroup = false;
            this.mResolvedLeftToLeft = -1;
            this.mResolvedLeftToRight = -1;
            this.mResolvedRightToLeft = -1;
            this.mResolvedRightToRight = -1;
            this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
            this.mResolveGoneRightMargin = Integer.MIN_VALUE;
            this.mResolvedHorizontalBias = 0.5f;
            this.mWidget = new o.e();
            this.helped = false;
        }
    }
}
