package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.R$attr;
import androidx.appcompat.app.c;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatSpinner extends Spinner {

    /* JADX INFO: renamed from: l */
    private static final int[] f676l = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a */
    private final androidx.appcompat.widget.d f677a;

    /* JADX INFO: renamed from: b */
    private final Context f678b;

    /* JADX INFO: renamed from: c */
    private x f679c;

    /* JADX INFO: renamed from: f */
    private SpinnerAdapter f680f;

    /* JADX INFO: renamed from: h */
    private final boolean f681h;

    /* JADX INFO: renamed from: i */
    private g f682i;

    /* JADX INFO: renamed from: j */
    int f683j;

    /* JADX INFO: renamed from: k */
    final Rect f684k;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        boolean f685a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f685a ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f685a = parcel.readByte() != 0;
        }
    }

    class a extends x {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ f f686a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, f fVar) {
            super(view);
            this.f686a = fVar;
        }

        @Override // androidx.appcompat.widget.x
        public ShowableListMenu getPopup() {
            return this.f686a;
        }

        @Override // androidx.appcompat.widget.x
        public boolean onForwardingStarted() {
            if (AppCompatSpinner.this.getInternalPopup().isShowing()) {
                return true;
            }
            AppCompatSpinner.this.b();
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().isShowing()) {
                AppCompatSpinner.this.b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    private static final class c {
        static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
            if (c0.c.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                return;
            }
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }

    class d implements g, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a */
        androidx.appcompat.app.c f689a;

        /* JADX INFO: renamed from: b */
        private ListAdapter f690b;

        /* JADX INFO: renamed from: c */
        private CharSequence f691c;

        d() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public int b() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public Drawable c() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void d(CharSequence charSequence) {
            this.f691c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f689a;
            if (cVar != null) {
                cVar.dismiss();
                this.f689a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void e(int i10) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void f(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void g(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void h(int i10, int i11) {
            if (this.f690b == null) {
                return;
            }
            c.a aVar = new c.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.f691c;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            androidx.appcompat.app.c cVarCreate = aVar.setSingleChoiceItems(this.f690b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f689a = cVarCreate;
            ListView listViewG = cVarCreate.g();
            listViewG.setTextDirection(i10);
            listViewG.setTextAlignment(i11);
            this.f689a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public int i() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public boolean isShowing() {
            androidx.appcompat.app.c cVar = this.f689a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public CharSequence j() {
            return this.f691c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void k(ListAdapter listAdapter) {
            this.f690b = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            AppCompatSpinner.this.setSelection(i10);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i10, this.f690b.getItemId(i10));
            }
            dismiss();
        }
    }

    private static class e implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: a */
        private SpinnerAdapter f693a;

        /* JADX INFO: renamed from: b */
        private ListAdapter f694b;

        public e(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f693a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f694b = (ListAdapter) spinnerAdapter;
            }
            if (theme == null || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                return;
            }
            c.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f694b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i10) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f693a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f694b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f693a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class f extends ListPopupWindow implements g {
        private CharSequence J;
        ListAdapter K;
        private final Rect L;
        private int M;

        class a implements AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ AppCompatSpinner f695a;

            a(AppCompatSpinner appCompatSpinner) {
                this.f695a = appCompatSpinner;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                AppCompatSpinner.this.setSelection(i10);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    f fVar = f.this;
                    AppCompatSpinner.this.performItemClick(view, i10, fVar.K.getItemId(i10));
                }
                f.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                f fVar = f.this;
                if (!fVar.R(AppCompatSpinner.this)) {
                    f.this.dismiss();
                } else {
                    f.this.P();
                    f.super.show();
                }
            }
        }

        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f698a;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f698a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f698a);
                }
            }
        }

        public f(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.L = new Rect();
            y(AppCompatSpinner.this);
            F(true);
            L(0);
            H(new a(AppCompatSpinner.this));
        }

        void P() {
            int i10;
            Drawable drawableC = c();
            if (drawableC != null) {
                drawableC.getPadding(AppCompatSpinner.this.f684k);
                i10 = o0.b(AppCompatSpinner.this) ? AppCompatSpinner.this.f684k.right : -AppCompatSpinner.this.f684k.left;
            } else {
                Rect rect = AppCompatSpinner.this.f684k;
                rect.right = 0;
                rect.left = 0;
                i10 = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i11 = appCompatSpinner.f683j;
            if (i11 == -2) {
                int iA = appCompatSpinner.a((SpinnerAdapter) this.K, c());
                int i12 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f684k;
                int i13 = (i12 - rect2.left) - rect2.right;
                if (iA > i13) {
                    iA = i13;
                }
                A(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i11 == -1) {
                A((width - paddingLeft) - paddingRight);
            } else {
                A(i11);
            }
            g(o0.b(AppCompatSpinner.this) ? i10 + (((width - paddingRight) - u()) - Q()) : i10 + paddingLeft + Q());
        }

        public int Q() {
            return this.M;
        }

        boolean R(View view) {
            return view.isAttachedToWindow() && view.getGlobalVisibleRect(this.L);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void d(CharSequence charSequence) {
            this.J = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void f(int i10) {
            this.M = i10;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public void h(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean zIsShowing = isShowing();
            P();
            E(2);
            super.show();
            ListView listView = getListView();
            listView.setChoiceMode(1);
            listView.setTextDirection(i10);
            listView.setTextAlignment(i11);
            M(AppCompatSpinner.this.getSelectedItemPosition());
            if (zIsShowing || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            G(new c(bVar));
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.g
        public CharSequence j() {
            return this.J;
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.g
        public void k(ListAdapter listAdapter) {
            super.k(listAdapter);
            this.K = listAdapter;
        }
    }

    interface g {
        void a(Drawable drawable);

        int b();

        Drawable c();

        void d(CharSequence charSequence);

        void dismiss();

        void e(int i10);

        void f(int i10);

        void g(int i10);

        void h(int i10, int i11);

        int i();

        boolean isShowing();

        CharSequence j();

        void k(ListAdapter listAdapter);
    }

    public AppCompatSpinner(Context context) {
        this(context, null);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f684k);
        Rect rect = this.f684k;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        this.f682i.h(getTextDirection(), getTextAlignment());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        g gVar = this.f682i;
        return gVar != null ? gVar.b() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        g gVar = this.f682i;
        return gVar != null ? gVar.i() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f682i != null ? this.f683j : super.getDropDownWidth();
    }

    final g getInternalPopup() {
        return this.f682i;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        g gVar = this.f682i;
        return gVar != null ? gVar.c() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f678b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        g gVar = this.f682i;
        return gVar != null ? gVar.j() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        g gVar = this.f682i;
        if (gVar == null || !gVar.isShowing()) {
            return;
        }
        this.f682i.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f682i == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f685a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        g gVar = this.f682i;
        savedState.f685a = gVar != null && gVar.isShowing();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        x xVar = this.f679c;
        if (xVar == null || !xVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        g gVar = this.f682i;
        if (gVar == null) {
            return super.performClick();
        }
        if (gVar.isShowing()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            dVar.g(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        g gVar = this.f682i;
        if (gVar == null) {
            super.setDropDownHorizontalOffset(i10);
        } else {
            gVar.f(i10);
            this.f682i.g(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        g gVar = this.f682i;
        if (gVar != null) {
            gVar.e(i10);
        } else {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f682i != null) {
            this.f683j = i10;
        } else {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        g gVar = this.f682i;
        if (gVar != null) {
            gVar.a(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(e.a.b(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        g gVar = this.f682i;
        if (gVar != null) {
            gVar.d(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f677a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.spinnerStyle);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f681h) {
            this.f680f = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f682i != null) {
            Context context = this.f678b;
            if (context == null) {
                context = getContext();
            }
            this.f682i.k(new e(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, -1);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(context, attributeSet, i10, i11, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00db  */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, androidx.appcompat.widget.AppCompatSpinner] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AppCompatSpinner(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
