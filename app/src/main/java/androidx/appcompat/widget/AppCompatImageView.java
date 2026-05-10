package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatImageView extends ImageView {
    private final d mBackgroundTintHelper;
    private boolean mHasLevel;
    private final k mImageHelper;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.b();
        }
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.c();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        k kVar = this.mImageHelper;
        if (kVar != null) {
            return kVar.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        k kVar = this.mImageHelper;
        if (kVar != null) {
            return kVar.e();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.mImageHelper.f() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        k kVar = this.mImageHelper;
        if (kVar != null && drawable != null && !this.mHasLevel) {
            kVar.h(drawable);
        }
        super.setImageDrawable(drawable);
        k kVar2 = this.mImageHelper;
        if (kVar2 != null) {
            kVar2.c();
            if (this.mHasLevel) {
                return;
            }
            this.mImageHelper.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.mHasLevel = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.i(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.c();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.j(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        k kVar = this.mImageHelper;
        if (kVar != null) {
            kVar.k(mode);
        }
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        this.mHasLevel = false;
        d0.a(this, getContext());
        d dVar = new d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i10);
        k kVar = new k(this);
        this.mImageHelper = kVar;
        kVar.g(attributeSet, i10);
    }
}
