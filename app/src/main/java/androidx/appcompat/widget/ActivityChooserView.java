package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;

/* JADX INFO: loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final f f631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f633c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Drawable f634f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final FrameLayout f635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ImageView f636i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final FrameLayout f637j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ImageView f638k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f639l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    androidx.core.view.b f640m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final DataSetObserver f641n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f642o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ListPopupWindow f643p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    PopupWindow.OnDismissListener f644q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f646s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f647t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f648u;

    public static class InnerLayout extends LinearLayout {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int[] f649a = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            h0 h0VarV = h0.v(context, attributeSet, f649a);
            setBackgroundDrawable(h0VarV.g(0));
            h0VarV.y();
        }
    }

    class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f631a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f631a.notifyDataSetInvalidated();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.b()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                androidx.core.view.b bVar = ActivityChooserView.this.f640m;
                if (bVar != null) {
                    bVar.subUiVisibilityChanged(true);
                }
            }
        }
    }

    class c extends View.AccessibilityDelegate {
        c() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            d0.h.M0(accessibilityNodeInfo).e0(true);
        }
    }

    class d extends x {
        d(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.x
        public ShowableListMenu getPopup() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.x
        protected boolean onForwardingStarted() {
            ActivityChooserView.this.c();
            return true;
        }

        @Override // androidx.appcompat.widget.x
        protected boolean onForwardingStopped() {
            ActivityChooserView.this.a();
            return true;
        }
    }

    class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.e();
        }
    }

    private class f extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f655a = 4;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f657c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f658f;

        f() {
        }

        public int a() {
            throw null;
        }

        public androidx.appcompat.widget.c b() {
            return null;
        }

        public ResolveInfo c() {
            throw null;
        }

        public int d() {
            throw null;
        }

        public boolean e() {
            return this.f656b;
        }

        public void f(androidx.appcompat.widget.c cVar) {
            ActivityChooserView.this.f631a.b();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            throw null;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (this.f656b) {
                throw null;
            }
            throw null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            return (this.f658f && i10 == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View viewInflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
                viewInflate.setId(1);
                ((TextView) viewInflate.findViewById(R$id.title)).setText(ActivityChooserView.this.getContext().getString(R$string.abc_activity_chooser_view_see_all));
                return viewInflate;
            }
            if (view == null || view.getId() != R$id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(R$id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i10);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(R$id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f656b && i10 == 0 && this.f657c) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    private class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        g() {
        }

        private void a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f644q;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f637j) {
                activityChooserView.a();
                ActivityChooserView.this.f631a.c();
                ActivityChooserView.this.f631a.b();
                throw null;
            }
            if (view != activityChooserView.f635h) {
                throw new IllegalArgumentException();
            }
            activityChooserView.f645r = false;
            activityChooserView.d(activityChooserView.f646s);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            androidx.core.view.b bVar = ActivityChooserView.this.f640m;
            if (bVar != null) {
                bVar.subUiVisibilityChanged(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            int itemViewType = ((f) adapterView.getAdapter()).getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.d(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.a();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (!activityChooserView.f645r) {
                activityChooserView.f631a.e();
                ActivityChooserView.this.f631a.b();
                throw null;
            }
            if (i10 <= 0) {
                return;
            }
            activityChooserView.f631a.b();
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f637j) {
                throw new IllegalArgumentException();
            }
            if (activityChooserView.f631a.getCount() > 0) {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f645r = true;
                activityChooserView2.d(activityChooserView2.f646s);
            }
            return true;
        }
    }

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public boolean a() {
        if (!b()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f642o);
        return true;
    }

    public boolean b() {
        return getListPopupWindow().isShowing();
    }

    public boolean c() {
        if (b() || !this.f647t) {
            return false;
        }
        this.f645r = false;
        d(this.f646s);
        return true;
    }

    void d(int i10) {
        this.f631a.b();
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    void e() {
        if (this.f631a.getCount() > 0) {
            this.f635h.setEnabled(true);
        } else {
            this.f635h.setEnabled(false);
        }
        int iA = this.f631a.a();
        int iD = this.f631a.d();
        if (iA == 1 || (iA > 1 && iD > 0)) {
            this.f637j.setVisibility(0);
            ResolveInfo resolveInfoC = this.f631a.c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f638k.setImageDrawable(resolveInfoC.loadIcon(packageManager));
            if (this.f648u != 0) {
                this.f637j.setContentDescription(getContext().getString(this.f648u, resolveInfoC.loadLabel(packageManager)));
            }
        } else {
            this.f637j.setVisibility(8);
        }
        if (this.f637j.getVisibility() == 0) {
            this.f633c.setBackgroundDrawable(this.f634f);
        } else {
            this.f633c.setBackgroundDrawable(null);
        }
    }

    public androidx.appcompat.widget.c getDataModel() {
        this.f631a.b();
        return null;
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f643p == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f643p = listPopupWindow;
            listPopupWindow.k(this.f631a);
            this.f643p.y(this);
            this.f643p.F(true);
            this.f643p.H(this.f632b);
            this.f643p.G(this.f632b);
        }
        return this.f643p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f631a.b();
        this.f647t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f631a.b();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f642o);
        }
        if (b()) {
            a();
        }
        this.f647t = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.f633c.layout(0, 0, i12 - i10, i13 - i11);
        if (b()) {
            return;
        }
        a();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        View view = this.f633c;
        if (this.f637j.getVisibility() != 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i11), 1073741824);
        }
        measureChild(view, i10, i11);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(androidx.appcompat.widget.c cVar) {
        this.f631a.f(cVar);
        if (b()) {
            a();
            c();
        }
    }

    public void setDefaultActionButtonContentDescription(int i10) {
        this.f648u = i10;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i10) {
        this.f636i.setContentDescription(getContext().getString(i10));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f636i.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i10) {
        this.f646s = i10;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f644q = onDismissListener;
    }

    public void setProvider(androidx.core.view.b bVar) {
        this.f640m = bVar;
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f641n = new a();
        this.f642o = new b();
        this.f646s = 4;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActivityChooserView, i10, 0);
        androidx.core.view.m0.h0(this, context, R$styleable.ActivityChooserView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        this.f646s = typedArrayObtainStyledAttributes.getInt(R$styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R$layout.abc_activity_chooser_view, (ViewGroup) this, true);
        g gVar = new g();
        this.f632b = gVar;
        View viewFindViewById = findViewById(R$id.activity_chooser_view_content);
        this.f633c = viewFindViewById;
        this.f634f = viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.default_activity_button);
        this.f637j = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        this.f638k = (ImageView) frameLayout.findViewById(R$id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c());
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.f635h = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(R$id.image);
        this.f636i = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.f631a = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.f639l = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
    }
}
