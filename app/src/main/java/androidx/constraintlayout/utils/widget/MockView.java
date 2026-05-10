package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MockView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f1595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f1597c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1598f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f1600i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f1601j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1604m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f1605n;

    public MockView(Context context) {
        super(context);
        this.f1595a = new Paint();
        this.f1596b = new Paint();
        this.f1597c = new Paint();
        this.f1598f = true;
        this.f1599h = true;
        this.f1600i = null;
        this.f1601j = new Rect();
        this.f1602k = Color.argb(255, 0, 0, 0);
        this.f1603l = Color.argb(255, 200, 200, 200);
        this.f1604m = Color.argb(255, 50, 50, 50);
        this.f1605n = 4;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MockView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MockView_mock_label) {
                    this.f1600i = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MockView_mock_showDiagonals) {
                    this.f1598f = typedArrayObtainStyledAttributes.getBoolean(index, this.f1598f);
                } else if (index == R$styleable.MockView_mock_diagonalsColor) {
                    this.f1602k = typedArrayObtainStyledAttributes.getColor(index, this.f1602k);
                } else if (index == R$styleable.MockView_mock_labelBackgroundColor) {
                    this.f1604m = typedArrayObtainStyledAttributes.getColor(index, this.f1604m);
                } else if (index == R$styleable.MockView_mock_labelColor) {
                    this.f1603l = typedArrayObtainStyledAttributes.getColor(index, this.f1603l);
                } else if (index == R$styleable.MockView_mock_showLabel) {
                    this.f1599h = typedArrayObtainStyledAttributes.getBoolean(index, this.f1599h);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f1600i == null) {
            try {
                this.f1600i = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.f1595a.setColor(this.f1602k);
        this.f1595a.setAntiAlias(true);
        this.f1596b.setColor(this.f1603l);
        this.f1596b.setAntiAlias(true);
        this.f1597c.setColor(this.f1604m);
        this.f1605n = Math.round(this.f1605n * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f1598f) {
            width--;
            height--;
            float f10 = width;
            float f11 = height;
            canvas.drawLine(0.0f, 0.0f, f10, f11, this.f1595a);
            canvas.drawLine(0.0f, f11, f10, 0.0f, this.f1595a);
            canvas.drawLine(0.0f, 0.0f, f10, 0.0f, this.f1595a);
            canvas.drawLine(f10, 0.0f, f10, f11, this.f1595a);
            canvas.drawLine(f10, f11, 0.0f, f11, this.f1595a);
            canvas.drawLine(0.0f, f11, 0.0f, 0.0f, this.f1595a);
        }
        String str = this.f1600i;
        if (str == null || !this.f1599h) {
            return;
        }
        this.f1596b.getTextBounds(str, 0, str.length(), this.f1601j);
        float fWidth = (width - this.f1601j.width()) / 2.0f;
        float fHeight = ((height - this.f1601j.height()) / 2.0f) + this.f1601j.height();
        this.f1601j.offset((int) fWidth, (int) fHeight);
        Rect rect = this.f1601j;
        int i10 = rect.left;
        int i11 = this.f1605n;
        rect.set(i10 - i11, rect.top - i11, rect.right + i11, rect.bottom + i11);
        canvas.drawRect(this.f1601j, this.f1597c);
        canvas.drawText(this.f1600i, fWidth, fHeight, this.f1596b);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1595a = new Paint();
        this.f1596b = new Paint();
        this.f1597c = new Paint();
        this.f1598f = true;
        this.f1599h = true;
        this.f1600i = null;
        this.f1601j = new Rect();
        this.f1602k = Color.argb(255, 0, 0, 0);
        this.f1603l = Color.argb(255, 200, 200, 200);
        this.f1604m = Color.argb(255, 50, 50, 50);
        this.f1605n = 4;
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1595a = new Paint();
        this.f1596b = new Paint();
        this.f1597c = new Paint();
        this.f1598f = true;
        this.f1599h = true;
        this.f1600i = null;
        this.f1601j = new Rect();
        this.f1602k = Color.argb(255, 0, 0, 0);
        this.f1603l = Color.argb(255, 200, 200, 200);
        this.f1604m = Color.argb(255, 50, 50, 50);
        this.f1605n = 4;
        a(context, attributeSet);
    }
}
