package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;

/* JADX INFO: loaded from: classes.dex */
public class ReactiveGuide extends View implements e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1688c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1689f;

    public ReactiveGuide(Context context) {
        super(context);
        this.f1686a = -1;
        this.f1687b = false;
        this.f1688c = 0;
        this.f1689f = true;
        super.setVisibility(8);
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.f1686a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1686a);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.f1687b = typedArrayObtainStyledAttributes.getBoolean(index, this.f1687b);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.f1688c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1688c);
                } else if (index == R$styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.f1689f = typedArrayObtainStyledAttributes.getBoolean(index, this.f1689f);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f1686a != -1) {
            ConstraintLayout.getSharedValues().a(this.f1686a, this);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.f1688c;
    }

    public int getAttributeId() {
        return this.f1686a;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setAnimateChange(boolean z10) {
        this.f1687b = z10;
    }

    public void setApplyToConstraintSetId(int i10) {
        this.f1688c = i10;
    }

    public void setAttributeId(int i10) {
        e sharedValues = ConstraintLayout.getSharedValues();
        int i11 = this.f1686a;
        if (i11 != -1) {
            sharedValues.b(i11, this);
        }
        this.f1686a = i10;
        if (i10 != -1) {
            sharedValues.a(i10, this);
        }
    }

    public void setGuidelineBegin(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.guideBegin = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelineEnd(int i10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.guideEnd = i10;
        setLayoutParams(bVar);
    }

    public void setGuidelinePercent(float f10) {
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        bVar.guidePercent = f10;
        setLayoutParams(bVar);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1686a = -1;
        this.f1687b = false;
        this.f1688c = 0;
        this.f1689f = true;
        super.setVisibility(8);
        a(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1686a = -1;
        this.f1687b = false;
        this.f1688c = 0;
        this.f1689f = true;
        super.setVisibility(8);
        a(attributeSet);
    }
}
