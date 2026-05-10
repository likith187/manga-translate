package androidx.preference.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.preference.R$styleable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AppCompatCustomView"})
public class PreferenceImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2981b;

    public PreferenceImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView
    public int getMaxHeight() {
        return this.f2981b;
    }

    @Override // android.widget.ImageView
    public int getMaxWidth() {
        return this.f2980a;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int size = View.MeasureSpec.getSize(i10);
            int maxWidth = getMaxWidth();
            if (maxWidth != Integer.MAX_VALUE && (maxWidth < size || mode == 0)) {
                i10 = View.MeasureSpec.makeMeasureSpec(maxWidth, Integer.MIN_VALUE);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            int size2 = View.MeasureSpec.getSize(i11);
            int maxHeight = getMaxHeight();
            if (maxHeight != Integer.MAX_VALUE && (maxHeight < size2 || mode2 == 0)) {
                i11 = View.MeasureSpec.makeMeasureSpec(maxHeight, Integer.MIN_VALUE);
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i10) {
        this.f2981b = i10;
        super.setMaxHeight(i10);
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i10) {
        this.f2980a = i10;
        super.setMaxWidth(i10);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f2980a = Integer.MAX_VALUE;
        this.f2981b = Integer.MAX_VALUE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PreferenceImageView, i10, 0);
        setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceImageView_maxWidth, Integer.MAX_VALUE));
        setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceImageView_maxHeight, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
    }
}
