package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.z;
import androidx.lifecycle.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int[] f2431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f2432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int[] f2433c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int[] f2434f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f2435h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final String f2436i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final int f2437j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final int f2438k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final CharSequence f2439l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final int f2440m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final CharSequence f2441n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ArrayList f2442o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final ArrayList f2443p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final boolean f2444q;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BackStackRecordState[] newArray(int i10) {
            return new BackStackRecordState[i10];
        }
    }

    BackStackRecordState(androidx.fragment.app.a aVar) {
        int size = aVar.f2719c.size();
        this.f2431a = new int[size * 6];
        if (!aVar.f2725i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f2432b = new ArrayList(size);
        this.f2433c = new int[size];
        this.f2434f = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            z.a aVar2 = (z.a) aVar.f2719c.get(i11);
            int i12 = i10 + 1;
            this.f2431a[i10] = aVar2.f2736a;
            ArrayList arrayList = this.f2432b;
            Fragment fragment = aVar2.f2737b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f2431a;
            iArr[i12] = aVar2.f2738c ? 1 : 0;
            iArr[i10 + 2] = aVar2.f2739d;
            iArr[i10 + 3] = aVar2.f2740e;
            int i13 = i10 + 5;
            iArr[i10 + 4] = aVar2.f2741f;
            i10 += 6;
            iArr[i13] = aVar2.f2742g;
            this.f2433c[i11] = aVar2.f2743h.ordinal();
            this.f2434f[i11] = aVar2.f2744i.ordinal();
        }
        this.f2435h = aVar.f2724h;
        this.f2436i = aVar.f2727k;
        this.f2437j = aVar.f2562v;
        this.f2438k = aVar.f2728l;
        this.f2439l = aVar.f2729m;
        this.f2440m = aVar.f2730n;
        this.f2441n = aVar.f2731o;
        this.f2442o = aVar.f2732p;
        this.f2443p = aVar.f2733q;
        this.f2444q = aVar.f2734r;
    }

    private void a(androidx.fragment.app.a aVar) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= this.f2431a.length) {
                aVar.f2724h = this.f2435h;
                aVar.f2727k = this.f2436i;
                aVar.f2725i = true;
                aVar.f2728l = this.f2438k;
                aVar.f2729m = this.f2439l;
                aVar.f2730n = this.f2440m;
                aVar.f2731o = this.f2441n;
                aVar.f2732p = this.f2442o;
                aVar.f2733q = this.f2443p;
                aVar.f2734r = this.f2444q;
                return;
            }
            z.a aVar2 = new z.a();
            int i12 = i10 + 1;
            aVar2.f2736a = this.f2431a[i10];
            if (FragmentManager.H0(2)) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i11 + " base fragment #" + this.f2431a[i12]);
            }
            aVar2.f2743h = l.b.values()[this.f2433c[i11]];
            aVar2.f2744i = l.b.values()[this.f2434f[i11]];
            int[] iArr = this.f2431a;
            int i13 = i10 + 2;
            if (iArr[i12] == 0) {
                z10 = false;
            }
            aVar2.f2738c = z10;
            int i14 = iArr[i13];
            aVar2.f2739d = i14;
            int i15 = iArr[i10 + 3];
            aVar2.f2740e = i15;
            int i16 = i10 + 5;
            int i17 = iArr[i10 + 4];
            aVar2.f2741f = i17;
            i10 += 6;
            int i18 = iArr[i16];
            aVar2.f2742g = i18;
            aVar.f2720d = i14;
            aVar.f2721e = i15;
            aVar.f2722f = i17;
            aVar.f2723g = i18;
            aVar.f(aVar2);
            i11++;
        }
    }

    public androidx.fragment.app.a b(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        a(aVar);
        aVar.f2562v = this.f2437j;
        for (int i10 = 0; i10 < this.f2432b.size(); i10++) {
            String str = (String) this.f2432b.get(i10);
            if (str != null) {
                ((z.a) aVar.f2719c.get(i10)).f2737b = fragmentManager.e0(str);
            }
        }
        aVar.x(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f2431a);
        parcel.writeStringList(this.f2432b);
        parcel.writeIntArray(this.f2433c);
        parcel.writeIntArray(this.f2434f);
        parcel.writeInt(this.f2435h);
        parcel.writeString(this.f2436i);
        parcel.writeInt(this.f2437j);
        parcel.writeInt(this.f2438k);
        TextUtils.writeToParcel(this.f2439l, parcel, 0);
        parcel.writeInt(this.f2440m);
        TextUtils.writeToParcel(this.f2441n, parcel, 0);
        parcel.writeStringList(this.f2442o);
        parcel.writeStringList(this.f2443p);
        parcel.writeInt(this.f2444q ? 1 : 0);
    }

    BackStackRecordState(Parcel parcel) {
        this.f2431a = parcel.createIntArray();
        this.f2432b = parcel.createStringArrayList();
        this.f2433c = parcel.createIntArray();
        this.f2434f = parcel.createIntArray();
        this.f2435h = parcel.readInt();
        this.f2436i = parcel.readString();
        this.f2437j = parcel.readInt();
        this.f2438k = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f2439l = (CharSequence) creator.createFromParcel(parcel);
        this.f2440m = parcel.readInt();
        this.f2441n = (CharSequence) creator.createFromParcel(parcel);
        this.f2442o = parcel.createStringArrayList();
        this.f2443p = parcel.createStringArrayList();
        this.f2444q = parcel.readInt() != 0;
    }
}
