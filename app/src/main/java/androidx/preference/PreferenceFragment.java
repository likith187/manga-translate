package androidx.preference;

import android.R;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.DialogPreference;
import androidx.preference.j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class PreferenceFragment extends Fragment implements j.c, j.a, j.b, DialogPreference.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f2908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    RecyclerView f2909c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f2910f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2911h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f2912i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Runnable f2914k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f2907a = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2913j = R$layout.preference_list_fragment;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Handler f2915l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f2916m = new b();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            PreferenceFragment.this.a();
        }
    }

    class b implements Runnable {
        b() {
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = PreferenceFragment.this.f2909c;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    private class c extends RecyclerView.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f2919a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2920b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f2921c = true;

        c() {
        }

        private boolean g(View view, RecyclerView recyclerView) {
            RecyclerView.d0 childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z10 = false;
            if (!(childViewHolder instanceof l) || !((l) childViewHolder).d()) {
                return false;
            }
            boolean z11 = this.f2921c;
            int iIndexOfChild = recyclerView.indexOfChild(view);
            if (iIndexOfChild >= recyclerView.getChildCount() - 1) {
                return z11;
            }
            RecyclerView.d0 childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(iIndexOfChild + 1));
            if ((childViewHolder2 instanceof l) && ((l) childViewHolder2).c()) {
                z10 = true;
            }
            return z10;
        }

        public void d(boolean z10) {
            this.f2921c = z10;
        }

        public void e(Drawable drawable) {
            if (drawable != null) {
                this.f2920b = drawable.getIntrinsicHeight();
            } else {
                this.f2920b = 0;
            }
            this.f2919a = drawable;
            PreferenceFragment.this.f2909c.invalidateItemDecorations();
        }

        public void f(int i10) {
            this.f2920b = i10;
            PreferenceFragment.this.f2909c.invalidateItemDecorations();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            if (g(view, recyclerView)) {
                rect.bottom = this.f2920b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            if (this.f2919a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (g(childAt, recyclerView)) {
                    int y10 = ((int) childAt.getY()) + childAt.getHeight();
                    this.f2919a.setBounds(0, y10, width, this.f2920b + y10);
                    this.f2919a.draw(canvas);
                }
            }
        }
    }

    private void m() {
        PreferenceScreen preferenceScreenD = d();
        if (preferenceScreenD != null) {
            preferenceScreenD.onDetached();
        }
        j();
    }

    void a() {
        PreferenceScreen preferenceScreenD = d();
        if (preferenceScreenD != null) {
            c().setAdapter(f(preferenceScreenD));
            preferenceScreenD.onAttached();
        }
        e();
    }

    public Fragment b() {
        return null;
    }

    public final RecyclerView c() {
        return this.f2909c;
    }

    public PreferenceScreen d() {
        return this.f2908b.i();
    }

    protected void e() {
    }

    protected RecyclerView.h f(PreferenceScreen preferenceScreen) {
        return new h(preferenceScreen);
    }

    @Override // androidx.preference.DialogPreference.a
    public Preference findPreference(CharSequence charSequence) {
        j jVar = this.f2908b;
        if (jVar == null) {
            return null;
        }
        return jVar.a(charSequence);
    }

    public RecyclerView.p g() {
        return new LinearLayoutManager(getActivity());
    }

    public abstract void h(Bundle bundle, String str);

    public RecyclerView i(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (this.f2912i.getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R$id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R$layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(g());
        recyclerView2.setAccessibilityDelegateCompat(new k(recyclerView2));
        return recyclerView2;
    }

    protected void j() {
    }

    public void k(Drawable drawable) {
        this.f2907a.e(drawable);
    }

    public void l(int i10) {
        this.f2907a.f(i10);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R$attr.preferenceTheme, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = R$style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i10);
        this.f2912i = contextThemeWrapper;
        j jVar = new j(contextThemeWrapper);
        this.f2908b = jVar;
        jVar.n(this);
        h(bundle, getArguments() != null ? getArguments().getString(g.ARG_PREFERENCE_ROOT) : null);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context context = this.f2912i;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.PreferenceFragment, t.k.a(context, R$attr.preferenceFragmentStyle, R.attr.preferenceFragmentStyle), 0);
        this.f2913j = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PreferenceFragment_android_layout, this.f2913j);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.PreferenceFragment_android_divider);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceFragment_android_dividerHeight, -1);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PreferenceFragment_allowDividerAfterLastItem, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(this.f2912i);
        View viewInflate = layoutInflaterCloneInContext.inflate(this.f2913j, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        RecyclerView recyclerViewI = i(layoutInflaterCloneInContext, viewGroup2, bundle);
        if (recyclerViewI == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.f2909c = recyclerViewI;
        recyclerViewI.addItemDecoration(this.f2907a);
        k(drawable);
        if (dimensionPixelSize != -1) {
            l(dimensionPixelSize);
        }
        this.f2907a.d(z10);
        if (this.f2909c.getParent() == null) {
            viewGroup2.addView(this.f2909c);
        }
        this.f2915l.post(this.f2916m);
        return viewInflate;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f2915l.removeCallbacks(this.f2916m);
        this.f2915l.removeMessages(1);
        if (this.f2910f) {
            m();
        }
        this.f2909c = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.j.a
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment dialogFragmentI;
        b();
        getActivity();
        if (getFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            dialogFragmentI = EditTextPreferenceDialogFragment.i(preference.getKey());
        } else if (preference instanceof ListPreference) {
            dialogFragmentI = ListPreferenceDialogFragment.i(preference.getKey());
        } else {
            if (!(preference instanceof MultiSelectListPreference)) {
                throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
            }
            dialogFragmentI = MultiSelectListPreferenceDialogFragment.i(preference.getKey());
        }
        dialogFragmentI.setTargetFragment(this, 0);
        dialogFragmentI.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
    }

    @Override // androidx.preference.j.b
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        b();
        getActivity();
    }

    @Override // androidx.preference.j.c
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() != null) {
            b();
            getActivity();
        }
        return false;
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreenD = d();
        if (preferenceScreenD != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreenD.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f2908b.o(this);
        this.f2908b.m(this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f2908b.o(null);
        this.f2908b.m(null);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreenD;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreenD = d()) != null) {
            preferenceScreenD.restoreHierarchyState(bundle2);
        }
        if (this.f2910f) {
            a();
            Runnable runnable = this.f2914k;
            if (runnable != null) {
                runnable.run();
                this.f2914k = null;
            }
        }
        this.f2911h = true;
    }
}
