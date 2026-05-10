package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList f2533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList f2534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    BackStackRecordState[] f2535c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2536f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f2537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ArrayList f2538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ArrayList f2539j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ArrayList f2540k;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FragmentManagerState[] newArray(int i10) {
            return new FragmentManagerState[i10];
        }
    }

    public FragmentManagerState() {
        this.f2537h = null;
        this.f2538i = new ArrayList();
        this.f2539j = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f2533a);
        parcel.writeStringList(this.f2534b);
        parcel.writeTypedArray(this.f2535c, i10);
        parcel.writeInt(this.f2536f);
        parcel.writeString(this.f2537h);
        parcel.writeStringList(this.f2538i);
        parcel.writeTypedList(this.f2539j);
        parcel.writeTypedList(this.f2540k);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f2537h = null;
        this.f2538i = new ArrayList();
        this.f2539j = new ArrayList();
        this.f2533a = parcel.createStringArrayList();
        this.f2534b = parcel.createStringArrayList();
        this.f2535c = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
        this.f2536f = parcel.readInt();
        this.f2537h = parcel.readString();
        this.f2538i = parcel.createStringArrayList();
        this.f2539j = parcel.createTypedArrayList(BackStackState.CREATOR);
        this.f2540k = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }
}
