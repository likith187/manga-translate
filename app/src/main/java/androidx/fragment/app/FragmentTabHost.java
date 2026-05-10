package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f2554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FragmentManager f2555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2556c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TabHost.OnTabChangeListener f2557f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2558h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f2559a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f2559a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2559a);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f2559a = parcel.readString();
        }
    }

    static final class a {
    }

    @Deprecated
    public FragmentTabHost(Context context) {
        super(context, null);
        this.f2554a = new ArrayList();
        c(context, null);
    }

    private z a(String str, z zVar) {
        b(str);
        return zVar;
    }

    private a b(String str) {
        if (this.f2554a.size() <= 0) {
            return null;
        }
        androidx.appcompat.app.t.a(this.f2554a.get(0));
        throw null;
    }

    private void c(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.f2556c = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        if (this.f2554a.size() > 0) {
            androidx.appcompat.app.t.a(this.f2554a.get(0));
            throw null;
        }
        this.f2558h = true;
        z zVarA = a(currentTabTag, null);
        if (zVarA != null) {
            zVarA.h();
            this.f2555b.d0();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2558h = false;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f2559a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2559a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        z zVarA;
        if (this.f2558h && (zVarA = a(str, null)) != null) {
            zVarA.h();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f2557f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f2557f = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2554a = new ArrayList();
        c(context, attributeSet);
    }
}
