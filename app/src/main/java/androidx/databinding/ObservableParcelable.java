package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableParcelable<T extends Parcelable> extends f implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableParcelable> CREATOR = new a();
    static final long serialVersionUID = 1;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ObservableParcelable createFromParcel(Parcel parcel) {
            return new ObservableParcelable(parcel.readParcelable(getClass().getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ObservableParcelable[] newArray(int i10) {
            return new ObservableParcelable[i10];
        }
    }

    public ObservableParcelable(T t10) {
        super(t10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable((Parcelable) get(), 0);
    }

    public ObservableParcelable() {
    }
}
