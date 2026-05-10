package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0.f f898b;

    i(TextView textView) {
        this.f897a = textView;
        this.f898b = new h0.f(textView, false);
    }

    InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f898b.a(inputFilterArr);
    }

    public boolean b() {
        return this.f898b.b();
    }

    void c(AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = this.f897a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i10, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            e(z10);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    void d(boolean z10) {
        this.f898b.c(z10);
    }

    void e(boolean z10) {
        this.f898b.d(z10);
    }

    public TransformationMethod f(TransformationMethod transformationMethod) {
        return this.f898b.e(transformationMethod);
    }
}
