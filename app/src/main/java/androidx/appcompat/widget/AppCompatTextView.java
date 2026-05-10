package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import b0.b;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatTextView extends TextView {
    private final androidx.appcompat.widget.d mBackgroundTintHelper;
    private i mEmojiTextViewHelper;
    private boolean mIsSetTypefaceProcessing;
    private Future<b0.b> mPrecomputedTextFuture;
    private a mSuperCaller;
    private final p mTextClassifierHelper;
    private final q mTextHelper;

    private interface a {
        void a(int[] iArr, int i10);

        void b(TextClassifier textClassifier);

        int[] c();

        void d(int i10);

        TextClassifier e();

        int f();

        void g(int i10, int i11, int i12, int i13);

        int h();

        int i();

        void j(int i10);

        int k();

        void l(int i10);

        void m(int i10, float f10);
    }

    class b implements a {
        b() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void a(int[] iArr, int i10) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i10);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void b(TextClassifier textClassifier) {
            AppCompatTextView.super.setTextClassifier(textClassifier);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public int[] c() {
            return AppCompatTextView.super.getAutoSizeTextAvailableSizes();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public TextClassifier e() {
            return AppCompatTextView.super.getTextClassifier();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public int f() {
            return AppCompatTextView.super.getAutoSizeMaxTextSize();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void g(int i10, int i11, int i12, int i13) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithConfiguration(i10, i11, i12, i13);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public int h() {
            return AppCompatTextView.super.getAutoSizeTextType();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public int i() {
            return AppCompatTextView.super.getAutoSizeMinTextSize();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public int k() {
            return AppCompatTextView.super.getAutoSizeStepGranularity();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void l(int i10) {
            AppCompatTextView.super.setAutoSizeTextTypeWithDefaults(i10);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void m(int i10, float f10) {
        }
    }

    class c extends b {
        c() {
            super();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void d(int i10) {
            AppCompatTextView.super.setLastBaselineToBottomHeight(i10);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.a
        public void j(int i10) {
            AppCompatTextView.super.setFirstBaselineToTopHeight(i10);
        }
    }

    class d extends c {
        d() {
            super();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.b, androidx.appcompat.widget.AppCompatTextView.a
        public void m(int i10, float f10) {
            AppCompatTextView.super.setLineHeight(i10, f10);
        }
    }

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    private void a() {
        Future<b0.b> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                androidx.appcompat.app.t.a(future.get());
                androidx.core.widget.j.n(this, null);
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    private i getEmojiTextViewHelper() {
        if (this.mEmojiTextViewHelper == null) {
            this.mEmojiTextViewHelper = new i(this);
        }
        return this.mEmojiTextViewHelper;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.b();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (o0.f942a) {
            return getSuperCaller().f();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (o0.f942a) {
            return getSuperCaller().i();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (o0.f942a) {
            return getSuperCaller().k();
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (o0.f942a) {
            return getSuperCaller().c();
        }
        q qVar = this.mTextHelper;
        return qVar != null ? qVar.h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (o0.f942a) {
            return getSuperCaller().h() == 1 ? 1 : 0;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            return qVar.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.j.q(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return androidx.core.widget.j.b(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return androidx.core.widget.j.c(this);
    }

    a getSuperCaller() {
        if (this.mSuperCaller == null) {
            if (Build.VERSION.SDK_INT >= 34) {
                this.mSuperCaller = new d();
            } else {
                this.mSuperCaller = new c();
            }
        }
        return this.mSuperCaller;
    }

    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        a();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        return getSuperCaller().e();
    }

    public b.a getTextMetricsParamsCompat() {
        return androidx.core.widget.j.f(this);
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.r(this, inputConnectionOnCreateInputConnection, editorInfo);
        return j.a(inputConnectionOnCreateInputConnection, editorInfo, this);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.o(z10, i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        a();
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        q qVar = this.mTextHelper;
        if (qVar == null || o0.f942a || !qVar.l()) {
            return;
        }
        this.mTextHelper.c();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        if (o0.f942a) {
            getSuperCaller().g(i10, i11, i12, i13);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.t(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i10) throws IllegalArgumentException {
        if (o0.f942a) {
            getSuperCaller().a(iArr, i10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.u(iArr, i10);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i10) {
        if (o0.f942a) {
            getSuperCaller().l(i10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.v(i10);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.j.r(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i10) {
        getSuperCaller().j(i10);
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i10) {
        getSuperCaller().d(i10);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i10) {
        androidx.core.widget.j.l(this, i10);
    }

    public void setPrecomputedText(b0.b bVar) {
        androidx.core.widget.j.n(this, bVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.mBackgroundTintHelper;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.mTextHelper.w(colorStateList);
        this.mTextHelper.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.mTextHelper.x(mode);
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.q(context, i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        getSuperCaller().b(textClassifier);
    }

    public void setTextFuture(Future<b0.b> future) {
        this.mPrecomputedTextFuture = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(b.a aVar) {
        androidx.core.widget.j.p(this, aVar);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        if (o0.f942a) {
            super.setTextSize(i10, f10);
            return;
        }
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.A(i10, f10);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface, int i10) {
        if (this.mIsSetTypefaceProcessing) {
            return;
        }
        Typeface typefaceA = (typeface == null || i10 <= 0) ? null : u.h.a(getContext(), typeface, i10);
        this.mIsSetTypefaceProcessing = true;
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        try {
            super.setTypeface(typeface, i10);
        } finally {
            this.mIsSetTypefaceProcessing = false;
        }
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i10, float f10) {
        if (Build.VERSION.SDK_INT >= 34) {
            getSuperCaller().m(i10, f10);
        } else {
            androidx.core.widget.j.m(this, i10, f10);
        }
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i10) {
        super(e0.b(context), attributeSet, i10);
        this.mIsSetTypefaceProcessing = false;
        this.mSuperCaller = null;
        d0.a(this, getContext());
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.mBackgroundTintHelper = dVar;
        dVar.e(attributeSet, i10);
        q qVar = new q(this);
        this.mTextHelper = qVar;
        qVar.m(attributeSet, i10);
        qVar.b();
        this.mTextClassifierHelper = new p(this);
        getEmojiTextViewHelper().c(attributeSet, i10);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i10 != 0 ? e.a.b(context, i10) : null, i11 != 0 ? e.a.b(context, i11) : null, i12 != 0 ? e.a.b(context, i12) : null, i13 != 0 ? e.a.b(context, i13) : null);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i10 != 0 ? e.a.b(context, i10) : null, i11 != 0 ? e.a.b(context, i11) : null, i12 != 0 ? e.a.b(context, i12) : null, i13 != 0 ? e.a.b(context, i13) : null);
        q qVar = this.mTextHelper;
        if (qVar != null) {
            qVar.p();
        }
    }
}
