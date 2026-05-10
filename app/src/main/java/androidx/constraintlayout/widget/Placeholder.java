package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class Placeholder extends View {

    /* JADX INFO: renamed from: a */
    private int f1683a;

    /* JADX INFO: renamed from: b */
    private View f1684b;

    /* JADX INFO: renamed from: c */
    private int f1685c;

    public Placeholder(Context context) {
        super(context);
        this.f1683a = -1;
        this.f1684b = null;
        this.f1685c = 4;
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        super.setVisibility(this.f1685c);
        this.f1683a = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.ConstraintLayout_placeholder_content) {
                    this.f1683a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1683a);
                } else if (index == R$styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f1685c = typedArrayObtainStyledAttributes.getInt(index, this.f1685c);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f1684b == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f1684b.getLayoutParams();
        bVar2.mWidget.o1(0);
        e.b bVarC = bVar.mWidget.C();
        e.b bVar3 = e.b.FIXED;
        if (bVarC != bVar3) {
            bVar.mWidget.p1(bVar2.mWidget.Y());
        }
        if (bVar.mWidget.V() != bVar3) {
            bVar.mWidget.Q0(bVar2.mWidget.z());
        }
        bVar2.mWidget.o1(8);
    }

    public void c(ConstraintLayout constraintLayout) {
        if (this.f1683a == -1 && !isInEditMode()) {
            setVisibility(this.f1685c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f1683a);
        this.f1684b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).mIsInPlaceholder = true;
            this.f1684b.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1684b;
    }

    public int getEmptyVisibility() {
        return this.f1685c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i10) {
        View viewFindViewById;
        if (this.f1683a == i10) {
            return;
        }
        View view = this.f1684b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f1684b.getLayoutParams()).mIsInPlaceholder = false;
            this.f1684b = null;
        }
        this.f1683a = i10;
        if (i10 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i10)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i10) {
        this.f1685c = i10;
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1683a = -1;
        this.f1684b = null;
        this.f1685c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1683a = -1;
        this.f1684b = null;
        this.f1685c = 4;
        a(attributeSet);
    }
}
