package androidx.preference;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceGroup;
import androidx.preference.j;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class g extends Fragment implements j.c, j.a, j.b, DialogPreference.a {
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final String PREFERENCES_TAG = "android:preferences";
    private static final String TAG = "PreferenceFragment";
    private boolean mHavePrefs;
    private boolean mInitDone;
    RecyclerView mList;
    private j mPreferenceManager;
    private Runnable mSelectPreferenceRunnable;
    private final d mDividerDecoration = new d();
    private int mLayoutResId = R$layout.preference_list_fragment;
    private Handler mHandler = new a();
    private final Runnable mRequestFocus = new b();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            g.this.bindPreferences();
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
            RecyclerView recyclerView = g.this.mList;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ Preference f2951a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ String f2952b;

        c(Preference preference, String str) {
            this.f2951a = preference;
            this.f2952b = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.h adapter = g.this.mList.getAdapter();
            if (!(adapter instanceof PreferenceGroup.c)) {
                if (adapter != 0) {
                    throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                }
                return;
            }
            Preference preference = this.f2951a;
            int iE = preference != null ? ((PreferenceGroup.c) adapter).e(preference) : ((PreferenceGroup.c) adapter).c(this.f2952b);
            if (iE != -1) {
                g.this.mList.scrollToPosition(iE);
            } else {
                adapter.registerAdapterDataObserver(new e(adapter, g.this.mList, this.f2951a, this.f2952b));
            }
        }
    }

    private class d extends RecyclerView.o {

        /* JADX INFO: renamed from: a */
        private Drawable f2954a;

        /* JADX INFO: renamed from: b */
        private int f2955b;

        /* JADX INFO: renamed from: c */
        private boolean f2956c = true;

        d() {
        }

        private boolean g(View view, RecyclerView recyclerView) {
            RecyclerView.d0 childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z10 = false;
            if (!(childViewHolder instanceof l) || !((l) childViewHolder).d()) {
                return false;
            }
            boolean z11 = this.f2956c;
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
            this.f2956c = z10;
        }

        public void e(Drawable drawable) {
            if (drawable != null) {
                this.f2955b = drawable.getIntrinsicHeight();
            } else {
                this.f2955b = 0;
            }
            this.f2954a = drawable;
            g.this.mList.invalidateItemDecorations();
        }

        public void f(int i10) {
            this.f2955b = i10;
            g.this.mList.invalidateItemDecorations();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            if (g(view, recyclerView)) {
                rect.bottom = this.f2955b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.a0 a0Var) {
            if (this.f2954a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (g(childAt, recyclerView)) {
                    int y10 = ((int) childAt.getY()) + childAt.getHeight();
                    this.f2954a.setBounds(0, y10, width, this.f2955b + y10);
                    this.f2954a.draw(canvas);
                }
            }
        }
    }

    private static class e extends RecyclerView.j {

        /* JADX INFO: renamed from: a */
        private final RecyclerView.h f2958a;

        /* JADX INFO: renamed from: b */
        private final RecyclerView f2959b;

        /* JADX INFO: renamed from: c */
        private final Preference f2960c;

        /* JADX INFO: renamed from: d */
        private final String f2961d;

        public e(RecyclerView.h hVar, RecyclerView recyclerView, Preference preference, String str) {
            this.f2958a = hVar;
            this.f2959b = recyclerView;
            this.f2960c = preference;
            this.f2961d = str;
        }

        private void a() {
            this.f2958a.unregisterAdapterDataObserver(this);
            Preference preference = this.f2960c;
            int iE = preference != null ? ((PreferenceGroup.c) this.f2958a).e(preference) : ((PreferenceGroup.c) this.f2958a).c(this.f2961d);
            if (iE != -1) {
                this.f2959b.scrollToPosition(iE);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeMoved(int i10, int i11, int i12) {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeRemoved(int i10, int i11) {
            a();
        }
    }

    private void l() {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    private void m() {
        if (this.mPreferenceManager == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    private void n(Preference preference, String str) {
        c cVar = new c(preference, str);
        if (this.mList == null) {
            this.mSelectPreferenceRunnable = cVar;
        } else {
            cVar.run();
        }
    }

    private void o() {
        getListView().setAdapter(null);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.onDetached();
        }
        onUnbindPreferences();
    }

    public void addPreferencesFromResource(int i10) {
        m();
        setPreferenceScreen(this.mPreferenceManager.k(getContext(), i10, getPreferenceScreen()));
    }

    void bindPreferences() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            getListView().setAdapter(onCreateAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        onBindPreferences();
    }

    @Override // androidx.preference.DialogPreference.a
    public <T extends Preference> T findPreference(CharSequence charSequence) {
        j jVar = this.mPreferenceManager;
        if (jVar == null) {
            return null;
        }
        return (T) jVar.a(charSequence);
    }

    public Fragment getCallbackFragment() {
        return null;
    }

    public final RecyclerView getListView() {
        return this.mList;
    }

    public j getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceManager.i();
    }

    protected void onBindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(R$attr.preferenceTheme, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = R$style.PreferenceThemeOverlay;
        }
        getActivity().getTheme().applyStyle(i10, false);
        j jVar = new j(getContext());
        this.mPreferenceManager = jVar;
        jVar.n(this);
        onCreatePreferences(bundle, getArguments() != null ? getArguments().getString(ARG_PREFERENCE_ROOT) : null);
    }

    protected RecyclerView.h onCreateAdapter(PreferenceScreen preferenceScreen) {
        return new h(preferenceScreen);
    }

    public RecyclerView.p onCreateLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    public abstract void onCreatePreferences(Bundle bundle, String str);

    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R$id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R$layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(onCreateLayoutManager());
        recyclerView2.setAccessibilityDelegateCompat(new k(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.PreferenceFragmentCompat, R$attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PreferenceFragmentCompat_android_layout, this.mLayoutResId);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(getContext());
        View viewInflate = layoutInflaterCloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        RecyclerView recyclerViewOnCreateRecyclerView = onCreateRecyclerView(layoutInflaterCloneInContext, viewGroup2, bundle);
        if (recyclerViewOnCreateRecyclerView == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.mList = recyclerViewOnCreateRecyclerView;
        recyclerViewOnCreateRecyclerView.addItemDecoration(this.mDividerDecoration);
        setDivider(drawable);
        if (dimensionPixelSize != -1) {
            setDividerHeight(dimensionPixelSize);
        }
        this.mDividerDecoration.d(z10);
        if (this.mList.getParent() == null) {
            viewGroup2.addView(this.mList);
        }
        this.mHandler.post(this.mRequestFocus);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            o();
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.j.a
    public void onDisplayPreferenceDialog(Preference preference) {
        androidx.fragment.app.c cVarNewInstance;
        getCallbackFragment();
        getActivity();
        if (getFragmentManager().h0(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            cVarNewInstance = androidx.preference.a.newInstance(preference.getKey());
        } else if (preference instanceof ListPreference) {
            cVarNewInstance = androidx.preference.c.newInstance(preference.getKey());
        } else {
            if (!(preference instanceof MultiSelectListPreference)) {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            }
            cVarNewInstance = androidx.preference.d.newInstance(preference.getKey());
        }
        cVarNewInstance.setTargetFragment(this, 0);
        cVarNewInstance.show(getFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    @Override // androidx.preference.j.b
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        getCallbackFragment();
        getActivity();
    }

    @Override // androidx.preference.j.c
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() == null) {
            return false;
        }
        getCallbackFragment();
        getActivity();
        Log.w(TAG, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        Bundle extras = preference.getExtras();
        Fragment fragmentA = supportFragmentManager.s0().a(requireActivity().getClassLoader(), preference.getFragment());
        fragmentA.setArguments(extras);
        fragmentA.setTargetFragment(this, 0);
        supportFragmentManager.n().q(((View) getView().getParent()).getId(), fragmentA).g(null).h();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.saveHierarchyState(bundle2);
            bundle.putBundle(PREFERENCES_TAG, bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mPreferenceManager.o(this);
        this.mPreferenceManager.m(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.mPreferenceManager.o(null);
        this.mPreferenceManager.m(null);
    }

    protected void onUnbindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
        }
        if (this.mHavePrefs) {
            bindPreferences();
            Runnable runnable = this.mSelectPreferenceRunnable;
            if (runnable != null) {
                runnable.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }

    public void scrollToPreference(String str) {
        n(null, str);
    }

    public void setDivider(Drawable drawable) {
        this.mDividerDecoration.e(drawable);
    }

    public void setDividerHeight(int i10) {
        this.mDividerDecoration.f(i10);
    }

    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (!this.mPreferenceManager.p(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        onUnbindPreferences();
        this.mHavePrefs = true;
        if (this.mInitDone) {
            l();
        }
    }

    public void setPreferencesFromResource(int i10, String str) {
        m();
        PreferenceScreen preferenceScreenK = this.mPreferenceManager.k(getContext(), i10, null);
        Preference preference = preferenceScreenK;
        if (str != null) {
            Preference preferenceFindPreference = preferenceScreenK.findPreference(str);
            boolean z10 = preferenceFindPreference instanceof PreferenceScreen;
            preference = preferenceFindPreference;
            if (!z10) {
                throw new IllegalArgumentException("Preference object with key " + str + " is not a PreferenceScreen");
            }
        }
        setPreferenceScreen((PreferenceScreen) preference);
    }

    public void scrollToPreference(Preference preference) {
        n(preference, null);
    }
}
