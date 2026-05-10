package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.lifecycle.l;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f2541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f2542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f2543c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f2544f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f2545h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final String f2546i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final boolean f2547j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final boolean f2548k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final boolean f2549l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final Bundle f2550m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final boolean f2551n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int f2552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Bundle f2553p;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentState[] newArray(int i10) {
            return new FragmentState[i10];
        }
    }

    FragmentState(Fragment fragment) {
        this.f2541a = fragment.getClass().getName();
        this.f2542b = fragment.mWho;
        this.f2543c = fragment.mFromLayout;
        this.f2544f = fragment.mFragmentId;
        this.f2545h = fragment.mContainerId;
        this.f2546i = fragment.mTag;
        this.f2547j = fragment.mRetainInstance;
        this.f2548k = fragment.mRemoving;
        this.f2549l = fragment.mDetached;
        this.f2550m = fragment.mArguments;
        this.f2551n = fragment.mHidden;
        this.f2552o = fragment.mMaxState.ordinal();
    }

    Fragment a(k kVar, ClassLoader classLoader) {
        Fragment fragmentA = kVar.a(classLoader, this.f2541a);
        Bundle bundle = this.f2550m;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentA.setArguments(this.f2550m);
        fragmentA.mWho = this.f2542b;
        fragmentA.mFromLayout = this.f2543c;
        fragmentA.mRestored = true;
        fragmentA.mFragmentId = this.f2544f;
        fragmentA.mContainerId = this.f2545h;
        fragmentA.mTag = this.f2546i;
        fragmentA.mRetainInstance = this.f2547j;
        fragmentA.mRemoving = this.f2548k;
        fragmentA.mDetached = this.f2549l;
        fragmentA.mHidden = this.f2551n;
        fragmentA.mMaxState = l.b.values()[this.f2552o];
        Bundle bundle2 = this.f2553p;
        if (bundle2 != null) {
            fragmentA.mSavedFragmentState = bundle2;
        } else {
            fragmentA.mSavedFragmentState = new Bundle();
        }
        return fragmentA;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f2541a);
        sb.append(" (");
        sb.append(this.f2542b);
        sb.append(")}:");
        if (this.f2543c) {
            sb.append(" fromLayout");
        }
        if (this.f2545h != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2545h));
        }
        String str = this.f2546i;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2546i);
        }
        if (this.f2547j) {
            sb.append(" retainInstance");
        }
        if (this.f2548k) {
            sb.append(" removing");
        }
        if (this.f2549l) {
            sb.append(" detached");
        }
        if (this.f2551n) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f2541a);
        parcel.writeString(this.f2542b);
        parcel.writeInt(this.f2543c ? 1 : 0);
        parcel.writeInt(this.f2544f);
        parcel.writeInt(this.f2545h);
        parcel.writeString(this.f2546i);
        parcel.writeInt(this.f2547j ? 1 : 0);
        parcel.writeInt(this.f2548k ? 1 : 0);
        parcel.writeInt(this.f2549l ? 1 : 0);
        parcel.writeBundle(this.f2550m);
        parcel.writeInt(this.f2551n ? 1 : 0);
        parcel.writeBundle(this.f2553p);
        parcel.writeInt(this.f2552o);
    }

    FragmentState(Parcel parcel) {
        this.f2541a = parcel.readString();
        this.f2542b = parcel.readString();
        this.f2543c = parcel.readInt() != 0;
        this.f2544f = parcel.readInt();
        this.f2545h = parcel.readInt();
        this.f2546i = parcel.readString();
        this.f2547j = parcel.readInt() != 0;
        this.f2548k = parcel.readInt() != 0;
        this.f2549l = parcel.readInt() != 0;
        this.f2550m = parcel.readBundle();
        this.f2551n = parcel.readInt() != 0;
        this.f2553p = parcel.readBundle();
        this.f2552o = parcel.readInt();
    }
}
