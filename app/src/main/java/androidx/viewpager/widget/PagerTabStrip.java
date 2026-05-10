package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.coui.appcompat.uiutil.UIUtil;

/* JADX INFO: loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    private final Rect A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private float G;
    private float H;
    private int I;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3853t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f3854u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3855v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f3856w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f3857x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f3858y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Paint f3859z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PagerTabStrip.this.f3864a.setCurrentItem(r0.getCurrentItem() - 1);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f3864a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(Context context) {
        this(context, null);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    void d(int i10, float f10, boolean z10) {
        Rect rect = this.A;
        int height = getHeight();
        int left = this.f3866c.getLeft() - this.f3858y;
        int right = this.f3866c.getRight() + this.f3858y;
        int i11 = height - this.f3854u;
        rect.set(left, i11, right, height);
        super.d(i10, f10, z10);
        this.B = (int) (Math.abs(f10 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f3866c.getLeft() - this.f3858y, i11, this.f3866c.getRight() + this.f3858y, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.C;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f3857x);
    }

    public int getTabIndicatorColor() {
        return this.f3853t;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f3866c.getLeft() - this.f3858y;
        int right = this.f3866c.getRight() + this.f3858y;
        int i10 = height - this.f3854u;
        this.f3859z.setColor((this.B << 24) | (this.f3853t & UIUtil.CONSTANT_COLOR_MASK));
        float f10 = height;
        canvas.drawRect(left, i10, right, f10, this.f3859z);
        if (this.C) {
            this.f3859z.setColor((this.f3853t & UIUtil.CONSTANT_COLOR_MASK) | (-16777216));
            canvas.drawRect(getPaddingLeft(), height - this.E, getWidth() - getPaddingRight(), f10, this.f3859z);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.F) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (action == 0) {
            this.G = x10;
            this.H = y10;
            this.F = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x10 - this.G) > this.I || Math.abs(y10 - this.H) > this.I)) {
                this.F = true;
            }
        } else if (x10 < this.f3866c.getLeft() - this.f3858y) {
            ViewPager viewPager = this.f3864a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x10 > this.f3866c.getRight() + this.f3858y) {
            ViewPager viewPager2 = this.f3864a;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        super.setBackgroundColor(i10);
        if (this.D) {
            return;
        }
        this.C = (i10 & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.D) {
            return;
        }
        this.C = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        if (this.D) {
            return;
        }
        this.C = i10 == 0;
    }

    public void setDrawFullUnderline(boolean z10) {
        this.C = z10;
        this.D = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        int i14 = this.f3855v;
        if (i13 < i14) {
            i13 = i14;
        }
        super.setPadding(i10, i11, i12, i13);
    }

    public void setTabIndicatorColor(int i10) {
        this.f3853t = i10;
        this.f3859z.setColor(i10);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i10) {
        setTabIndicatorColor(r.a.c(getContext(), i10));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i10) {
        int i11 = this.f3856w;
        if (i10 < i11) {
            i10 = i11;
        }
        super.setTextSpacing(i10);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f3859z = paint;
        this.A = new Rect();
        this.B = 255;
        this.C = false;
        this.D = false;
        int i10 = this.f3877q;
        this.f3853t = i10;
        paint.setColor(i10);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f3854u = (int) ((3.0f * f10) + 0.5f);
        this.f3855v = (int) ((6.0f * f10) + 0.5f);
        this.f3856w = (int) (64.0f * f10);
        this.f3858y = (int) ((16.0f * f10) + 0.5f);
        this.E = (int) ((1.0f * f10) + 0.5f);
        this.f3857x = (int) ((f10 * 32.0f) + 0.5f);
        this.I = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f3865b.setFocusable(true);
        this.f3865b.setOnClickListener(new a());
        this.f3867f.setFocusable(true);
        this.f3867f.setOnClickListener(new b());
        if (getBackground() == null) {
            this.C = true;
        }
    }
}
