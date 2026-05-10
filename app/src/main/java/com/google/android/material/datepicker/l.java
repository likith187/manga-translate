package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.core.view.a1;
import androidx.core.view.m0;
import androidx.fragment.app.z;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes.dex */
public final class l<S> extends androidx.fragment.app.c {
    static final Object H = "CONFIRM_BUTTON_TAG";
    static final Object I = "CANCEL_BUTTON_TAG";
    static final Object J = "TOGGLE_BUTTON_TAG";
    private TextView A;
    private CheckableImageButton B;
    private com.google.android.material.shape.i C;
    private Button D;
    private boolean E;
    private CharSequence F;
    private CharSequence G;

    /* JADX INFO: renamed from: a */
    private final LinkedHashSet f9492a = new LinkedHashSet();

    /* JADX INFO: renamed from: b */
    private final LinkedHashSet f9493b = new LinkedHashSet();

    /* JADX INFO: renamed from: c */
    private final LinkedHashSet f9494c = new LinkedHashSet();

    /* JADX INFO: renamed from: f */
    private final LinkedHashSet f9495f = new LinkedHashSet();

    /* JADX INFO: renamed from: h */
    private int f9496h;

    /* JADX INFO: renamed from: i */
    private DateSelector f9497i;

    /* JADX INFO: renamed from: j */
    private q f9498j;

    /* JADX INFO: renamed from: k */
    private CalendarConstraints f9499k;

    /* JADX INFO: renamed from: l */
    private DayViewDecorator f9500l;

    /* JADX INFO: renamed from: m */
    private j f9501m;

    /* JADX INFO: renamed from: n */
    private int f9502n;

    /* JADX INFO: renamed from: o */
    private CharSequence f9503o;

    /* JADX INFO: renamed from: p */
    private boolean f9504p;

    /* JADX INFO: renamed from: q */
    private int f9505q;

    /* JADX INFO: renamed from: r */
    private int f9506r;

    /* JADX INFO: renamed from: s */
    private CharSequence f9507s;

    /* JADX INFO: renamed from: t */
    private int f9508t;

    /* JADX INFO: renamed from: u */
    private CharSequence f9509u;

    /* JADX INFO: renamed from: v */
    private int f9510v;

    /* JADX INFO: renamed from: w */
    private CharSequence f9511w;

    /* JADX INFO: renamed from: x */
    private int f9512x;

    /* JADX INFO: renamed from: y */
    private CharSequence f9513y;

    /* JADX INFO: renamed from: z */
    private TextView f9514z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = l.this.f9492a.iterator();
            if (!it.hasNext()) {
                l.this.dismiss();
            } else {
                androidx.appcompat.app.t.a(it.next());
                l.this.z();
                throw null;
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = l.this.f9493b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            l.this.dismiss();
        }
    }

    class c implements a0 {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f9517a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f9518b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f9519c;

        c(int i10, View view, int i11) {
            this.f9517a = i10;
            this.f9518b = view;
            this.f9519c = i11;
        }

        @Override // androidx.core.view.a0
        public a1 onApplyWindowInsets(View view, a1 a1Var) {
            int i10 = a1Var.f(a1.m.f()).f15808b;
            if (this.f9517a >= 0) {
                this.f9518b.getLayoutParams().height = this.f9517a + i10;
                View view2 = this.f9518b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.f9518b;
            view3.setPadding(view3.getPaddingLeft(), this.f9519c + i10, this.f9518b.getPaddingRight(), this.f9518b.getPaddingBottom());
            return a1Var;
        }
    }

    class d extends p {
        d() {
        }

        @Override // com.google.android.material.datepicker.p
        public void a() {
            l.this.D.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.p
        public void b(Object obj) {
            l lVar = l.this;
            lVar.I(lVar.x());
            l.this.D.setEnabled(l.this.u().N());
        }
    }

    private int A(Context context) {
        int i10 = this.f9496h;
        return i10 != 0 ? i10 : u().D(context);
    }

    private void B(Context context) {
        this.B.setTag(J);
        this.B.setImageDrawable(s(context));
        this.B.setChecked(this.f9505q != 0);
        m0.j0(this.B, null);
        K(this.B);
        this.B.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f9491a.F(view);
            }
        });
    }

    static boolean C(Context context) {
        return G(context, R.attr.windowFullscreen);
    }

    private boolean D() {
        return getResources().getConfiguration().orientation == 2;
    }

    static boolean E(Context context) {
        return G(context, R$attr.nestedScrollable);
    }

    public /* synthetic */ void F(View view) {
        this.D.setEnabled(u().N());
        this.B.toggle();
        this.f9505q = this.f9505q == 1 ? 0 : 1;
        K(this.B);
        H();
    }

    static boolean G(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i4.b.d(context, R$attr.materialCalendarStyle, j.class.getCanonicalName()), new int[]{i10});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    private void H() {
        int iA = A(requireContext());
        j jVarD = j.D(u(), iA, this.f9499k, this.f9500l);
        this.f9501m = jVarD;
        q qVarN = jVarD;
        if (this.f9505q == 1) {
            qVarN = m.n(u(), iA, this.f9499k);
        }
        this.f9498j = qVarN;
        J();
        I(x());
        z zVarN = getChildFragmentManager().n();
        zVarN.q(R$id.mtrl_calendar_frame, this.f9498j);
        zVarN.j();
        this.f9498j.l(new d());
    }

    private void J() {
        this.f9514z.setText((this.f9505q == 1 && D()) ? this.G : this.F);
    }

    private void K(CheckableImageButton checkableImageButton) {
        this.B.setContentDescription(this.f9505q == 1 ? checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R$string.mtrl_picker_toggle_to_text_input_mode));
    }

    private static Drawable s(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, e.a.b(context, R$drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], e.a.b(context, R$drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void t(Window window) {
        if (this.E) {
            return;
        }
        View viewFindViewById = requireView().findViewById(R$id.fullscreen_header);
        EdgeToEdgeUtils.applyEdgeToEdge(window, true, ViewUtils.getBackgroundColor(viewFindViewById), null);
        m0.y0(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.E = true;
    }

    public DateSelector u() {
        if (this.f9497i == null) {
            this.f9497i = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f9497i;
    }

    private static CharSequence v(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(String.valueOf(charSequence), "\n");
        return strArrSplit.length > 1 ? strArrSplit[0] : charSequence;
    }

    private String w() {
        return u().k(requireContext());
    }

    private static int y(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_content_padding);
        int i10 = Month.d().f9397f;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R$dimen.mtrl_calendar_day_width) * i10) + ((i10 - 1) * resources.getDimensionPixelOffset(R$dimen.mtrl_calendar_month_horizontal_padding));
    }

    void I(String str) {
        this.A.setContentDescription(w());
        this.A.setText(str);
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f9494c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f9496h = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f9497i = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f9499k = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f9500l = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.f9502n = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f9503o = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f9505q = bundle.getInt("INPUT_MODE_KEY");
        this.f9506r = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f9507s = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f9508t = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f9509u = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f9510v = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f9511w = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f9512x = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f9513y = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f9503o;
        if (text == null) {
            text = requireContext().getResources().getText(this.f9502n);
        }
        this.F = text;
        this.G = v(text);
    }

    @Override // androidx.fragment.app.c
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), A(requireContext()));
        Context context = dialog.getContext();
        this.f9504p = C(context);
        this.C = new com.google.android.material.shape.i(context, null, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.MaterialCalendar, R$attr.materialCalendarStyle, R$style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialCalendar_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.C.initializeElevationOverlay(context);
        this.C.setFillColor(ColorStateList.valueOf(color));
        this.C.setElevation(m0.r(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f9504p ? R$layout.mtrl_picker_fullscreen : R$layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        DayViewDecorator dayViewDecorator = this.f9500l;
        if (dayViewDecorator != null) {
            dayViewDecorator.h(context);
        }
        if (this.f9504p) {
            viewInflate.findViewById(R$id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(y(context), -2));
        } else {
            viewInflate.findViewById(R$id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(y(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R$id.mtrl_picker_header_selection_text);
        this.A = textView;
        m0.l0(textView, 1);
        this.B = (CheckableImageButton) viewInflate.findViewById(R$id.mtrl_picker_header_toggle);
        this.f9514z = (TextView) viewInflate.findViewById(R$id.mtrl_picker_title_text);
        B(context);
        this.D = (Button) viewInflate.findViewById(R$id.confirm_button);
        if (u().N()) {
            this.D.setEnabled(true);
        } else {
            this.D.setEnabled(false);
        }
        this.D.setTag(H);
        CharSequence charSequence = this.f9507s;
        if (charSequence != null) {
            this.D.setText(charSequence);
        } else {
            int i10 = this.f9506r;
            if (i10 != 0) {
                this.D.setText(i10);
            }
        }
        CharSequence charSequence2 = this.f9509u;
        if (charSequence2 != null) {
            this.D.setContentDescription(charSequence2);
        } else if (this.f9508t != 0) {
            this.D.setContentDescription(getContext().getResources().getText(this.f9508t));
        }
        this.D.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R$id.cancel_button);
        button.setTag(I);
        CharSequence charSequence3 = this.f9511w;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i11 = this.f9510v;
            if (i11 != 0) {
                button.setText(i11);
            }
        }
        CharSequence charSequence4 = this.f9513y;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.f9512x != 0) {
            button.setContentDescription(getContext().getResources().getText(this.f9512x));
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f9495f.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f9496h);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f9497i);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.f9499k);
        j jVar = this.f9501m;
        Month monthY = jVar == null ? null : jVar.y();
        if (monthY != null) {
            bVar.b(monthY.f9399i);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.f9500l);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f9502n);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f9503o);
        bundle.putInt("INPUT_MODE_KEY", this.f9505q);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f9506r);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f9507s);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f9508t);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f9509u);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f9510v);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f9511w);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f9512x);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f9513y);
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f9504p) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.C);
            t(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.C, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new c4.a(requireDialog(), rect));
        }
        H();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStop() {
        this.f9498j.m();
        super.onStop();
    }

    public String x() {
        return u().B(getContext());
    }

    public final Object z() {
        return u().a0();
    }
}
