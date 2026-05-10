package androidx.preference;

import android.R;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.m0;
import androidx.preference.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    private static final String CLIPBOARD_ID = "Preference";
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
    private boolean mAllowDividerAbove;
    private boolean mAllowDividerBelow;
    private boolean mBaseMethodCalled;
    private final View.OnClickListener mClickListener;
    private Context mContext;
    private boolean mCopyingEnabled;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List<Preference> mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private boolean mHasId;
    private boolean mHasSingleLineTitleAttr;
    private Drawable mIcon;
    private int mIconResId;
    private boolean mIconSpaceReserved;
    private long mId;
    private Intent mIntent;
    private String mKey;
    private int mLayoutResId;
    private b mListener;
    private c mOnChangeListener;
    private d mOnClickListener;
    private e mOnCopyListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private PreferenceGroup mParentGroup;
    private boolean mPersistent;
    private androidx.preference.e mPreferenceDataStore;
    private j mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private boolean mSingleLineTitle;
    private CharSequence mSummary;
    private f mSummaryProvider;
    private CharSequence mTitle;
    private int mViewId;
    private boolean mVisible;
    private boolean mWasDetached;
    private int mWidgetLayoutResId;

    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new a();

        static class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a */
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b */
            public BaseSavedState[] newArray(int i10) {
                return new BaseSavedState[i10];
            }
        }

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Preference.this.performClick(view);
        }
    }

    interface b {
        void a(Preference preference);

        void b(Preference preference);

        void d(Preference preference);
    }

    public interface c {
        boolean a(Preference preference, Object obj);
    }

    public interface d {
        boolean a(Preference preference);
    }

    private static class e implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: a */
        private final Preference f2898a;

        e(Preference preference) {
            this.f2898a = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence summary = this.f2898a.getSummary();
            if (!this.f2898a.isCopyingEnabled() || TextUtils.isEmpty(summary)) {
                return;
            }
            contextMenu.setHeaderTitle(summary);
            contextMenu.add(0, 0, 0, R$string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f2898a.getContext().getSystemService("clipboard");
            CharSequence summary = this.f2898a.getSummary();
            clipboardManager.setPrimaryClip(ClipData.newPlainText(Preference.CLIPBOARD_ID, summary));
            Toast.makeText(this.f2898a.getContext(), this.f2898a.getContext().getString(R$string.preference_copied, summary), 0).show();
            return true;
        }
    }

    public interface f {
        CharSequence a(Preference preference);
    }

    public Preference(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrder = Integer.MAX_VALUE;
        this.mViewId = 0;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = R$layout.preference;
        this.mClickListener = new a();
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Preference, i10, i11);
        this.mIconResId = t.k.l(typedArrayObtainStyledAttributes, R$styleable.Preference_icon, R$styleable.Preference_android_icon, 0);
        this.mKey = t.k.m(typedArrayObtainStyledAttributes, R$styleable.Preference_key, R$styleable.Preference_android_key);
        this.mTitle = t.k.n(typedArrayObtainStyledAttributes, R$styleable.Preference_title, R$styleable.Preference_android_title);
        this.mSummary = t.k.n(typedArrayObtainStyledAttributes, R$styleable.Preference_summary, R$styleable.Preference_android_summary);
        this.mOrder = t.k.d(typedArrayObtainStyledAttributes, R$styleable.Preference_order, R$styleable.Preference_android_order, Integer.MAX_VALUE);
        this.mFragment = t.k.m(typedArrayObtainStyledAttributes, R$styleable.Preference_fragment, R$styleable.Preference_android_fragment);
        this.mLayoutResId = t.k.l(typedArrayObtainStyledAttributes, R$styleable.Preference_layout, R$styleable.Preference_android_layout, R$layout.preference);
        this.mWidgetLayoutResId = t.k.l(typedArrayObtainStyledAttributes, R$styleable.Preference_widgetLayout, R$styleable.Preference_android_widgetLayout, 0);
        this.mEnabled = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_enabled, R$styleable.Preference_android_enabled, true);
        this.mSelectable = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_selectable, R$styleable.Preference_android_selectable, true);
        this.mPersistent = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_persistent, R$styleable.Preference_android_persistent, true);
        this.mDependencyKey = t.k.m(typedArrayObtainStyledAttributes, R$styleable.Preference_dependency, R$styleable.Preference_android_dependency);
        int i12 = R$styleable.Preference_allowDividerAbove;
        this.mAllowDividerAbove = t.k.b(typedArrayObtainStyledAttributes, i12, i12, this.mSelectable);
        int i13 = R$styleable.Preference_allowDividerBelow;
        this.mAllowDividerBelow = t.k.b(typedArrayObtainStyledAttributes, i13, i13, this.mSelectable);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Preference_defaultValue)) {
            this.mDefaultValue = onGetDefaultValue(typedArrayObtainStyledAttributes, R$styleable.Preference_defaultValue);
        } else if (typedArrayObtainStyledAttributes.hasValue(R$styleable.Preference_android_defaultValue)) {
            this.mDefaultValue = onGetDefaultValue(typedArrayObtainStyledAttributes, R$styleable.Preference_android_defaultValue);
        }
        this.mShouldDisableView = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_shouldDisableView, R$styleable.Preference_android_shouldDisableView, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.Preference_singleLineTitle);
        this.mHasSingleLineTitleAttr = zHasValue;
        if (zHasValue) {
            this.mSingleLineTitle = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_singleLineTitle, R$styleable.Preference_android_singleLineTitle, true);
        }
        this.mIconSpaceReserved = t.k.b(typedArrayObtainStyledAttributes, R$styleable.Preference_iconSpaceReserved, R$styleable.Preference_android_iconSpaceReserved, false);
        int i14 = R$styleable.Preference_isPreferenceVisible;
        this.mVisible = t.k.b(typedArrayObtainStyledAttributes, i14, i14, true);
        int i15 = R$styleable.Preference_enableCopying;
        this.mCopyingEnabled = t.k.b(typedArrayObtainStyledAttributes, i15, i15, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void a() {
        getPreferenceDataStore();
        if (shouldPersist() && getSharedPreferences().contains(this.mKey)) {
            onSetInitialValue(true, null);
            return;
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue(false, obj);
        }
    }

    private void b() {
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        Preference preferenceFindPreferenceInHierarchy = findPreferenceInHierarchy(this.mDependencyKey);
        if (preferenceFindPreferenceInHierarchy != null) {
            preferenceFindPreferenceInHierarchy.c(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.mDependencyKey + "\" not found for preference \"" + this.mKey + "\" (title: \"" + ((Object) this.mTitle) + "\"");
    }

    private void c(Preference preference) {
        if (this.mDependents == null) {
            this.mDependents = new ArrayList();
        }
        this.mDependents.add(preference);
        preference.onDependencyChanged(this, shouldDisableDependents());
    }

    private void d(View view, boolean z10) {
        view.setEnabled(z10);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                d(viewGroup.getChildAt(childCount), z10);
            }
        }
    }

    private void e(SharedPreferences.Editor editor) {
        if (this.mPreferenceManager.r()) {
            editor.apply();
        }
    }

    private void f() {
        Preference preferenceFindPreferenceInHierarchy;
        String str = this.mDependencyKey;
        if (str == null || (preferenceFindPreferenceInHierarchy = findPreferenceInHierarchy(str)) == null) {
            return;
        }
        preferenceFindPreferenceInHierarchy.g(this);
    }

    private void g(Preference preference) {
        List<Preference> list = this.mDependents;
        if (list != null) {
            list.remove(preference);
        }
    }

    void assignParent(PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.mParentGroup != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.mParentGroup = preferenceGroup;
    }

    public boolean callChangeListener(Object obj) {
        c cVar = this.mOnChangeListener;
        return cVar == null || cVar.a(this, obj);
    }

    final void clearWasDetached() {
        this.mWasDetached = false;
    }

    void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.mKey)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (!this.mBaseMethodCalled) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable parcelableOnSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (parcelableOnSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, parcelableOnSaveInstanceState);
            }
        }
    }

    protected <T extends Preference> T findPreferenceInHierarchy(String str) {
        j jVar = this.mPreferenceManager;
        if (jVar == null) {
            return null;
        }
        return (T) jVar.a(str);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDependency() {
        return this.mDependencyKey;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    StringBuilder getFilterableStringBuilder() {
        StringBuilder sb = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            sb.append(title);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    public String getFragment() {
        return this.mFragment;
    }

    public Drawable getIcon() {
        int i10;
        if (this.mIcon == null && (i10 = this.mIconResId) != 0) {
            this.mIcon = e.a.b(this.mContext, i10);
        }
        return this.mIcon;
    }

    long getId() {
        return this.mId;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public String getKey() {
        return this.mKey;
    }

    public final int getLayoutResource() {
        return this.mLayoutResId;
    }

    public c getOnPreferenceChangeListener() {
        return this.mOnChangeListener;
    }

    public d getOnPreferenceClickListener() {
        return this.mOnClickListener;
    }

    public int getOrder() {
        return this.mOrder;
    }

    public PreferenceGroup getParent() {
        return this.mParentGroup;
    }

    protected boolean getPersistedBoolean(boolean z10) {
        if (!shouldPersist()) {
            return z10;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getBoolean(this.mKey, z10);
    }

    protected float getPersistedFloat(float f10) {
        if (!shouldPersist()) {
            return f10;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getFloat(this.mKey, f10);
    }

    protected int getPersistedInt(int i10) {
        if (!shouldPersist()) {
            return i10;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getInt(this.mKey, i10);
    }

    protected long getPersistedLong(long j10) {
        if (!shouldPersist()) {
            return j10;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getLong(this.mKey, j10);
    }

    protected String getPersistedString(String str) {
        if (!shouldPersist()) {
            return str;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getString(this.mKey, str);
    }

    public Set<String> getPersistedStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return set;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j().getStringSet(this.mKey, set);
    }

    public androidx.preference.e getPreferenceDataStore() {
        j jVar = this.mPreferenceManager;
        if (jVar != null) {
            jVar.h();
        }
        return null;
    }

    public j getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public SharedPreferences getSharedPreferences() {
        if (this.mPreferenceManager == null) {
            return null;
        }
        getPreferenceDataStore();
        return this.mPreferenceManager.j();
    }

    public boolean getShouldDisableView() {
        return this.mShouldDisableView;
    }

    public CharSequence getSummary() {
        return getSummaryProvider() != null ? getSummaryProvider().a(this) : this.mSummary;
    }

    public final f getSummaryProvider() {
        return this.mSummaryProvider;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getWidgetLayoutResource() {
        return this.mWidgetLayoutResId;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.mKey);
    }

    public boolean isCopyingEnabled() {
        return this.mCopyingEnabled;
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public boolean isIconSpaceReserved() {
        return this.mIconSpaceReserved;
    }

    public boolean isPersistent() {
        return this.mPersistent;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public final boolean isShown() {
        if (!isVisible() || getPreferenceManager() == null) {
            return false;
        }
        if (this == getPreferenceManager().i()) {
            return true;
        }
        PreferenceGroup parent = getParent();
        if (parent == null) {
            return false;
        }
        return parent.isShown();
    }

    public boolean isSingleLineTitle() {
        return this.mSingleLineTitle;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    protected void notifyChanged() {
        b bVar = this.mListener;
        if (bVar != null) {
            bVar.b(this);
        }
    }

    public void notifyDependencyChange(boolean z10) {
        List<Preference> list = this.mDependents;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).onDependencyChanged(this, z10);
        }
    }

    protected void notifyHierarchyChanged() {
        b bVar = this.mListener;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public void onAttached() {
        b();
    }

    protected void onAttachedToHierarchy(j jVar) {
        this.mPreferenceManager = jVar;
        if (!this.mHasId) {
            this.mId = jVar.d();
        }
        a();
    }

    public void onBindViewHolder(l lVar) {
        Integer numValueOf;
        View view = lVar.itemView;
        view.setOnClickListener(this.mClickListener);
        view.setId(this.mViewId);
        TextView textView = (TextView) lVar.b(R.id.summary);
        if (textView != null) {
            CharSequence summary = getSummary();
            if (TextUtils.isEmpty(summary)) {
                textView.setVisibility(8);
                numValueOf = null;
            } else {
                textView.setText(summary);
                textView.setVisibility(0);
                numValueOf = Integer.valueOf(textView.getCurrentTextColor());
            }
        } else {
            numValueOf = null;
        }
        TextView textView2 = (TextView) lVar.b(R.id.title);
        if (textView2 != null) {
            CharSequence title = getTitle();
            if (TextUtils.isEmpty(title)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(title);
                textView2.setVisibility(0);
                if (this.mHasSingleLineTitleAttr) {
                    textView2.setSingleLine(this.mSingleLineTitle);
                }
                if (!isSelectable() && isEnabled() && numValueOf != null) {
                    textView2.setTextColor(numValueOf.intValue());
                }
            }
        }
        ImageView imageView = (ImageView) lVar.b(R.id.icon);
        if (imageView != null) {
            int i10 = this.mIconResId;
            if (i10 != 0 || this.mIcon != null) {
                if (this.mIcon == null) {
                    this.mIcon = e.a.b(this.mContext, i10);
                }
                Drawable drawable = this.mIcon;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.mIcon != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.mIconSpaceReserved ? 4 : 8);
            }
        }
        View viewB = lVar.b(R$id.icon_frame);
        if (viewB == null) {
            viewB = lVar.b(R.id.icon_frame);
        }
        if (viewB != null) {
            if (this.mIcon != null) {
                viewB.setVisibility(0);
            } else {
                viewB.setVisibility(this.mIconSpaceReserved ? 4 : 8);
            }
        }
        if (this.mShouldDisableView) {
            d(view, isEnabled());
        } else {
            d(view, true);
        }
        boolean zIsSelectable = isSelectable();
        view.setFocusable(zIsSelectable);
        view.setClickable(zIsSelectable);
        lVar.e(this.mAllowDividerAbove);
        lVar.f(this.mAllowDividerBelow);
        boolean zIsCopyingEnabled = isCopyingEnabled();
        if (zIsCopyingEnabled && this.mOnCopyListener == null) {
            this.mOnCopyListener = new e(this);
        }
        view.setOnCreateContextMenuListener(zIsCopyingEnabled ? this.mOnCopyListener : null);
        view.setLongClickable(zIsCopyingEnabled);
        if (!zIsCopyingEnabled || zIsSelectable) {
            return;
        }
        m0.n0(view, null);
    }

    protected void onClick() {
    }

    public void onDependencyChanged(Preference preference, boolean z10) {
        if (this.mDependencyMet == z10) {
            this.mDependencyMet = !z10;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        f();
        this.mWasDetached = true;
    }

    protected Object onGetDefaultValue(TypedArray typedArray, int i10) {
        return null;
    }

    @Deprecated
    public void onInitializeAccessibilityNodeInfo(d0.h hVar) {
    }

    public void onParentChanged(Preference preference, boolean z10) {
        if (this.mParentDependencyMet == z10) {
            this.mParentDependencyMet = !z10;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    protected void onPrepareForRemoval() {
        f();
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    protected Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return AbsSavedState.EMPTY_STATE;
    }

    protected void onSetInitialValue(Object obj) {
    }

    public Bundle peekExtras() {
        return this.mExtras;
    }

    protected void performClick(View view) {
        performClick();
    }

    protected boolean persistBoolean(boolean z10) {
        if (!shouldPersist()) {
            return false;
        }
        if (z10 == getPersistedBoolean(!z10)) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putBoolean(this.mKey, z10);
        e(editorC);
        return true;
    }

    protected boolean persistFloat(float f10) {
        if (!shouldPersist()) {
            return false;
        }
        if (f10 == getPersistedFloat(Float.NaN)) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putFloat(this.mKey, f10);
        e(editorC);
        return true;
    }

    protected boolean persistInt(int i10) {
        if (!shouldPersist()) {
            return false;
        }
        if (i10 == getPersistedInt(~i10)) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putInt(this.mKey, i10);
        e(editorC);
        return true;
    }

    protected boolean persistLong(long j10) {
        if (!shouldPersist()) {
            return false;
        }
        if (j10 == getPersistedLong(~j10)) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putLong(this.mKey, j10);
        e(editorC);
        return true;
    }

    protected boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putString(this.mKey, str);
        e(editorC);
        return true;
    }

    public boolean persistStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedStringSet(null))) {
            return true;
        }
        getPreferenceDataStore();
        SharedPreferences.Editor editorC = this.mPreferenceManager.c();
        editorC.putStringSet(this.mKey, set);
        e(editorC);
        return true;
    }

    void requireKey() {
        if (TextUtils.isEmpty(this.mKey)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveHierarchyState(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCopyingEnabled(boolean z10) {
        if (this.mCopyingEnabled != z10) {
            this.mCopyingEnabled = z10;
            notifyChanged();
        }
    }

    public void setDefaultValue(Object obj) {
        this.mDefaultValue = obj;
    }

    public void setDependency(String str) {
        f();
        this.mDependencyKey = str;
        b();
    }

    public void setEnabled(boolean z10) {
        if (this.mEnabled != z10) {
            this.mEnabled = z10;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setFragment(String str) {
        this.mFragment = str;
    }

    public void setIcon(Drawable drawable) {
        if (this.mIcon != drawable) {
            this.mIcon = drawable;
            this.mIconResId = 0;
            notifyChanged();
        }
    }

    public void setIconSpaceReserved(boolean z10) {
        if (this.mIconSpaceReserved != z10) {
            this.mIconSpaceReserved = z10;
            notifyChanged();
        }
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public void setKey(String str) {
        this.mKey = str;
        if (!this.mRequiresKey || hasKey()) {
            return;
        }
        requireKey();
    }

    public void setLayoutResource(int i10) {
        this.mLayoutResId = i10;
    }

    final void setOnPreferenceChangeInternalListener(b bVar) {
        this.mListener = bVar;
    }

    public void setOnPreferenceChangeListener(c cVar) {
        this.mOnChangeListener = cVar;
    }

    public void setOnPreferenceClickListener(d dVar) {
        this.mOnClickListener = dVar;
    }

    public void setOrder(int i10) {
        if (i10 != this.mOrder) {
            this.mOrder = i10;
            notifyHierarchyChanged();
        }
    }

    public void setPersistent(boolean z10) {
        this.mPersistent = z10;
    }

    public void setPreferenceDataStore(androidx.preference.e eVar) {
    }

    public void setSelectable(boolean z10) {
        if (this.mSelectable != z10) {
            this.mSelectable = z10;
            notifyChanged();
        }
    }

    public void setShouldDisableView(boolean z10) {
        if (this.mShouldDisableView != z10) {
            this.mShouldDisableView = z10;
            notifyChanged();
        }
    }

    public void setSingleLineTitle(boolean z10) {
        this.mHasSingleLineTitleAttr = true;
        this.mSingleLineTitle = z10;
    }

    public void setSummary(CharSequence charSequence) {
        if (getSummaryProvider() != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (TextUtils.equals(this.mSummary, charSequence)) {
            return;
        }
        this.mSummary = charSequence;
        notifyChanged();
    }

    public final void setSummaryProvider(f fVar) {
        this.mSummaryProvider = fVar;
        notifyChanged();
    }

    public void setTitle(CharSequence charSequence) {
        if ((charSequence != null || this.mTitle == null) && (charSequence == null || charSequence.equals(this.mTitle))) {
            return;
        }
        this.mTitle = charSequence;
        notifyChanged();
    }

    public void setViewId(int i10) {
        this.mViewId = i10;
    }

    public final void setVisible(boolean z10) {
        if (this.mVisible != z10) {
            this.mVisible = z10;
            b bVar = this.mListener;
            if (bVar != null) {
                bVar.d(this);
            }
        }
    }

    public void setWidgetLayoutResource(int i10) {
        this.mWidgetLayoutResId = i10;
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    protected boolean shouldPersist() {
        return this.mPreferenceManager != null && isPersistent() && hasKey();
    }

    public String toString() {
        return getFilterableStringBuilder().toString();
    }

    final boolean wasDetached() {
        return this.mWasDetached;
    }

    @Override // java.lang.Comparable
    public int compareTo(Preference preference) {
        int i10 = this.mOrder;
        int i11 = preference.mOrder;
        if (i10 != i11) {
            return i10 - i11;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.mTitle.toString());
    }

    @Deprecated
    protected void onSetInitialValue(boolean z10, Object obj) {
        onSetInitialValue(obj);
    }

    public void performClick() {
        j.c cVarF;
        if (isEnabled() && isSelectable()) {
            onClick();
            d dVar = this.mOnClickListener;
            if (dVar == null || !dVar.a(this)) {
                j preferenceManager = getPreferenceManager();
                if ((preferenceManager == null || (cVarF = preferenceManager.f()) == null || !cVarF.onPreferenceTreeClick(this)) && this.mIntent != null) {
                    getContext().startActivity(this.mIntent);
                }
            }
        }
    }

    public void setTitle(int i10) {
        setTitle(this.mContext.getString(i10));
    }

    protected void onAttachedToHierarchy(j jVar, long j10) {
        this.mId = j10;
        this.mHasId = true;
        try {
            onAttachedToHierarchy(jVar);
        } finally {
            this.mHasId = false;
        }
    }

    public void setIcon(int i10) {
        setIcon(e.a.b(this.mContext, i10));
        this.mIconResId = i10;
    }

    public void setSummary(int i10) {
        setSummary(this.mContext.getString(i10));
    }

    public Preference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, t.k.a(context, R$attr.preferenceStyle, R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
