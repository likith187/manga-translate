package j4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.shape.i;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;

/* JADX INFO: loaded from: classes.dex */
public class a extends Drawable implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f12749a;

    @Override // android.graphics.drawable.Drawable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.f12749a = new b(this.f12749a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f12749a;
        if (bVar.f12751b) {
            bVar.f12750a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f12749a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f12749a.f12750a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f12749a.f12750a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f12749a.f12750a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zE = j4.b.e(iArr);
        b bVar = this.f12749a;
        if (bVar.f12751b == zE) {
            return zOnStateChange;
        }
        bVar.f12751b = zE;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f12749a.f12750a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12749a.f12750a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(n nVar) {
        this.f12749a.f12750a.setShapeAppearanceModel(nVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i10) {
        this.f12749a.f12750a.setTint(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f12749a.f12750a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f12749a.f12750a.setTintMode(mode);
    }

    public a(n nVar) {
        this(new b(new i(nVar)));
    }

    static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        i f12750a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f12751b;

        public b(i iVar) {
            this.f12750a = iVar;
            this.f12751b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(b bVar) {
            this.f12750a = (i) bVar.f12750a.getConstantState().newDrawable();
            this.f12751b = bVar.f12751b;
        }
    }

    private a(b bVar) {
        this.f12749a = bVar;
    }
}
