package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.h0;
import androidx.core.view.m0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.n;
import com.oplus.aiunit.core.ConfigPackage;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    private static final int F0 = R$style.Widget_Design_TextInputLayout;
    private static final int[][] G0 = {new int[]{16842919}, new int[0]};
    private androidx.transition.c A;
    private boolean A0;
    private ColorStateList B;
    private ValueAnimator B0;
    private ColorStateList C;
    private boolean C0;
    private ColorStateList D;
    private boolean D0;
    private ColorStateList E;
    private boolean E0;
    private boolean F;
    private CharSequence G;
    private boolean H;
    private com.google.android.material.shape.i I;
    private com.google.android.material.shape.i J;
    private StateListDrawable K;
    private boolean L;
    private com.google.android.material.shape.i M;
    private com.google.android.material.shape.i N;
    private com.google.android.material.shape.n O;
    private boolean P;
    private final int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private int V;
    private int W;

    /* JADX INFO: renamed from: a */
    private final FrameLayout f10368a;

    /* JADX INFO: renamed from: a0 */
    private int f10369a0;

    /* JADX INFO: renamed from: b */
    private final y f10370b;

    /* JADX INFO: renamed from: b0 */
    private final Rect f10371b0;

    /* JADX INFO: renamed from: c */
    private final r f10372c;

    /* JADX INFO: renamed from: c0 */
    private final Rect f10373c0;

    /* JADX INFO: renamed from: d0 */
    private final RectF f10374d0;

    /* JADX INFO: renamed from: e0 */
    private Typeface f10375e0;

    /* JADX INFO: renamed from: f */
    EditText f10376f;

    /* JADX INFO: renamed from: f0 */
    private Drawable f10377f0;

    /* JADX INFO: renamed from: g0 */
    private int f10378g0;

    /* JADX INFO: renamed from: h */
    private CharSequence f10379h;

    /* JADX INFO: renamed from: h0 */
    private final LinkedHashSet f10380h0;

    /* JADX INFO: renamed from: i */
    private int f10381i;

    /* JADX INFO: renamed from: i0 */
    private Drawable f10382i0;

    /* JADX INFO: renamed from: j */
    private int f10383j;

    /* JADX INFO: renamed from: j0 */
    private int f10384j0;

    /* JADX INFO: renamed from: k */
    private int f10385k;

    /* JADX INFO: renamed from: k0 */
    private Drawable f10386k0;

    /* JADX INFO: renamed from: l */
    private int f10387l;

    /* JADX INFO: renamed from: l0 */
    private ColorStateList f10388l0;

    /* JADX INFO: renamed from: m */
    private final u f10389m;

    /* JADX INFO: renamed from: m0 */
    private ColorStateList f10390m0;

    /* JADX INFO: renamed from: n */
    boolean f10391n;

    /* JADX INFO: renamed from: n0 */
    private int f10392n0;

    /* JADX INFO: renamed from: o */
    private int f10393o;

    /* JADX INFO: renamed from: o0 */
    private int f10394o0;

    /* JADX INFO: renamed from: p */
    private boolean f10395p;

    /* JADX INFO: renamed from: p0 */
    private int f10396p0;

    /* JADX INFO: renamed from: q */
    private e f10397q;

    /* JADX INFO: renamed from: q0 */
    private ColorStateList f10398q0;

    /* JADX INFO: renamed from: r */
    private TextView f10399r;

    /* JADX INFO: renamed from: r0 */
    private int f10400r0;

    /* JADX INFO: renamed from: s */
    private int f10401s;

    /* JADX INFO: renamed from: s0 */
    private int f10402s0;

    /* JADX INFO: renamed from: t */
    private int f10403t;

    /* JADX INFO: renamed from: t0 */
    private int f10404t0;

    /* JADX INFO: renamed from: u */
    private CharSequence f10405u;

    /* JADX INFO: renamed from: u0 */
    private int f10406u0;

    /* JADX INFO: renamed from: v */
    private boolean f10407v;

    /* JADX INFO: renamed from: v0 */
    private int f10408v0;

    /* JADX INFO: renamed from: w */
    private TextView f10409w;

    /* JADX INFO: renamed from: w0 */
    int f10410w0;

    /* JADX INFO: renamed from: x */
    private ColorStateList f10411x;

    /* JADX INFO: renamed from: x0 */
    private boolean f10412x0;

    /* JADX INFO: renamed from: y */
    private int f10413y;

    /* JADX INFO: renamed from: y0 */
    final CollapsingTextHelper f10414y0;

    /* JADX INFO: renamed from: z */
    private androidx.transition.c f10415z;

    /* JADX INFO: renamed from: z0 */
    private boolean f10416z0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        CharSequence f10417a;

        /* JADX INFO: renamed from: b */
        boolean f10418b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f10417a) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            TextUtils.writeToParcel(this.f10417a, parcel, i10);
            parcel.writeInt(this.f10418b ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10417a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f10418b = parcel.readInt() == 1;
        }
    }

    class a implements TextWatcher {

        /* JADX INFO: renamed from: a */
        int f10419a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ EditText f10420b;

        a(EditText editText) {
            this.f10420b = editText;
            this.f10419a = editText.getLineCount();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.u0(!r0.D0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f10391n) {
                textInputLayout.k0(editable);
            }
            if (TextInputLayout.this.f10407v) {
                TextInputLayout.this.y0(editable);
            }
            int lineCount = this.f10420b.getLineCount();
            int i10 = this.f10419a;
            if (lineCount != i10) {
                if (lineCount < i10) {
                    int iX = m0.x(this.f10420b);
                    int i11 = TextInputLayout.this.f10410w0;
                    if (iX != i11) {
                        this.f10420b.setMinimumHeight(i11);
                    }
                }
                this.f10419a = lineCount;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f10372c.h();
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f10414y0.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class d extends androidx.core.view.a {

        /* JADX INFO: renamed from: a */
        private final TextInputLayout f10424a;

        public d(TextInputLayout textInputLayout) {
            this.f10424a = textInputLayout;
        }

        @Override // androidx.core.view.a
        public void onInitializeAccessibilityNodeInfo(View view, d0.h hVar) {
            super.onInitializeAccessibilityNodeInfo(view, hVar);
            EditText editText = this.f10424a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f10424a.getHint();
            CharSequence error = this.f10424a.getError();
            CharSequence placeholderText = this.f10424a.getPlaceholderText();
            int counterMaxLength = this.f10424a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f10424a.getCounterOverflowDescription();
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean zIsEmpty2 = TextUtils.isEmpty(hint);
            boolean zP = this.f10424a.P();
            boolean zIsEmpty3 = TextUtils.isEmpty(error);
            boolean z10 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String string = !zIsEmpty2 ? hint.toString() : "";
            this.f10424a.f10370b.A(hVar);
            if (!zIsEmpty) {
                hVar.I0(text);
            } else if (!TextUtils.isEmpty(string)) {
                hVar.I0(string);
                if (!zP && placeholderText != null) {
                    hVar.I0(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                hVar.I0(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                hVar.s0(string);
                hVar.E0(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            hVar.u0(counterMaxLength);
            if (z10) {
                if (zIsEmpty3) {
                    error = counterOverflowDescription;
                }
                hVar.o0(error);
            }
            View viewT = this.f10424a.f10389m.t();
            if (viewT != null) {
                hVar.t0(viewT);
            }
            this.f10424a.f10372c.m().o(view, hVar);
        }

        @Override // androidx.core.view.a
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.f10424a.f10372c.m().p(view, accessibilityEvent);
        }
    }

    public interface e {
        int a(Editable editable);
    }

    public interface f {
        void a(TextInputLayout textInputLayout);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    private androidx.transition.c A() {
        androidx.transition.c cVar = new androidx.transition.c();
        cVar.setDuration(g4.i.f(getContext(), R$attr.motionDurationShort2, 87));
        cVar.setInterpolator(g4.i.g(getContext(), R$attr.motionEasingLinearInterpolator, x3.a.f16368a));
        return cVar;
    }

    private boolean B() {
        return this.F && !TextUtils.isEmpty(this.G) && (this.I instanceof h);
    }

    private void C() {
        Iterator it = this.f10380h0.iterator();
        while (it.hasNext()) {
            ((f) it.next()).a(this);
        }
    }

    private void D(Canvas canvas) {
        com.google.android.material.shape.i iVar;
        if (this.N == null || (iVar = this.M) == null) {
            return;
        }
        iVar.draw(canvas);
        if (this.f10376f.isFocused()) {
            Rect bounds = this.N.getBounds();
            Rect bounds2 = this.M.getBounds();
            float expansionFraction = this.f10414y0.getExpansionFraction();
            int iCenterX = bounds2.centerX();
            bounds.left = x3.a.c(iCenterX, bounds2.left, expansionFraction);
            bounds.right = x3.a.c(iCenterX, bounds2.right, expansionFraction);
            this.N.draw(canvas);
        }
    }

    private void E(Canvas canvas) {
        if (this.F) {
            this.f10414y0.draw(canvas);
        }
    }

    private void F(boolean z10) {
        ValueAnimator valueAnimator = this.B0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.B0.cancel();
        }
        if (z10 && this.A0) {
            l(0.0f);
        } else {
            this.f10414y0.setExpansionFraction(0.0f);
        }
        if (B() && ((h) this.I).x()) {
            y();
        }
        this.f10412x0 = true;
        L();
        this.f10370b.l(true);
        this.f10372c.H(true);
    }

    private com.google.android.material.shape.i G(boolean z10) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_shape_corner_size_small_component);
        float f10 = z10 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f10376f;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(R$dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R$dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.a().H(f10).M(f10).w(dimensionPixelOffset).B(dimensionPixelOffset).m();
        EditText editText2 = this.f10376f;
        com.google.android.material.shape.i iVarCreateWithElevationOverlay = com.google.android.material.shape.i.createWithElevationOverlay(getContext(), popupElevation, editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null);
        iVarCreateWithElevationOverlay.setShapeAppearanceModel(nVarM);
        iVarCreateWithElevationOverlay.setPadding(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return iVarCreateWithElevationOverlay;
    }

    private static Drawable H(com.google.android.material.shape.i iVar, int i10, int i11, int[][] iArr) {
        return new RippleDrawable(new ColorStateList(iArr, new int[]{b4.a.j(i11, i10, 0.1f), i10}), iVar, iVar);
    }

    private int I(int i10, boolean z10) {
        return i10 + ((z10 || getPrefixText() == null) ? (!z10 || getSuffixText() == null) ? this.f10376f.getCompoundPaddingLeft() : this.f10372c.y() : this.f10370b.c());
    }

    private int J(int i10, boolean z10) {
        return i10 - ((z10 || getSuffixText() == null) ? (!z10 || getPrefixText() == null) ? this.f10376f.getCompoundPaddingRight() : this.f10370b.c() : this.f10372c.y());
    }

    private static Drawable K(Context context, com.google.android.material.shape.i iVar, int i10, int[][] iArr) {
        int iC = b4.a.c(context, R$attr.colorSurface, "TextInputLayout");
        com.google.android.material.shape.i iVar2 = new com.google.android.material.shape.i(iVar.getShapeAppearanceModel());
        int iJ = b4.a.j(i10, iC, 0.1f);
        iVar2.setFillColor(new ColorStateList(iArr, new int[]{iJ, 0}));
        iVar2.setTint(iC);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iJ, iC});
        com.google.android.material.shape.i iVar3 = new com.google.android.material.shape.i(iVar.getShapeAppearanceModel());
        iVar3.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, iVar2, iVar3), iVar});
    }

    private void L() {
        TextView textView = this.f10409w;
        if (textView == null || !this.f10407v) {
            return;
        }
        textView.setText((CharSequence) null);
        androidx.transition.q.a(this.f10368a, this.A);
        this.f10409w.setVisibility(4);
    }

    private boolean Q() {
        return d0() || (this.f10399r != null && this.f10395p);
    }

    private boolean S() {
        return this.R == 1 && this.f10376f.getMinLines() <= 1;
    }

    public static /* synthetic */ int T(Editable editable) {
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    public /* synthetic */ void U() {
        this.f10376f.requestLayout();
    }

    private void V() {
        p();
        r0();
        A0();
        h0();
        k();
        if (this.R != 0) {
            t0();
        }
        b0();
    }

    private void W() {
        if (B()) {
            RectF rectF = this.f10374d0;
            this.f10414y0.getCollapsedTextActualBounds(rectF, this.f10376f.getWidth(), this.f10376f.getGravity());
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            o(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.T);
            ((h) this.I).A(rectF);
        }
    }

    private void X() {
        if (!B() || this.f10412x0) {
            return;
        }
        y();
        W();
    }

    private static void Y(ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                Y((ViewGroup) childAt, z10);
            }
        }
    }

    private void a0() {
        TextView textView = this.f10409w;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void b0() {
        EditText editText = this.f10376f;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i10 = this.R;
                if (i10 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i10 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    private boolean e0() {
        return (this.f10372c.G() || ((this.f10372c.A() && M()) || this.f10372c.w() != null)) && this.f10372c.getMeasuredWidth() > 0;
    }

    private boolean f0() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f10370b.getMeasuredWidth() > 0;
    }

    private void g0() {
        if (this.f10409w == null || !this.f10407v || TextUtils.isEmpty(this.f10405u)) {
            return;
        }
        this.f10409w.setText(this.f10405u);
        androidx.transition.q.a(this.f10368a, this.f10415z);
        this.f10409w.setVisibility(0);
        this.f10409w.bringToFront();
        announceForAccessibility(this.f10405u);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f10376f;
        if (!(editText instanceof AutoCompleteTextView) || q.a(editText)) {
            return this.I;
        }
        int iD = b4.a.d(this.f10376f, R$attr.colorControlHighlight);
        int i10 = this.R;
        if (i10 == 2) {
            return K(getContext(), this.I, iD, G0);
        }
        if (i10 == 1) {
            return H(this.I, this.f10369a0, iD, G0);
        }
        return null;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.K == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.K = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.K.addState(new int[0], G(false));
        }
        return this.K;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.J == null) {
            this.J = G(true);
        }
        return this.J;
    }

    private void h0() {
        if (this.R == 1) {
            if (i4.c.k(getContext())) {
                this.S = getResources().getDimensionPixelSize(R$dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (i4.c.j(getContext())) {
                this.S = getResources().getDimensionPixelSize(R$dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void i0(Rect rect) {
        com.google.android.material.shape.i iVar = this.M;
        if (iVar != null) {
            int i10 = rect.bottom;
            iVar.setBounds(rect.left, i10 - this.U, rect.right, i10);
        }
        com.google.android.material.shape.i iVar2 = this.N;
        if (iVar2 != null) {
            int i11 = rect.bottom;
            iVar2.setBounds(rect.left, i11 - this.V, rect.right, i11);
        }
    }

    private void j() {
        TextView textView = this.f10409w;
        if (textView != null) {
            this.f10368a.addView(textView);
            this.f10409w.setVisibility(0);
        }
    }

    private void j0() {
        if (this.f10399r != null) {
            EditText editText = this.f10376f;
            k0(editText == null ? null : editText.getText());
        }
    }

    private void k() {
        if (this.f10376f == null || this.R != 1) {
            return;
        }
        if (i4.c.k(getContext())) {
            EditText editText = this.f10376f;
            m0.z0(editText, m0.A(editText), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_top), m0.z(this.f10376f), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (i4.c.j(getContext())) {
            EditText editText2 = this.f10376f;
            m0.z0(editText2, m0.A(editText2), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_top), m0.z(this.f10376f), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private static void l0(Context context, TextView textView, int i10, int i11, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? R$string.character_counter_overflowed_content_description : R$string.character_counter_content_description, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    private void m() {
        com.google.android.material.shape.i iVar = this.I;
        if (iVar == null) {
            return;
        }
        com.google.android.material.shape.n shapeAppearanceModel = iVar.getShapeAppearanceModel();
        com.google.android.material.shape.n nVar = this.O;
        if (shapeAppearanceModel != nVar) {
            this.I.setShapeAppearanceModel(nVar);
        }
        if (w()) {
            this.I.setStroke(this.T, this.W);
        }
        int iQ = q();
        this.f10369a0 = iQ;
        this.I.setFillColor(ColorStateList.valueOf(iQ));
        n();
        r0();
    }

    private void m0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f10399r;
        if (textView != null) {
            c0(textView, this.f10395p ? this.f10401s : this.f10403t);
            if (!this.f10395p && (colorStateList2 = this.B) != null) {
                this.f10399r.setTextColor(colorStateList2);
            }
            if (!this.f10395p || (colorStateList = this.C) == null) {
                return;
            }
            this.f10399r.setTextColor(colorStateList);
        }
    }

    private void n() {
        if (this.M == null || this.N == null) {
            return;
        }
        if (x()) {
            this.M.setFillColor(this.f10376f.isFocused() ? ColorStateList.valueOf(this.f10392n0) : ColorStateList.valueOf(this.W));
            this.N.setFillColor(ColorStateList.valueOf(this.W));
        }
        invalidate();
    }

    private void n0() {
        ColorStateList colorStateList;
        ColorStateList colorStateListG = this.D;
        if (colorStateListG == null) {
            colorStateListG = b4.a.g(getContext(), R$attr.colorControlActivated);
        }
        EditText editText = this.f10376f;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = v.a.r(this.f10376f.getTextCursorDrawable()).mutate();
        if (Q() && (colorStateList = this.E) != null) {
            colorStateListG = colorStateList;
        }
        v.a.o(drawableMutate, colorStateListG);
    }

    private void o(RectF rectF) {
        float f10 = rectF.left;
        int i10 = this.Q;
        rectF.left = f10 - i10;
        rectF.right += i10;
    }

    private void p() {
        int i10 = this.R;
        if (i10 == 0) {
            this.I = null;
            this.M = null;
            this.N = null;
            return;
        }
        if (i10 == 1) {
            this.I = new com.google.android.material.shape.i(this.O);
            this.M = new com.google.android.material.shape.i();
            this.N = new com.google.android.material.shape.i();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(this.R + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.F || (this.I instanceof h)) {
                this.I = new com.google.android.material.shape.i(this.O);
            } else {
                this.I = h.v(this.O);
            }
            this.M = null;
            this.N = null;
        }
    }

    private int q() {
        return this.R == 1 ? b4.a.i(b4.a.e(this, R$attr.colorSurface, 0), this.f10369a0) : this.f10369a0;
    }

    private void q0() {
        m0.n0(this.f10376f, getEditTextBoxBackground());
    }

    private Rect r(Rect rect) {
        if (this.f10376f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f10373c0;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        rect2.bottom = rect.bottom;
        int i10 = this.R;
        if (i10 == 1) {
            rect2.left = I(rect.left, zIsLayoutRtl);
            rect2.top = rect.top + this.S;
            rect2.right = J(rect.right, zIsLayoutRtl);
            return rect2;
        }
        if (i10 != 2) {
            rect2.left = I(rect.left, zIsLayoutRtl);
            rect2.top = getPaddingTop();
            rect2.right = J(rect.right, zIsLayoutRtl);
            return rect2;
        }
        rect2.left = rect.left + this.f10376f.getPaddingLeft();
        rect2.top = rect.top - v();
        rect2.right = rect.right - this.f10376f.getPaddingRight();
        return rect2;
    }

    private int s(Rect rect, Rect rect2, float f10) {
        return S() ? (int) (rect2.top + f10) : rect.bottom - this.f10376f.getCompoundPaddingBottom();
    }

    private boolean s0() {
        int iMax;
        if (this.f10376f == null || this.f10376f.getMeasuredHeight() >= (iMax = Math.max(this.f10372c.getMeasuredHeight(), this.f10370b.getMeasuredHeight()))) {
            return false;
        }
        this.f10376f.setMinimumHeight(iMax);
        return true;
    }

    private void setEditText(EditText editText) {
        if (this.f10376f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f10376f = editText;
        int i10 = this.f10381i;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f10385k);
        }
        int i11 = this.f10383j;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f10387l);
        }
        this.L = false;
        V();
        setTextInputAccessibilityDelegate(new d(this));
        this.f10414y0.setTypefaces(this.f10376f.getTypeface());
        this.f10414y0.setExpandedTextSize(this.f10376f.getTextSize());
        this.f10414y0.setExpandedLetterSpacing(this.f10376f.getLetterSpacing());
        int gravity = this.f10376f.getGravity();
        this.f10414y0.setCollapsedTextGravity((gravity & (-113)) | 48);
        this.f10414y0.setExpandedTextGravity(gravity);
        this.f10410w0 = m0.x(editText);
        this.f10376f.addTextChangedListener(new a(editText));
        if (this.f10388l0 == null) {
            this.f10388l0 = this.f10376f.getHintTextColors();
        }
        if (this.F) {
            if (TextUtils.isEmpty(this.G)) {
                CharSequence hint = this.f10376f.getHint();
                this.f10379h = hint;
                setHint(hint);
                this.f10376f.setHint((CharSequence) null);
            }
            this.H = true;
        }
        n0();
        if (this.f10399r != null) {
            k0(this.f10376f.getText());
        }
        p0();
        this.f10389m.f();
        this.f10370b.bringToFront();
        this.f10372c.bringToFront();
        C();
        this.f10372c.x0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        v0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.G)) {
            return;
        }
        this.G = charSequence;
        this.f10414y0.setText(charSequence);
        if (this.f10412x0) {
            return;
        }
        W();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f10407v == z10) {
            return;
        }
        if (z10) {
            j();
        } else {
            a0();
            this.f10409w = null;
        }
        this.f10407v = z10;
    }

    private int t(Rect rect, float f10) {
        return S() ? (int) (rect.centerY() - (f10 / 2.0f)) : rect.top + this.f10376f.getCompoundPaddingTop();
    }

    private void t0() {
        if (this.R != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f10368a.getLayoutParams();
            int iV = v();
            if (iV != layoutParams.topMargin) {
                layoutParams.topMargin = iV;
                this.f10368a.requestLayout();
            }
        }
    }

    private Rect u(Rect rect) {
        if (this.f10376f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f10373c0;
        float expandedTextHeight = this.f10414y0.getExpandedTextHeight();
        rect2.left = rect.left + this.f10376f.getCompoundPaddingLeft();
        rect2.top = t(rect, expandedTextHeight);
        rect2.right = rect.right - this.f10376f.getCompoundPaddingRight();
        rect2.bottom = s(rect, rect2, expandedTextHeight);
        return rect2;
    }

    private int v() {
        float collapsedTextHeight;
        if (!this.F) {
            return 0;
        }
        int i10 = this.R;
        if (i10 == 0) {
            collapsedTextHeight = this.f10414y0.getCollapsedTextHeight();
        } else {
            if (i10 != 2) {
                return 0;
            }
            collapsedTextHeight = this.f10414y0.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    private void v0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f10376f;
        boolean z12 = false;
        boolean z13 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f10376f;
        if (editText2 != null && editText2.hasFocus()) {
            z12 = true;
        }
        ColorStateList colorStateList2 = this.f10388l0;
        if (colorStateList2 != null) {
            this.f10414y0.setCollapsedAndExpandedTextColor(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f10388l0;
            this.f10414y0.setCollapsedAndExpandedTextColor(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f10408v0) : this.f10408v0));
        } else if (d0()) {
            this.f10414y0.setCollapsedAndExpandedTextColor(this.f10389m.r());
        } else if (this.f10395p && (textView = this.f10399r) != null) {
            this.f10414y0.setCollapsedAndExpandedTextColor(textView.getTextColors());
        } else if (z12 && (colorStateList = this.f10390m0) != null) {
            this.f10414y0.setCollapsedTextColor(colorStateList);
        }
        if (z13 || !this.f10416z0 || (isEnabled() && z12)) {
            if (z11 || this.f10412x0) {
                z(z10);
                return;
            }
            return;
        }
        if (z11 || !this.f10412x0) {
            F(z10);
        }
    }

    private boolean w() {
        return this.R == 2 && x();
    }

    private void w0() {
        EditText editText;
        if (this.f10409w == null || (editText = this.f10376f) == null) {
            return;
        }
        this.f10409w.setGravity(editText.getGravity());
        this.f10409w.setPadding(this.f10376f.getCompoundPaddingLeft(), this.f10376f.getCompoundPaddingTop(), this.f10376f.getCompoundPaddingRight(), this.f10376f.getCompoundPaddingBottom());
    }

    private boolean x() {
        return this.T > -1 && this.W != 0;
    }

    private void x0() {
        EditText editText = this.f10376f;
        y0(editText == null ? null : editText.getText());
    }

    private void y() {
        if (B()) {
            ((h) this.I).y();
        }
    }

    public void y0(Editable editable) {
        if (this.f10397q.a(editable) != 0 || this.f10412x0) {
            L();
        } else {
            g0();
        }
    }

    private void z(boolean z10) {
        ValueAnimator valueAnimator = this.B0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.B0.cancel();
        }
        if (z10 && this.A0) {
            l(1.0f);
        } else {
            this.f10414y0.setExpansionFraction(1.0f);
        }
        this.f10412x0 = false;
        if (B()) {
            W();
        }
        x0();
        this.f10370b.l(false);
        this.f10372c.H(false);
    }

    private void z0(boolean z10, boolean z11) {
        int defaultColor = this.f10398q0.getDefaultColor();
        int colorForState = this.f10398q0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.f10398q0.getColorForState(new int[]{R.attr.state_activated, 16842910}, defaultColor);
        if (z10) {
            this.W = colorForState2;
        } else if (z11) {
            this.W = colorForState;
        } else {
            this.W = defaultColor;
        }
    }

    void A0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.I == null || this.R == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f10376f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f10376f) != null && editText.isHovered())) {
            z10 = true;
        }
        if (!isEnabled()) {
            this.W = this.f10408v0;
        } else if (d0()) {
            if (this.f10398q0 != null) {
                z0(z11, z10);
            } else {
                this.W = getErrorCurrentTextColors();
            }
        } else if (!this.f10395p || (textView = this.f10399r) == null) {
            if (z11) {
                this.W = this.f10396p0;
            } else if (z10) {
                this.W = this.f10394o0;
            } else {
                this.W = this.f10392n0;
            }
        } else if (this.f10398q0 != null) {
            z0(z11, z10);
        } else {
            this.W = textView.getCurrentTextColor();
        }
        n0();
        this.f10372c.I();
        Z();
        if (this.R == 2) {
            int i10 = this.T;
            if (z11 && isEnabled()) {
                this.T = this.V;
            } else {
                this.T = this.U;
            }
            if (this.T != i10) {
                X();
            }
        }
        if (this.R == 1) {
            if (!isEnabled()) {
                this.f10369a0 = this.f10402s0;
            } else if (z10 && !z11) {
                this.f10369a0 = this.f10406u0;
            } else if (z11) {
                this.f10369a0 = this.f10404t0;
            } else {
                this.f10369a0 = this.f10400r0;
            }
        }
        m();
    }

    public boolean M() {
        return this.f10372c.F();
    }

    public boolean N() {
        return this.f10389m.A();
    }

    public boolean O() {
        return this.f10389m.B();
    }

    final boolean P() {
        return this.f10412x0;
    }

    public boolean R() {
        return this.H;
    }

    public void Z() {
        this.f10370b.m();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f10368a.addView(view, layoutParams2);
        this.f10368a.setLayoutParams(layoutParams);
        t0();
        setEditText((EditText) view);
    }

    void c0(TextView textView, int i10) {
        try {
            androidx.core.widget.j.o(textView, i10);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        androidx.core.widget.j.o(textView, R$style.TextAppearance_AppCompat_Caption);
        textView.setTextColor(r.a.c(getContext(), R$color.design_error));
    }

    boolean d0() {
        return this.f10389m.l();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i10) {
        EditText editText = this.f10376f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f10379h != null) {
            boolean z10 = this.H;
            this.H = false;
            CharSequence hint = editText.getHint();
            this.f10376f.setHint(this.f10379h);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f10376f.setHint(hint);
                this.H = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        viewStructure.setChildCount(this.f10368a.getChildCount());
        for (int i11 = 0; i11 < this.f10368a.getChildCount(); i11++) {
            View childAt = this.f10368a.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f10376f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.D0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.D0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        E(canvas);
        D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.C0) {
            return;
        }
        this.C0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.f10414y0;
        boolean state = collapsingTextHelper != null ? collapsingTextHelper.setState(drawableState) : false;
        if (this.f10376f != null) {
            u0(m0.O(this) && isEnabled());
        }
        p0();
        A0();
        if (state) {
            invalidate();
        }
        this.C0 = false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f10376f;
        return editText != null ? editText.getBaseline() + getPaddingTop() + v() : super.getBaseline();
    }

    com.google.android.material.shape.i getBoxBackground() {
        int i10 = this.R;
        if (i10 == 1 || i10 == 2) {
            return this.I;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f10369a0;
    }

    public int getBoxBackgroundMode() {
        return this.R;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.S;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.O.j().a(this.f10374d0) : this.O.l().a(this.f10374d0);
    }

    public float getBoxCornerRadiusBottomStart() {
        return ViewUtils.isLayoutRtl(this) ? this.O.l().a(this.f10374d0) : this.O.j().a(this.f10374d0);
    }

    public float getBoxCornerRadiusTopEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.O.r().a(this.f10374d0) : this.O.t().a(this.f10374d0);
    }

    public float getBoxCornerRadiusTopStart() {
        return ViewUtils.isLayoutRtl(this) ? this.O.t().a(this.f10374d0) : this.O.r().a(this.f10374d0);
    }

    public int getBoxStrokeColor() {
        return this.f10396p0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f10398q0;
    }

    public int getBoxStrokeWidth() {
        return this.U;
    }

    public int getBoxStrokeWidthFocused() {
        return this.V;
    }

    public int getCounterMaxLength() {
        return this.f10393o;
    }

    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f10391n && this.f10395p && (textView = this.f10399r) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.C;
    }

    public ColorStateList getCounterTextColor() {
        return this.B;
    }

    public ColorStateList getCursorColor() {
        return this.D;
    }

    public ColorStateList getCursorErrorColor() {
        return this.E;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f10388l0;
    }

    public EditText getEditText() {
        return this.f10376f;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f10372c.l();
    }

    public Drawable getEndIconDrawable() {
        return this.f10372c.n();
    }

    public int getEndIconMinSize() {
        return this.f10372c.o();
    }

    public int getEndIconMode() {
        return this.f10372c.p();
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f10372c.q();
    }

    CheckableImageButton getEndIconView() {
        return this.f10372c.r();
    }

    public CharSequence getError() {
        if (this.f10389m.A()) {
            return this.f10389m.p();
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f10389m.n();
    }

    public CharSequence getErrorContentDescription() {
        return this.f10389m.o();
    }

    public int getErrorCurrentTextColors() {
        return this.f10389m.q();
    }

    public Drawable getErrorIconDrawable() {
        return this.f10372c.s();
    }

    public CharSequence getHelperText() {
        if (this.f10389m.B()) {
            return this.f10389m.s();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f10389m.u();
    }

    public CharSequence getHint() {
        if (this.F) {
            return this.G;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f10414y0.getCollapsedTextHeight();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f10414y0.getCurrentCollapsedTextColor();
    }

    public ColorStateList getHintTextColor() {
        return this.f10390m0;
    }

    public e getLengthCounter() {
        return this.f10397q;
    }

    public int getMaxEms() {
        return this.f10383j;
    }

    public int getMaxWidth() {
        return this.f10387l;
    }

    public int getMinEms() {
        return this.f10381i;
    }

    public int getMinWidth() {
        return this.f10385k;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f10372c.u();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f10372c.v();
    }

    public CharSequence getPlaceholderText() {
        if (this.f10407v) {
            return this.f10405u;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f10413y;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f10411x;
    }

    public CharSequence getPrefixText() {
        return this.f10370b.a();
    }

    public ColorStateList getPrefixTextColor() {
        return this.f10370b.b();
    }

    public TextView getPrefixTextView() {
        return this.f10370b.d();
    }

    public com.google.android.material.shape.n getShapeAppearanceModel() {
        return this.O;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f10370b.e();
    }

    public Drawable getStartIconDrawable() {
        return this.f10370b.f();
    }

    public int getStartIconMinSize() {
        return this.f10370b.g();
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f10370b.h();
    }

    public CharSequence getSuffixText() {
        return this.f10372c.w();
    }

    public ColorStateList getSuffixTextColor() {
        return this.f10372c.x();
    }

    public TextView getSuffixTextView() {
        return this.f10372c.z();
    }

    public Typeface getTypeface() {
        return this.f10375e0;
    }

    public void i(f fVar) {
        this.f10380h0.add(fVar);
        if (this.f10376f != null) {
            fVar.a(this);
        }
    }

    void k0(Editable editable) {
        int iA = this.f10397q.a(editable);
        boolean z10 = this.f10395p;
        int i10 = this.f10393o;
        if (i10 == -1) {
            this.f10399r.setText(String.valueOf(iA));
            this.f10399r.setContentDescription(null);
            this.f10395p = false;
        } else {
            this.f10395p = iA > i10;
            l0(getContext(), this.f10399r, iA, this.f10393o, this.f10395p);
            if (z10 != this.f10395p) {
                m0();
            }
            this.f10399r.setText(b0.a.c().j(getContext().getString(R$string.character_counter_pattern, Integer.valueOf(iA), Integer.valueOf(this.f10393o))));
        }
        if (this.f10376f == null || z10 == this.f10395p) {
            return;
        }
        u0(false);
        A0();
        p0();
    }

    void l(float f10) {
        if (this.f10414y0.getExpansionFraction() == f10) {
            return;
        }
        if (this.B0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.B0 = valueAnimator;
            valueAnimator.setInterpolator(g4.i.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, x3.a.f16369b));
            this.B0.setDuration(g4.i.f(getContext(), R$attr.motionDurationMedium4, 167));
            this.B0.addUpdateListener(new c());
        }
        this.B0.setFloatValues(this.f10414y0.getExpansionFraction(), f10);
        this.B0.start();
    }

    boolean o0() {
        boolean z10;
        if (this.f10376f == null) {
            return false;
        }
        boolean z11 = true;
        if (f0()) {
            int measuredWidth = this.f10370b.getMeasuredWidth() - this.f10376f.getPaddingLeft();
            if (this.f10377f0 == null || this.f10378g0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f10377f0 = colorDrawable;
                this.f10378g0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = androidx.core.widget.j.a(this.f10376f);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.f10377f0;
            if (drawable != drawable2) {
                androidx.core.widget.j.i(this.f10376f, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z10 = true;
            }
            z10 = false;
        } else {
            if (this.f10377f0 != null) {
                Drawable[] drawableArrA2 = androidx.core.widget.j.a(this.f10376f);
                androidx.core.widget.j.i(this.f10376f, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
                this.f10377f0 = null;
                z10 = true;
            }
            z10 = false;
        }
        if (e0()) {
            int measuredWidth2 = this.f10372c.z().getMeasuredWidth() - this.f10376f.getPaddingRight();
            CheckableImageButton checkableImageButtonK = this.f10372c.k();
            if (checkableImageButtonK != null) {
                measuredWidth2 = measuredWidth2 + checkableImageButtonK.getMeasuredWidth() + androidx.core.view.m.b((ViewGroup.MarginLayoutParams) checkableImageButtonK.getLayoutParams());
            }
            Drawable[] drawableArrA3 = androidx.core.widget.j.a(this.f10376f);
            Drawable drawable3 = this.f10382i0;
            if (drawable3 == null || this.f10384j0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f10382i0 = colorDrawable2;
                    this.f10384j0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.f10382i0;
                if (drawable4 != drawable5) {
                    this.f10386k0 = drawable4;
                    androidx.core.widget.j.i(this.f10376f, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f10384j0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                androidx.core.widget.j.i(this.f10376f, drawableArrA3[0], drawableArrA3[1], this.f10382i0, drawableArrA3[3]);
            }
        } else {
            if (this.f10382i0 == null) {
                return z10;
            }
            Drawable[] drawableArrA4 = androidx.core.widget.j.a(this.f10376f);
            if (drawableArrA4[2] == this.f10382i0) {
                androidx.core.widget.j.i(this.f10376f, drawableArrA4[0], drawableArrA4[1], this.f10386k0, drawableArrA4[3]);
            } else {
                z11 = z10;
            }
            this.f10382i0 = null;
        }
        return z11;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f10414y0.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f10372c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.E0 = false;
        boolean zS0 = s0();
        boolean zO0 = o0();
        if (zS0 || zO0) {
            this.f10376f.post(new Runnable() { // from class: com.google.android.material.textfield.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.f10546a.U();
                }
            });
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        EditText editText = this.f10376f;
        if (editText != null) {
            Rect rect = this.f10371b0;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            i0(rect);
            if (this.F) {
                this.f10414y0.setExpandedTextSize(this.f10376f.getTextSize());
                int gravity = this.f10376f.getGravity();
                this.f10414y0.setCollapsedTextGravity((gravity & (-113)) | 48);
                this.f10414y0.setExpandedTextGravity(gravity);
                this.f10414y0.setCollapsedBounds(r(rect));
                this.f10414y0.setExpandedBounds(u(rect));
                this.f10414y0.recalculate();
                if (!B() || this.f10412x0) {
                    return;
                }
                W();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.E0) {
            this.f10372c.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.E0 = true;
        }
        w0();
        this.f10372c.x0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f10417a);
        if (savedState.f10418b) {
            post(new b());
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z10 = i10 == 1;
        if (z10 != this.P) {
            float fA = this.O.r().a(this.f10374d0);
            float fA2 = this.O.t().a(this.f10374d0);
            com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.a().G(this.O.s()).L(this.O.q()).v(this.O.k()).A(this.O.i()).H(fA2).M(fA).w(this.O.l().a(this.f10374d0)).B(this.O.j().a(this.f10374d0)).m();
            this.P = z10;
            setShapeAppearanceModel(nVarM);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (d0()) {
            savedState.f10417a = getError();
        }
        savedState.f10418b = this.f10372c.E();
        return savedState;
    }

    void p0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f10376f;
        if (editText == null || this.R != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (androidx.appcompat.widget.u.a(background)) {
            background = background.mutate();
        }
        if (d0()) {
            background.setColorFilter(androidx.appcompat.widget.g.e(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f10395p && (textView = this.f10399r) != null) {
            background.setColorFilter(androidx.appcompat.widget.g.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            v.a.c(background);
            this.f10376f.refreshDrawableState();
        }
    }

    void r0() {
        EditText editText = this.f10376f;
        if (editText == null || this.I == null) {
            return;
        }
        if ((this.L || editText.getBackground() == null) && this.R != 0) {
            q0();
            this.L = true;
        }
    }

    public void setBoxBackgroundColor(int i10) {
        if (this.f10369a0 != i10) {
            this.f10369a0 = i10;
            this.f10400r0 = i10;
            this.f10404t0 = i10;
            this.f10406u0 = i10;
            m();
        }
    }

    public void setBoxBackgroundColorResource(int i10) {
        setBoxBackgroundColor(r.a.c(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f10400r0 = defaultColor;
        this.f10369a0 = defaultColor;
        this.f10402s0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f10404t0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.f10406u0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        m();
    }

    public void setBoxBackgroundMode(int i10) {
        if (i10 == this.R) {
            return;
        }
        this.R = i10;
        if (this.f10376f != null) {
            V();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.S = i10;
    }

    public void setBoxCornerFamily(int i10) {
        this.O = this.O.v().F(i10, this.O.r()).K(i10, this.O.t()).u(i10, this.O.j()).z(i10, this.O.l()).m();
        m();
    }

    public void setBoxStrokeColor(int i10) {
        if (this.f10396p0 != i10) {
            this.f10396p0 = i10;
            A0();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f10392n0 = colorStateList.getDefaultColor();
            this.f10408v0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f10394o0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.f10396p0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.f10396p0 != colorStateList.getDefaultColor()) {
            this.f10396p0 = colorStateList.getDefaultColor();
        }
        A0();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f10398q0 != colorStateList) {
            this.f10398q0 = colorStateList;
            A0();
        }
    }

    public void setBoxStrokeWidth(int i10) {
        this.U = i10;
        A0();
    }

    public void setBoxStrokeWidthFocused(int i10) {
        this.V = i10;
        A0();
    }

    public void setBoxStrokeWidthFocusedResource(int i10) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(int i10) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f10391n != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f10399r = appCompatTextView;
                appCompatTextView.setId(R$id.textinput_counter);
                Typeface typeface = this.f10375e0;
                if (typeface != null) {
                    this.f10399r.setTypeface(typeface);
                }
                this.f10399r.setMaxLines(1);
                this.f10389m.e(this.f10399r, 2);
                androidx.core.view.m.d((ViewGroup.MarginLayoutParams) this.f10399r.getLayoutParams(), getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_counter_margin_start));
                m0();
                j0();
            } else {
                this.f10389m.C(this.f10399r, 2);
                this.f10399r = null;
            }
            this.f10391n = z10;
        }
    }

    public void setCounterMaxLength(int i10) {
        if (this.f10393o != i10) {
            if (i10 > 0) {
                this.f10393o = i10;
            } else {
                this.f10393o = -1;
            }
            if (this.f10391n) {
                j0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f10401s != i10) {
            this.f10401s = i10;
            m0();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            m0();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.f10403t != i10) {
            this.f10403t = i10;
            m0();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            m0();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            n0();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            if (Q()) {
                n0();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f10388l0 = colorStateList;
        this.f10390m0 = colorStateList;
        if (this.f10376f != null) {
            u0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        Y(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f10372c.N(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f10372c.O(z10);
    }

    public void setEndIconContentDescription(int i10) {
        this.f10372c.P(i10);
    }

    public void setEndIconDrawable(int i10) {
        this.f10372c.R(i10);
    }

    public void setEndIconMinSize(int i10) {
        this.f10372c.T(i10);
    }

    public void setEndIconMode(int i10) {
        this.f10372c.U(i10);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        this.f10372c.V(onClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f10372c.W(onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        this.f10372c.X(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        this.f10372c.Y(colorStateList);
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        this.f10372c.Z(mode);
    }

    public void setEndIconVisible(boolean z10) {
        this.f10372c.a0(z10);
    }

    public void setError(CharSequence charSequence) {
        if (!this.f10389m.A()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f10389m.w();
        } else {
            this.f10389m.Q(charSequence);
        }
    }

    public void setErrorAccessibilityLiveRegion(int i10) {
        this.f10389m.E(i10);
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.f10389m.F(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f10389m.G(z10);
    }

    public void setErrorIconDrawable(int i10) {
        this.f10372c.b0(i10);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        this.f10372c.d0(onClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f10372c.e0(onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f10372c.f0(colorStateList);
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        this.f10372c.g0(mode);
    }

    public void setErrorTextAppearance(int i10) {
        this.f10389m.H(i10);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f10389m.I(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.f10416z0 != z10) {
            this.f10416z0 = z10;
            u0(false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (O()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!O()) {
                setHelperTextEnabled(true);
            }
            this.f10389m.R(charSequence);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f10389m.L(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f10389m.K(z10);
    }

    public void setHelperTextTextAppearance(int i10) {
        this.f10389m.J(i10);
    }

    public void setHint(CharSequence charSequence) {
        if (this.F) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(ConfigPackage.FRAME_SIZE_3);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.A0 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.F) {
            this.F = z10;
            if (z10) {
                CharSequence hint = this.f10376f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.G)) {
                        setHint(hint);
                    }
                    this.f10376f.setHint((CharSequence) null);
                }
                this.H = true;
            } else {
                this.H = false;
                if (!TextUtils.isEmpty(this.G) && TextUtils.isEmpty(this.f10376f.getHint())) {
                    this.f10376f.setHint(this.G);
                }
                setHintInternal(null);
            }
            if (this.f10376f != null) {
                t0();
            }
        }
    }

    public void setHintTextAppearance(int i10) {
        this.f10414y0.setCollapsedTextAppearance(i10);
        this.f10390m0 = this.f10414y0.getCollapsedTextColor();
        if (this.f10376f != null) {
            u0(false);
            t0();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f10390m0 != colorStateList) {
            if (this.f10388l0 == null) {
                this.f10414y0.setCollapsedTextColor(colorStateList);
            }
            this.f10390m0 = colorStateList;
            if (this.f10376f != null) {
                u0(false);
            }
        }
    }

    public void setLengthCounter(e eVar) {
        this.f10397q = eVar;
    }

    public void setMaxEms(int i10) {
        this.f10383j = i10;
        EditText editText = this.f10376f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(int i10) {
        this.f10387l = i10;
        EditText editText = this.f10376f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f10381i = i10;
        EditText editText = this.f10376f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(int i10) {
        this.f10385k = i10;
        EditText editText = this.f10376f;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i10) {
        this.f10372c.i0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i10) {
        this.f10372c.k0(i10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        this.f10372c.m0(z10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.f10372c.n0(colorStateList);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f10372c.o0(mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f10409w == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f10409w = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_placeholder);
            m0.t0(this.f10409w, 2);
            androidx.transition.c cVarA = A();
            this.f10415z = cVarA;
            cVarA.setStartDelay(67L);
            this.A = A();
            setPlaceholderTextAppearance(this.f10413y);
            setPlaceholderTextColor(this.f10411x);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f10407v) {
                setPlaceholderTextEnabled(true);
            }
            this.f10405u = charSequence;
        }
        x0();
    }

    public void setPlaceholderTextAppearance(int i10) {
        this.f10413y = i10;
        TextView textView = this.f10409w;
        if (textView != null) {
            androidx.core.widget.j.o(textView, i10);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f10411x != colorStateList) {
            this.f10411x = colorStateList;
            TextView textView = this.f10409w;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f10370b.n(charSequence);
    }

    public void setPrefixTextAppearance(int i10) {
        this.f10370b.o(i10);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f10370b.p(colorStateList);
    }

    public void setShapeAppearanceModel(com.google.android.material.shape.n nVar) {
        com.google.android.material.shape.i iVar = this.I;
        if (iVar == null || iVar.getShapeAppearanceModel() == nVar) {
            return;
        }
        this.O = nVar;
        m();
    }

    public void setStartIconCheckable(boolean z10) {
        this.f10370b.q(z10);
    }

    public void setStartIconContentDescription(int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconDrawable(int i10) {
        setStartIconDrawable(i10 != 0 ? e.a.b(getContext(), i10) : null);
    }

    public void setStartIconMinSize(int i10) {
        this.f10370b.t(i10);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        this.f10370b.u(onClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f10370b.v(onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        this.f10370b.w(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        this.f10370b.x(colorStateList);
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        this.f10370b.y(mode);
    }

    public void setStartIconVisible(boolean z10) {
        this.f10370b.z(z10);
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f10372c.p0(charSequence);
    }

    public void setSuffixTextAppearance(int i10) {
        this.f10372c.q0(i10);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f10372c.r0(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(d dVar) {
        EditText editText = this.f10376f;
        if (editText != null) {
            m0.j0(editText, dVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f10375e0) {
            this.f10375e0 = typeface;
            this.f10414y0.setTypefaces(typeface);
            this.f10389m.N(typeface);
            TextView textView = this.f10399r;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void u0(boolean z10) {
        v0(z10, false);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.textInputStyle);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        this.f10372c.Q(charSequence);
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f10372c.S(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f10372c.c0(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f10372c.j0(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f10372c.l0(drawable);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        this.f10370b.r(charSequence);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f10370b.s(drawable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(Context context, AttributeSet attributeSet, int i10) {
        int i11 = F0;
        super(m4.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f10381i = -1;
        this.f10383j = -1;
        this.f10385k = -1;
        this.f10387l = -1;
        this.f10389m = new u(this);
        this.f10397q = new e() { // from class: com.google.android.material.textfield.a0
            @Override // com.google.android.material.textfield.TextInputLayout.e
            public final int a(Editable editable) {
                return TextInputLayout.T(editable);
            }
        };
        this.f10371b0 = new Rect();
        this.f10373c0 = new Rect();
        this.f10374d0 = new RectF();
        this.f10380h0 = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.f10414y0 = collapsingTextHelper;
        this.E0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f10368a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = x3.a.f16368a;
        collapsingTextHelper.setTextSizeInterpolator(timeInterpolator);
        collapsingTextHelper.setPositionInterpolator(timeInterpolator);
        collapsingTextHelper.setCollapsedTextGravity(8388659);
        h0 h0VarObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.TextInputLayout, i10, i11, R$styleable.TextInputLayout_counterTextAppearance, R$styleable.TextInputLayout_counterOverflowTextAppearance, R$styleable.TextInputLayout_errorTextAppearance, R$styleable.TextInputLayout_helperTextTextAppearance, R$styleable.TextInputLayout_hintTextAppearance);
        y yVar = new y(this, h0VarObtainTintedStyledAttributes);
        this.f10370b = yVar;
        this.F = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_hintEnabled, true);
        setHint(h0VarObtainTintedStyledAttributes.p(R$styleable.TextInputLayout_android_hint));
        this.A0 = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f10416z0 = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_expandedHintEnabled, true);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_android_minEms)) {
            setMinEms(h0VarObtainTintedStyledAttributes.k(R$styleable.TextInputLayout_android_minEms, -1));
        } else if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_android_minWidth)) {
            setMinWidth(h0VarObtainTintedStyledAttributes.f(R$styleable.TextInputLayout_android_minWidth, -1));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_android_maxEms)) {
            setMaxEms(h0VarObtainTintedStyledAttributes.k(R$styleable.TextInputLayout_android_maxEms, -1));
        } else if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_android_maxWidth)) {
            setMaxWidth(h0VarObtainTintedStyledAttributes.f(R$styleable.TextInputLayout_android_maxWidth, -1));
        }
        this.O = com.google.android.material.shape.n.e(context2, attributeSet, i10, i11).m();
        this.Q = context2.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_label_cutout_padding);
        this.S = h0VarObtainTintedStyledAttributes.e(R$styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.U = h0VarObtainTintedStyledAttributes.f(R$styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_default));
        this.V = h0VarObtainTintedStyledAttributes.f(R$styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_focused));
        this.T = this.U;
        float fD = h0VarObtainTintedStyledAttributes.d(R$styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = h0VarObtainTintedStyledAttributes.d(R$styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = h0VarObtainTintedStyledAttributes.d(R$styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = h0VarObtainTintedStyledAttributes.d(R$styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        n.b bVarV = this.O.v();
        if (fD >= 0.0f) {
            bVarV.H(fD);
        }
        if (fD2 >= 0.0f) {
            bVarV.M(fD2);
        }
        if (fD3 >= 0.0f) {
            bVarV.B(fD3);
        }
        if (fD4 >= 0.0f) {
            bVarV.w(fD4);
        }
        this.O = bVarV.m();
        ColorStateList colorStateListB = i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.f10400r0 = defaultColor;
            this.f10369a0 = defaultColor;
            if (colorStateListB.isStateful()) {
                this.f10402s0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.f10404t0 = colorStateListB.getColorForState(new int[]{16842908, 16842910}, -1);
                this.f10406u0 = colorStateListB.getColorForState(new int[]{16843623, 16842910}, -1);
            } else {
                this.f10404t0 = this.f10400r0;
                ColorStateList colorStateListA = e.a.a(context2, R$color.mtrl_filled_background_color);
                this.f10402s0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.f10406u0 = colorStateListA.getColorForState(new int[]{16843623}, -1);
            }
        } else {
            this.f10369a0 = 0;
            this.f10400r0 = 0;
            this.f10402s0 = 0;
            this.f10404t0 = 0;
            this.f10406u0 = 0;
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateListC = h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_android_textColorHint);
            this.f10390m0 = colorStateListC;
            this.f10388l0 = colorStateListC;
        }
        ColorStateList colorStateListB2 = i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.TextInputLayout_boxStrokeColor);
        this.f10396p0 = h0VarObtainTintedStyledAttributes.b(R$styleable.TextInputLayout_boxStrokeColor, 0);
        this.f10392n0 = r.a.c(context2, R$color.mtrl_textinput_default_box_stroke_color);
        this.f10408v0 = r.a.c(context2, R$color.mtrl_textinput_disabled_color);
        this.f10394o0 = r.a.c(context2, R$color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(i4.c.b(context2, h0VarObtainTintedStyledAttributes, R$styleable.TextInputLayout_boxStrokeErrorColor));
        }
        if (h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.D = h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_cursorColor);
        this.E = h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_cursorErrorColor);
        int iN = h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_errorTextAppearance, 0);
        CharSequence charSequenceP = h0VarObtainTintedStyledAttributes.p(R$styleable.TextInputLayout_errorContentDescription);
        int iK = h0VarObtainTintedStyledAttributes.k(R$styleable.TextInputLayout_errorAccessibilityLiveRegion, 1);
        boolean zA = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_errorEnabled, false);
        int iN2 = h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean zA2 = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceP2 = h0VarObtainTintedStyledAttributes.p(R$styleable.TextInputLayout_helperText);
        int iN3 = h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceP3 = h0VarObtainTintedStyledAttributes.p(R$styleable.TextInputLayout_placeholderText);
        boolean zA3 = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(h0VarObtainTintedStyledAttributes.k(R$styleable.TextInputLayout_counterMaxLength, -1));
        this.f10403t = h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_counterTextAppearance, 0);
        this.f10401s = h0VarObtainTintedStyledAttributes.n(R$styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        setBoxBackgroundMode(h0VarObtainTintedStyledAttributes.k(R$styleable.TextInputLayout_boxBackgroundMode, 0));
        setErrorContentDescription(charSequenceP);
        setErrorAccessibilityLiveRegion(iK);
        setCounterOverflowTextAppearance(this.f10401s);
        setHelperTextTextAppearance(iN2);
        setErrorTextAppearance(iN);
        setCounterTextAppearance(this.f10403t);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_errorTextColor)) {
            setErrorTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_errorTextColor));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_helperTextTextColor));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_hintTextColor)) {
            setHintTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_hintTextColor));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_counterTextColor)) {
            setCounterTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_counterTextColor));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_counterOverflowTextColor));
        }
        if (h0VarObtainTintedStyledAttributes.s(R$styleable.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(h0VarObtainTintedStyledAttributes.c(R$styleable.TextInputLayout_placeholderTextColor));
        }
        r rVar = new r(this, h0VarObtainTintedStyledAttributes);
        this.f10372c = rVar;
        boolean zA4 = h0VarObtainTintedStyledAttributes.a(R$styleable.TextInputLayout_android_enabled, true);
        h0VarObtainTintedStyledAttributes.y();
        m0.t0(this, 2);
        m0.v0(this, 1);
        frameLayout.addView(yVar);
        frameLayout.addView(rVar);
        addView(frameLayout);
        setEnabled(zA4);
        setHelperTextEnabled(zA2);
        setErrorEnabled(zA);
        setCounterEnabled(zA3);
        setHelperText(charSequenceP2);
    }

    public void setHint(int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }
}
