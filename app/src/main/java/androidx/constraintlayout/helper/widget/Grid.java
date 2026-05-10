package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import androidx.constraintlayout.widget.VirtualLayout;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Grid extends VirtualLayout {
    private float A;
    private float B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean[][] G;
    Set H;
    private int[] I;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f1116o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f1117p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View[] f1118q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ConstraintLayout f1119r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f1120s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1121t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1122u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1123v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f1124w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f1125x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f1126y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f1127z;

    public Grid(Context context) {
        super(context);
        this.f1116o = 50;
        this.f1117p = 50;
        this.D = 0;
        this.H = new HashSet();
    }

    private void A(View view) {
        ConstraintLayout.b bVarN = N(view);
        bVarN.horizontalWeight = -1.0f;
        bVarN.leftToRight = -1;
        bVarN.leftToLeft = -1;
        bVarN.rightToLeft = -1;
        bVarN.rightToRight = -1;
        ((ViewGroup.MarginLayoutParams) bVarN).leftMargin = -1;
        view.setLayoutParams(bVarN);
    }

    private void B(View view) {
        ConstraintLayout.b bVarN = N(view);
        bVarN.verticalWeight = -1.0f;
        bVarN.topToBottom = -1;
        bVarN.topToTop = -1;
        bVarN.bottomToTop = -1;
        bVarN.bottomToBottom = -1;
        ((ViewGroup.MarginLayoutParams) bVarN).topMargin = -1;
        view.setLayoutParams(bVarN);
    }

    private void C(View view, int i10, int i11, int i12, int i13) {
        ConstraintLayout.b bVarN = N(view);
        int[] iArr = this.I;
        bVarN.leftToLeft = iArr[i11];
        bVarN.topToTop = iArr[i10];
        bVarN.rightToRight = iArr[(i11 + i13) - 1];
        bVarN.bottomToBottom = iArr[(i10 + i12) - 1];
        view.setLayoutParams(bVarN);
    }

    private boolean D(boolean z10) {
        int[][] iArrO;
        int[][] iArrO2;
        if (this.f1119r == null || this.f1120s < 1 || this.f1122u < 1) {
            return false;
        }
        if (z10) {
            for (int i10 = 0; i10 < this.G.length; i10++) {
                int i11 = 0;
                while (true) {
                    boolean[][] zArr = this.G;
                    if (i11 < zArr[0].length) {
                        zArr[i10][i11] = true;
                        i11++;
                    }
                }
            }
            this.H.clear();
        }
        this.D = 0;
        z();
        String str = this.f1125x;
        boolean zG = (str == null || str.trim().isEmpty() || (iArrO2 = O(this.f1125x)) == null) ? true : G(iArrO2);
        String str2 = this.f1124w;
        if (str2 != null && !str2.trim().isEmpty() && (iArrO = O(this.f1124w)) != null) {
            zG &= H(this.f1649a, iArrO);
        }
        return (zG && y()) || !this.E;
    }

    private int E(int i10) {
        return this.C == 1 ? i10 / this.f1120s : i10 % this.f1122u;
    }

    private int F(int i10) {
        return this.C == 1 ? i10 % this.f1120s : i10 / this.f1122u;
    }

    private boolean G(int[][] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int iF = F(iArr[i10][0]);
            int iE = E(iArr[i10][0]);
            int[] iArr2 = iArr[i10];
            if (!J(iF, iE, iArr2[1], iArr2[2])) {
                return false;
            }
        }
        return true;
    }

    private boolean H(int[] iArr, int[][] iArr2) {
        View[] viewArrN = n(this.f1119r);
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            int iF = F(iArr2[i10][0]);
            int iE = E(iArr2[i10][0]);
            int[] iArr3 = iArr2[i10];
            if (!J(iF, iE, iArr3[1], iArr3[2])) {
                return false;
            }
            View view = viewArrN[i10];
            int[] iArr4 = iArr2[i10];
            C(view, iF, iE, iArr4[1], iArr4[2]);
            this.H.add(Integer.valueOf(iArr[i10]));
        }
        return true;
    }

    private void I() {
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.f1120s, this.f1122u);
        this.G = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
        }
    }

    private boolean J(int i10, int i11, int i12, int i13) {
        for (int i14 = i10; i14 < i10 + i12; i14++) {
            for (int i15 = i11; i15 < i11 + i13; i15++) {
                boolean[][] zArr = this.G;
                if (i14 < zArr.length && i15 < zArr[0].length) {
                    boolean[] zArr2 = zArr[i14];
                    if (zArr2[i15]) {
                        zArr2[i15] = false;
                    }
                }
                return false;
            }
        }
        return true;
    }

    private boolean K(CharSequence charSequence) {
        return true;
    }

    private boolean L(String str) {
        return true;
    }

    private View M() {
        View view = new View(getContext());
        view.setId(View.generateViewId());
        view.setVisibility(4);
        this.f1119r.addView(view, new ConstraintLayout.b(0, 0));
        return view;
    }

    private ConstraintLayout.b N(View view) {
        return (ConstraintLayout.b) view.getLayoutParams();
    }

    private int[][] O(String str) {
        if (!K(str)) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, strArrSplit.length, 3);
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            String[] strArrSplit2 = strArrSplit[i10].trim().split(":");
            String[] strArrSplit3 = strArrSplit2[1].split("x");
            iArr[i10][0] = Integer.parseInt(strArrSplit2[0]);
            iArr[i10][1] = Integer.parseInt(strArrSplit3[0]);
            iArr[i10][2] = Integer.parseInt(strArrSplit3[1]);
        }
        return iArr;
    }

    private float[] P(int i10, String str) {
        float[] fArr = null;
        if (str != null && !str.trim().isEmpty()) {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length != i10) {
                return null;
            }
            fArr = new float[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                fArr[i11] = Float.parseFloat(strArrSplit[i11].trim());
            }
        }
        return fArr;
    }

    private void Q() {
        int i10;
        int id = getId();
        int iMax = Math.max(this.f1120s, this.f1122u);
        float[] fArrP = P(this.f1122u, this.f1127z);
        int i11 = 0;
        ConstraintLayout.b bVarN = N(this.f1118q[0]);
        if (this.f1122u == 1) {
            A(this.f1118q[0]);
            bVarN.leftToLeft = id;
            bVarN.rightToRight = id;
            this.f1118q[0].setLayoutParams(bVarN);
            return;
        }
        while (true) {
            i10 = this.f1122u;
            if (i11 >= i10) {
                break;
            }
            ConstraintLayout.b bVarN2 = N(this.f1118q[i11]);
            A(this.f1118q[i11]);
            if (fArrP != null) {
                bVarN2.horizontalWeight = fArrP[i11];
            }
            if (i11 > 0) {
                bVarN2.leftToRight = this.I[i11 - 1];
            } else {
                bVarN2.leftToLeft = id;
            }
            if (i11 < this.f1122u - 1) {
                bVarN2.rightToLeft = this.I[i11 + 1];
            } else {
                bVarN2.rightToRight = id;
            }
            if (i11 > 0) {
                ((ViewGroup.MarginLayoutParams) bVarN2).leftMargin = (int) this.A;
            }
            this.f1118q[i11].setLayoutParams(bVarN2);
            i11++;
        }
        while (i10 < iMax) {
            ConstraintLayout.b bVarN3 = N(this.f1118q[i10]);
            A(this.f1118q[i10]);
            bVarN3.leftToLeft = id;
            bVarN3.rightToRight = id;
            this.f1118q[i10].setLayoutParams(bVarN3);
            i10++;
        }
    }

    private void R() {
        int i10;
        int id = getId();
        int iMax = Math.max(this.f1120s, this.f1122u);
        float[] fArrP = P(this.f1120s, this.f1126y);
        int i11 = 0;
        if (this.f1120s == 1) {
            ConstraintLayout.b bVarN = N(this.f1118q[0]);
            B(this.f1118q[0]);
            bVarN.topToTop = id;
            bVarN.bottomToBottom = id;
            this.f1118q[0].setLayoutParams(bVarN);
            return;
        }
        while (true) {
            i10 = this.f1120s;
            if (i11 >= i10) {
                break;
            }
            ConstraintLayout.b bVarN2 = N(this.f1118q[i11]);
            B(this.f1118q[i11]);
            if (fArrP != null) {
                bVarN2.verticalWeight = fArrP[i11];
            }
            if (i11 > 0) {
                bVarN2.topToBottom = this.I[i11 - 1];
            } else {
                bVarN2.topToTop = id;
            }
            if (i11 < this.f1120s - 1) {
                bVarN2.bottomToTop = this.I[i11 + 1];
            } else {
                bVarN2.bottomToBottom = id;
            }
            if (i11 > 0) {
                ((ViewGroup.MarginLayoutParams) bVarN2).topMargin = (int) this.A;
            }
            this.f1118q[i11].setLayoutParams(bVarN2);
            i11++;
        }
        while (i10 < iMax) {
            ConstraintLayout.b bVarN3 = N(this.f1118q[i10]);
            B(this.f1118q[i10]);
            bVarN3.topToTop = id;
            bVarN3.bottomToBottom = id;
            this.f1118q[i10].setLayoutParams(bVarN3);
            i10++;
        }
    }

    private void S() {
        int i10;
        int i11 = this.f1121t;
        if (i11 != 0 && (i10 = this.f1123v) != 0) {
            this.f1120s = i11;
            this.f1122u = i10;
            return;
        }
        int i12 = this.f1123v;
        if (i12 > 0) {
            this.f1122u = i12;
            this.f1120s = ((this.f1650b + i12) - 1) / i12;
        } else if (i11 > 0) {
            this.f1120s = i11;
            this.f1122u = ((this.f1650b + i11) - 1) / i11;
        } else {
            int iSqrt = (int) (Math.sqrt(this.f1650b) + 1.5d);
            this.f1120s = iSqrt;
            this.f1122u = ((this.f1650b + iSqrt) - 1) / iSqrt;
        }
    }

    private int getNextPosition() {
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            i10 = this.D;
            if (i10 >= this.f1120s * this.f1122u) {
                return -1;
            }
            int iF = F(i10);
            int iE = E(this.D);
            boolean[] zArr = this.G[iF];
            if (zArr[iE]) {
                zArr[iE] = false;
                z10 = true;
            }
            this.D++;
        }
        return i10;
    }

    private boolean y() {
        View[] viewArrN = n(this.f1119r);
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            if (!this.H.contains(Integer.valueOf(this.f1649a[i10]))) {
                int nextPosition = getNextPosition();
                int iF = F(nextPosition);
                int iE = E(nextPosition);
                if (nextPosition == -1) {
                    return false;
                }
                C(viewArrN[i10], iF, iE, 1, 1);
            }
        }
        return true;
    }

    private void z() {
        int iMax = Math.max(this.f1120s, this.f1122u);
        View[] viewArr = this.f1118q;
        int i10 = 0;
        if (viewArr == null) {
            this.f1118q = new View[iMax];
            int i11 = 0;
            while (true) {
                View[] viewArr2 = this.f1118q;
                if (i11 >= viewArr2.length) {
                    break;
                }
                viewArr2[i11] = M();
                i11++;
            }
        } else if (iMax != viewArr.length) {
            View[] viewArr3 = new View[iMax];
            for (int i12 = 0; i12 < iMax; i12++) {
                View[] viewArr4 = this.f1118q;
                if (i12 < viewArr4.length) {
                    viewArr3[i12] = viewArr4[i12];
                } else {
                    viewArr3[i12] = M();
                }
            }
            int i13 = iMax;
            while (true) {
                View[] viewArr5 = this.f1118q;
                if (i13 >= viewArr5.length) {
                    break;
                }
                this.f1119r.removeView(viewArr5[i13]);
                i13++;
            }
            this.f1118q = viewArr3;
        }
        this.I = new int[iMax];
        while (true) {
            View[] viewArr6 = this.f1118q;
            if (i10 >= viewArr6.length) {
                R();
                Q();
                return;
            } else {
                this.I[i10] = viewArr6[i10].getId();
                i10++;
            }
        }
    }

    public String getColumnWeights() {
        return this.f1127z;
    }

    public int getColumns() {
        return this.f1123v;
    }

    public float getHorizontalGaps() {
        return this.A;
    }

    public int getOrientation() {
        return this.C;
    }

    public String getRowWeights() {
        return this.f1126y;
    }

    public int getRows() {
        return this.f1121t;
    }

    public String getSkips() {
        return this.f1125x;
    }

    public String getSpans() {
        return this.f1124w;
    }

    public float getVerticalGaps() {
        return this.B;
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void o(AttributeSet attributeSet) {
        super.o(attributeSet);
        this.f1653h = true;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.Grid);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Grid_grid_rows) {
                    this.f1121t = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == R$styleable.Grid_grid_columns) {
                    this.f1123v = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == R$styleable.Grid_grid_spans) {
                    this.f1124w = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.Grid_grid_skips) {
                    this.f1125x = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.Grid_grid_rowWeights) {
                    this.f1126y = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.Grid_grid_columnWeights) {
                    this.f1127z = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.Grid_grid_orientation) {
                    this.C = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.Grid_grid_horizontalGaps) {
                    this.A = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                } else if (index == R$styleable.Grid_grid_verticalGaps) {
                    this.B = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                } else if (index == R$styleable.Grid_grid_validateInputs) {
                    this.E = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R$styleable.Grid_grid_useRtl) {
                    this.F = typedArrayObtainStyledAttributes.getBoolean(index, false);
                }
            }
            S();
            I();
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1119r = (ConstraintLayout) getParent();
        D(false);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode()) {
            Paint paint = new Paint();
            paint.setColor(-65536);
            paint.setStyle(Paint.Style.STROKE);
            int top = getTop();
            int left = getLeft();
            int bottom = getBottom();
            int right = getRight();
            for (View view : this.f1118q) {
                int left2 = view.getLeft() - left;
                int top2 = view.getTop() - top;
                int right2 = view.getRight() - left;
                int bottom2 = view.getBottom() - top;
                canvas.drawRect(left2, 0.0f, right2, bottom - top, paint);
                canvas.drawRect(0.0f, top2, right - left, bottom2, paint);
            }
        }
    }

    public void setColumnWeights(String str) {
        if (L(str)) {
            String str2 = this.f1127z;
            if (str2 == null || !str2.equals(str)) {
                this.f1127z = str;
                D(true);
                invalidate();
            }
        }
    }

    public void setColumns(int i10) {
        if (i10 <= 50 && this.f1123v != i10) {
            this.f1123v = i10;
            S();
            I();
            D(false);
            invalidate();
        }
    }

    public void setHorizontalGaps(float f10) {
        if (f10 >= 0.0f && this.A != f10) {
            this.A = f10;
            D(true);
            invalidate();
        }
    }

    public void setOrientation(int i10) {
        if ((i10 == 0 || i10 == 1) && this.C != i10) {
            this.C = i10;
            D(true);
            invalidate();
        }
    }

    public void setRowWeights(String str) {
        if (L(str)) {
            String str2 = this.f1126y;
            if (str2 == null || !str2.equals(str)) {
                this.f1126y = str;
                D(true);
                invalidate();
            }
        }
    }

    public void setRows(int i10) {
        if (i10 <= 50 && this.f1121t != i10) {
            this.f1121t = i10;
            S();
            I();
            D(false);
            invalidate();
        }
    }

    public void setSkips(String str) {
        if (K(str)) {
            String str2 = this.f1125x;
            if (str2 == null || !str2.equals(str)) {
                this.f1125x = str;
                D(true);
                invalidate();
            }
        }
    }

    public void setSpans(CharSequence charSequence) {
        if (K(charSequence)) {
            String str = this.f1124w;
            if (str == null || !str.contentEquals(charSequence)) {
                this.f1124w = charSequence.toString();
                D(true);
                invalidate();
            }
        }
    }

    public void setVerticalGaps(float f10) {
        if (f10 >= 0.0f && this.B != f10) {
            this.B = f10;
            D(true);
            invalidate();
        }
    }

    public Grid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1116o = 50;
        this.f1117p = 50;
        this.D = 0;
        this.H = new HashSet();
    }

    public Grid(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1116o = 50;
        this.f1117p = 50;
        this.D = 0;
        this.H = new HashSet();
    }
}
