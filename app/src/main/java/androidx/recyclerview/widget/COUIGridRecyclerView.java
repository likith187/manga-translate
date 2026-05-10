package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.coui.appcompat.grid.COUIPercentWidthRecyclerView;
import com.coui.appcompat.uiutil.UIUtil;
import com.coui.component.responsiveui.ResponsiveUIModel;
import com.coui.component.responsiveui.layoutgrid.MarginType;
import com.support.grid.R$styleable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class COUIGridRecyclerView extends COUIPercentWidthRecyclerView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f3058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f3059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f3060c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f3061f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f3062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f3063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f3064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f3066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f3067m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3068n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f3069o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f3070p;

    public class COUIGridLayoutManager extends GridLayoutManager {
        public COUIGridLayoutManager(Context context) {
            super(context, 1);
        }

        private float d0() {
            if (COUIGridRecyclerView.this.f3063i != 0.0f) {
                return COUIGridRecyclerView.this.f3063i;
            }
            if (COUIGridRecyclerView.this.f3062h == 0.0f) {
                return 0.0f;
            }
            return (COUIGridRecyclerView.this.f3062h / COUIGridRecyclerView.this.f3061f) * COUIGridRecyclerView.this.f3064j;
        }

        private void e0() {
            MarginType marginType = COUIGridRecyclerView.this.f3067m == 1 ? MarginType.MARGIN_SMALL : MarginType.MARGIN_LARGE;
            ResponsiveUIModel responsiveUIModelChooseMargin = new ResponsiveUIModel(COUIGridRecyclerView.this.getContext(), COUIGridRecyclerView.this.getMeasuredWidth(), UIUtil.getScreenHeightMetrics(COUIGridRecyclerView.this.getContext())).chooseMargin(marginType);
            responsiveUIModelChooseMargin.chooseMargin(marginType);
            COUIGridRecyclerView.this.f3064j = responsiveUIModelChooseMargin.width(0, r0.f3066l - 1);
            COUIGridRecyclerView.this.f3058a = responsiveUIModelChooseMargin.gutter();
            COUIGridRecyclerView.this.f3069o = responsiveUIModelChooseMargin.margin();
            COUIGridRecyclerView.this.f3065k = responsiveUIModelChooseMargin.columnCount() / COUIGridRecyclerView.this.f3066l;
            Log.d("COUIGridRecyclerView", "mChildWidth = " + COUIGridRecyclerView.this.f3064j + " mHorizontalGap = " + COUIGridRecyclerView.this.f3058a + " mColumn = " + COUIGridRecyclerView.this.f3065k + " mGridPadding = " + COUIGridRecyclerView.this.f3069o + " getWidthWithoutPadding() = " + h0());
        }

        private void f0() {
            COUIGridRecyclerView.this.f3065k = Math.max(1, (int) ((h0() + COUIGridRecyclerView.this.f3058a) / (COUIGridRecyclerView.this.f3058a + COUIGridRecyclerView.this.f3061f)));
            COUIGridRecyclerView.this.f3064j = (h0() - (COUIGridRecyclerView.this.f3058a * (COUIGridRecyclerView.this.f3065k - 1))) / COUIGridRecyclerView.this.f3065k;
            COUIGridRecyclerView.this.f3063i = d0();
        }

        private void g0() {
            COUIGridRecyclerView.this.f3065k = Math.max(1, (int) ((h0() + COUIGridRecyclerView.this.f3059b) / (COUIGridRecyclerView.this.f3059b + COUIGridRecyclerView.this.f3064j)));
            COUIGridRecyclerView.this.f3058a = (h0() - (COUIGridRecyclerView.this.f3064j * COUIGridRecyclerView.this.f3065k)) / (COUIGridRecyclerView.this.f3065k - 1);
        }

        private int h0() {
            return (getWidth() - getPaddingStart()) - getPaddingEnd();
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        View findReferenceChild(RecyclerView.w wVar, RecyclerView.a0 a0Var, boolean z10, boolean z11) {
            return super.findReferenceChild(wVar, a0Var, z10, z11);
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        void layoutChunk(RecyclerView.w wVar, RecyclerView.a0 a0Var, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
            int iF;
            int iF2;
            int i10;
            int i11;
            boolean z10;
            View viewD;
            int paddingStart = getPaddingStart() + COUIGridRecyclerView.this.f3069o;
            View[] viewArr = this.f3082d;
            if (viewArr == null || viewArr.length != COUIGridRecyclerView.this.f3065k) {
                this.f3082d = new View[COUIGridRecyclerView.this.f3065k];
            }
            int i12 = 0;
            int i13 = 0;
            while (i13 < COUIGridRecyclerView.this.f3065k && cVar.c(a0Var) && (viewD = cVar.d(wVar)) != null) {
                this.f3082d[i13] = viewD;
                i13++;
            }
            if (i13 == 0) {
                bVar.f3099b = true;
                return;
            }
            boolean z11 = cVar.f3106e == 1;
            float f10 = 0.0f;
            int i14 = 0;
            int i15 = 0;
            float f11 = 0.0f;
            while (i14 < COUIGridRecyclerView.this.f3065k) {
                View view = this.f3082d[i14];
                if (view != null) {
                    if (cVar.f3113l == null) {
                        if (z11) {
                            addView(view);
                        } else {
                            addView(view, i12);
                        }
                    } else if (z11) {
                        addDisappearingView(view);
                    } else {
                        addDisappearingView(view, i12);
                    }
                    calculateItemDecorationsForChild(view, this.f3086h);
                    GridLayoutManager.b bVar2 = (GridLayoutManager.b) view.getLayoutParams();
                    Rect rect = bVar2.f3164b;
                    int i16 = rect.top + rect.bottom + (COUIGridRecyclerView.this.f3070p ? i12 : ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin);
                    int i17 = rect.left + rect.right + (COUIGridRecyclerView.this.f3070p ? i12 : ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin);
                    if (COUIGridRecyclerView.this.f3063i == f10) {
                        COUIGridRecyclerView.this.f3063i = ((ViewGroup.MarginLayoutParams) bVar2).height;
                    }
                    float fRound = Math.round(f11 + COUIGridRecyclerView.this.f3064j);
                    float f12 = COUIGridRecyclerView.this.f3064j - fRound;
                    z10 = z11;
                    int childMeasureSpec = RecyclerView.p.getChildMeasureSpec((int) (fRound + rect.left + rect.right), this.mOrientationHelper.m(), i17, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    view.measure(childMeasureSpec, RecyclerView.p.getChildMeasureSpec(this.mOrientationHelper.o(), getHeightMode(), i16, (int) COUIGridRecyclerView.this.f3063i, true));
                    int iE = this.mOrientationHelper.e(view);
                    Log.d("COUIGridRecyclerView", "childWidthSpec = " + View.MeasureSpec.getSize(childMeasureSpec) + " horizontalInsets = " + i17 + " lp.leftMargin = " + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + "  lp.rightMargin = " + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin + " decorInsets = " + rect.left + " - " + rect.right + " mCurrentPosition = " + cVar.f3105d + " x = " + paddingStart);
                    if (iE > i15) {
                        i15 = iE;
                    }
                    f11 = f12;
                } else {
                    z10 = z11;
                }
                i14++;
                z11 = z10;
                i12 = 0;
                f10 = 0.0f;
            }
            bVar.f3098a = i15;
            int i18 = paddingStart;
            float f13 = 0.0f;
            float f14 = 0.0f;
            for (int i19 = 0; i19 < COUIGridRecyclerView.this.f3065k; i19++) {
                View view2 = this.f3082d[i19];
                if (view2 != null) {
                    GridLayoutManager.b bVar3 = (GridLayoutManager.b) view2.getLayoutParams();
                    if (isLayoutRTL()) {
                        int width = getWidth() - i18;
                        iF = width;
                        iF2 = width - this.mOrientationHelper.f(view2);
                    } else {
                        iF = this.mOrientationHelper.f(view2) + i18;
                        iF2 = i18;
                    }
                    if (cVar.f3107f == -1) {
                        int i20 = cVar.f3103b;
                        i11 = i20;
                        i10 = i20 - bVar.f3098a;
                    } else {
                        int i21 = cVar.f3103b;
                        i10 = i21;
                        i11 = bVar.f3098a + i21;
                    }
                    layoutDecoratedWithMargins(view2, iF2, i10, iF, i11);
                    int iRound = Math.round(f13 + COUIGridRecyclerView.this.f3064j);
                    float f15 = COUIGridRecyclerView.this.f3064j - iRound;
                    int iRound2 = Math.round(f14 + COUIGridRecyclerView.this.f3058a);
                    float f16 = COUIGridRecyclerView.this.f3058a - iRound2;
                    i18 = i18 + iRound2 + iRound;
                    if (bVar3.c() || bVar3.b()) {
                        bVar.f3100c = true;
                    }
                    bVar.f3101d |= view2.hasFocusable();
                    f13 = f15;
                    f14 = f16;
                }
            }
            Arrays.fill(this.f3082d, (Object) null);
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
        public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.a0 a0Var) {
            int i10 = COUIGridRecyclerView.this.f3068n;
            if (i10 == 0) {
                e0();
            } else if (i10 == 1) {
                f0();
            } else if (i10 == 2) {
                g0();
            }
            if (COUIGridRecyclerView.this.f3065k > 0 && this.f3080b != COUIGridRecyclerView.this.f3065k) {
                b0(COUIGridRecyclerView.this.f3065k);
            }
            super.onLayoutChildren(wVar, a0Var);
        }
    }

    private class a extends RecyclerView.o {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            super.getItemOffsets(rect, view, recyclerView, a0Var);
            if (recyclerView.getChildAdapterPosition(view) % COUIGridRecyclerView.this.f3065k != COUIGridRecyclerView.this.f3065k - 1) {
                float childAdapterPosition = (recyclerView.getChildAdapterPosition(view) % COUIGridRecyclerView.this.f3065k) + 1.0f;
                int iRound = Math.round(Math.round(COUIGridRecyclerView.this.f3058a + ((COUIGridRecyclerView.this.f3058a * childAdapterPosition) - Math.round(COUIGridRecyclerView.this.f3058a * childAdapterPosition))));
                if (COUIGridRecyclerView.this.z0()) {
                    rect.left = iRound;
                } else {
                    rect.right = iRound;
                }
                Log.d("COUIGridRecyclerView", "   mHorizontalGap = " + COUIGridRecyclerView.this.f3058a + " horizontalGap = " + iRound + " getChildAdapterPosition = " + recyclerView.getChildAdapterPosition(view) + " outRect = " + rect);
            }
            if (recyclerView.getChildAdapterPosition(view) < COUIGridRecyclerView.this.f3065k * (((int) Math.ceil(recyclerView.mAdapter.getItemCount() / COUIGridRecyclerView.this.f3065k)) - 1)) {
                rect.bottom = (int) COUIGridRecyclerView.this.f3060c;
            }
        }
    }

    public COUIGridRecyclerView(Context context) {
        super(context);
        this.f3070p = true;
    }

    private void x0(AttributeSet attributeSet, int i10) {
        if (getContext() != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.COUIGridRecyclerView, i10, 0);
            this.f3058a = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_couiHorizontalGap, 0.0f);
            this.f3059b = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_minHorizontalGap, 0.0f);
            this.f3060c = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_couiVerticalGap, 0.0f);
            this.f3061f = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_childMinWidth, 0.0f);
            this.f3062h = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_childMinHeight, 0.0f);
            this.f3063i = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_childHeight, 0.0f);
            this.f3064j = typedArrayObtainStyledAttributes.getDimension(R$styleable.COUIGridRecyclerView_childWidth, 0.0f);
            this.f3066l = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridRecyclerView_childGridNumber, 0);
            this.f3067m = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridRecyclerView_gridMarginType, 1);
            this.f3068n = typedArrayObtainStyledAttributes.getInteger(R$styleable.COUIGridRecyclerView_specificType, -1);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void y0() {
        setLayoutManager(new COUIGridLayoutManager(getContext()));
        addItemDecoration(new a());
        setPercentIndentEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean z0() {
        return getLayoutDirection() == 1;
    }

    @Override // com.coui.appcompat.grid.COUIPercentWidthRecyclerView, android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        invalidateItemDecorations();
    }

    public void setChildGridNumber(int i10) {
        this.f3066l = i10;
        requestLayout();
    }

    public void setChildHeight(float f10) {
        this.f3063i = f10;
        requestLayout();
    }

    public void setChildMinHeight(float f10) {
        this.f3062h = f10;
        requestLayout();
    }

    public void setChildMinWidth(float f10) {
        this.f3061f = f10;
        requestLayout();
    }

    public void setChildWidth(float f10) {
        this.f3064j = f10;
        requestLayout();
    }

    public void setGridMarginType(int i10) {
        this.f3067m = i10;
        requestLayout();
    }

    public void setHorizontalGap(float f10) {
        this.f3058a = f10;
        requestLayout();
    }

    public void setIsIgnoreChildMargin(boolean z10) {
        this.f3070p = z10;
    }

    public void setMinHorizontalGap(float f10) {
        this.f3059b = f10;
        requestLayout();
    }

    public void setType(int i10) {
        this.f3068n = i10;
        requestLayout();
    }

    public void setVerticalGap(float f10) {
        this.f3060c = f10;
        requestLayout();
    }

    public COUIGridRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3070p = true;
        x0(attributeSet, 0);
        y0();
    }

    public COUIGridRecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f3070p = true;
        x0(attributeSet, i10);
        y0();
    }
}
