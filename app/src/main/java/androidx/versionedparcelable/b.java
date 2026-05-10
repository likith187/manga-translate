package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseIntArray f3845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Parcel f3846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f3848g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f3849h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3850i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3851j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3852k;

    b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new androidx.collection.a(), new androidx.collection.a(), new androidx.collection.a());
    }

    @Override // androidx.versionedparcelable.a
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f3846e.writeInt(-1);
        } else {
            this.f3846e.writeInt(bArr.length);
            this.f3846e.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3846e, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void E(int i10) {
        this.f3846e.writeInt(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void G(Parcelable parcelable) {
        this.f3846e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.a
    public void I(String str) {
        this.f3846e.writeString(str);
    }

    @Override // androidx.versionedparcelable.a
    public void a() {
        int i10 = this.f3850i;
        if (i10 >= 0) {
            int i11 = this.f3845d.get(i10);
            int iDataPosition = this.f3846e.dataPosition();
            this.f3846e.setDataPosition(i11);
            this.f3846e.writeInt(iDataPosition - i11);
            this.f3846e.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.a
    protected a b() {
        Parcel parcel = this.f3846e;
        int iDataPosition = parcel.dataPosition();
        int i10 = this.f3851j;
        if (i10 == this.f3847f) {
            i10 = this.f3848g;
        }
        return new b(parcel, iDataPosition, i10, this.f3849h + "  ", this.f3842a, this.f3843b, this.f3844c);
    }

    @Override // androidx.versionedparcelable.a
    public boolean g() {
        return this.f3846e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.a
    public byte[] i() {
        int i10 = this.f3846e.readInt();
        if (i10 < 0) {
            return null;
        }
        byte[] bArr = new byte[i10];
        this.f3846e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.a
    protected CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3846e);
    }

    @Override // androidx.versionedparcelable.a
    public boolean m(int i10) {
        while (this.f3851j < this.f3848g) {
            int i11 = this.f3852k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f3846e.setDataPosition(this.f3851j);
            int i12 = this.f3846e.readInt();
            this.f3852k = this.f3846e.readInt();
            this.f3851j += i12;
        }
        return this.f3852k == i10;
    }

    @Override // androidx.versionedparcelable.a
    public int o() {
        return this.f3846e.readInt();
    }

    @Override // androidx.versionedparcelable.a
    public Parcelable q() {
        return this.f3846e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.a
    public String s() {
        return this.f3846e.readString();
    }

    @Override // androidx.versionedparcelable.a
    public void w(int i10) {
        a();
        this.f3850i = i10;
        this.f3845d.put(i10, this.f3846e.dataPosition());
        E(0);
        E(i10);
    }

    @Override // androidx.versionedparcelable.a
    public void y(boolean z10) {
        this.f3846e.writeInt(z10 ? 1 : 0);
    }

    private b(Parcel parcel, int i10, int i11, String str, androidx.collection.a aVar, androidx.collection.a aVar2, androidx.collection.a aVar3) {
        super(aVar, aVar2, aVar3);
        this.f3845d = new SparseIntArray();
        this.f3850i = -1;
        this.f3852k = -1;
        this.f3846e = parcel;
        this.f3847f = i10;
        this.f3848g = i11;
        this.f3851j = i10;
        this.f3849h = str;
    }
}
