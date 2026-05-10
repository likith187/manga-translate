package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.c;
import java.util.Arrays;
import java.util.HashMap;
import o.i;
import o.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* JADX INFO: renamed from: a */
    protected int[] f1649a;

    /* JADX INFO: renamed from: b */
    protected int f1650b;

    /* JADX INFO: renamed from: c */
    protected Context f1651c;

    /* JADX INFO: renamed from: f */
    protected i f1652f;

    /* JADX INFO: renamed from: h */
    protected boolean f1653h;

    /* JADX INFO: renamed from: i */
    protected String f1654i;

    /* JADX INFO: renamed from: j */
    protected String f1655j;

    /* JADX INFO: renamed from: k */
    private View[] f1656k;

    /* JADX INFO: renamed from: l */
    protected HashMap f1657l;

    public ConstraintHelper(Context context) {
        super(context);
        this.f1649a = new int[32];
        this.f1653h = false;
        this.f1656k = null;
        this.f1657l = new HashMap();
        this.f1651c = context;
        o(null);
    }

    private void e(String str) {
        if (str == null || str.length() == 0 || this.f1651c == null) {
            return;
        }
        String strTrim = str.trim();
        int iM = m(strTrim);
        if (iM != 0) {
            this.f1657l.put(Integer.valueOf(iM), strTrim);
            f(iM);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void f(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f1650b + 1;
        int[] iArr = this.f1649a;
        if (i11 > iArr.length) {
            this.f1649a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1649a;
        int i12 = this.f1650b;
        iArr2[i12] = i10;
        this.f1650b = i12 + 1;
    }

    private void g(String str) {
        if (str == null || str.length() == 0 || this.f1651c == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.b) && strTrim.equals(((ConstraintLayout.b) layoutParams).constraintTag)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    f(childAt.getId());
                }
            }
        }
    }

    private int[] k(String str) {
        String[] strArrSplit = str.split(",");
        int[] iArr = new int[strArrSplit.length];
        int i10 = 0;
        for (String str2 : strArrSplit) {
            int iM = m(str2.trim());
            if (iM != 0) {
                iArr[i10] = iM;
                i10++;
            }
        }
        return i10 != strArrSplit.length ? Arrays.copyOf(iArr, i10) : iArr;
    }

    private int l(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f1651c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int m(String str) {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int iL = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                iL = ((Integer) designInformation).intValue();
            }
        }
        if (iL == 0 && constraintLayout != null) {
            iL = l(constraintLayout, str);
        }
        if (iL == 0) {
            try {
                iL = R$id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return iL == 0 ? this.f1651c.getResources().getIdentifier(str, "id", this.f1651c.getPackageName()) : iL;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f1649a, this.f1650b);
    }

    protected void h() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        i((ConstraintLayout) parent);
    }

    protected void i(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            View viewById = constraintLayout.getViewById(this.f1649a[i10]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void j(ConstraintLayout constraintLayout) {
    }

    protected View[] n(ConstraintLayout constraintLayout) {
        View[] viewArr = this.f1656k;
        if (viewArr == null || viewArr.length != this.f1650b) {
            this.f1656k = new View[this.f1650b];
        }
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            this.f1656k[i10] = constraintLayout.getViewById(this.f1649a[i10]);
        }
        return this.f1656k;
    }

    protected void o(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1654i = string;
                    setIds(string);
                } else if (index == R$styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f1655j = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f1654i;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f1655j;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f1653h) {
            super.onMeasure(i10, i11);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void p(c.a aVar, j jVar, ConstraintLayout.b bVar, SparseArray sparseArray) {
        c.b bVar2 = aVar.f1731e;
        int[] iArr = bVar2.f1769k0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = bVar2.f1771l0;
            if (str != null) {
                if (str.length() > 0) {
                    c.b bVar3 = aVar.f1731e;
                    bVar3.f1769k0 = k(bVar3.f1771l0);
                } else {
                    aVar.f1731e.f1769k0 = null;
                }
            }
        }
        if (jVar == null) {
            return;
        }
        jVar.c();
        if (aVar.f1731e.f1769k0 == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            int[] iArr2 = aVar.f1731e.f1769k0;
            if (i10 >= iArr2.length) {
                return;
            }
            o.e eVar = (o.e) sparseArray.get(iArr2[i10]);
            if (eVar != null) {
                jVar.b(eVar);
            }
            i10++;
        }
    }

    public void q(o.e eVar, boolean z10) {
    }

    public void r(ConstraintLayout constraintLayout) {
    }

    public void s(ConstraintLayout constraintLayout) {
    }

    protected void setIds(String str) {
        this.f1654i = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1650b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                e(str.substring(i10));
                return;
            } else {
                e(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        this.f1655j = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f1650b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                g(str.substring(i10));
                return;
            } else {
                g(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1654i = null;
        this.f1650b = 0;
        for (int i10 : iArr) {
            f(i10);
        }
    }

    @Override // android.view.View
    public void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f1654i == null) {
            f(i10);
        }
    }

    public void t(ConstraintLayout constraintLayout) {
    }

    public void u(ConstraintLayout constraintLayout) {
        String str;
        int iL;
        if (isInEditMode()) {
            setIds(this.f1654i);
        }
        i iVar = this.f1652f;
        if (iVar == null) {
            return;
        }
        iVar.c();
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            int i11 = this.f1649a[i10];
            View viewById = constraintLayout.getViewById(i11);
            if (viewById == null && (iL = l(constraintLayout, (str = (String) this.f1657l.get(Integer.valueOf(i11))))) != 0) {
                this.f1649a[i10] = iL;
                this.f1657l.put(Integer.valueOf(iL), str);
                viewById = constraintLayout.getViewById(iL);
            }
            if (viewById != null) {
                this.f1652f.b(constraintLayout.getViewWidget(viewById));
            }
        }
        this.f1652f.a(constraintLayout.mLayoutWidget);
    }

    public void v(o.f fVar, i iVar, SparseArray sparseArray) {
        iVar.c();
        for (int i10 = 0; i10 < this.f1650b; i10++) {
            iVar.b((o.e) sparseArray.get(this.f1649a[i10]));
        }
    }

    public void w() {
        if (this.f1652f == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.b) {
            ((ConstraintLayout.b) layoutParams).mWidget = (o.e) this.f1652f;
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1649a = new int[32];
        this.f1653h = false;
        this.f1656k = null;
        this.f1657l = new HashMap();
        this.f1651c = context;
        o(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1649a = new int[32];
        this.f1653h = false;
        this.f1656k = null;
        this.f1657l = new HashMap();
        this.f1651c = context;
        o(attributeSet);
    }
}
