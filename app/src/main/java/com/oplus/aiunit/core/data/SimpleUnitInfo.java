package com.oplus.aiunit.core.data;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleUnitInfo implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    private boolean availableInner;
    private final int id;
    private final String name;
    private final int state;
    private int type;
    private boolean unsupportedBySelfInner;

    public static final class CREATOR implements Parcelable.Creator<SimpleUnitInfo> {
        private CREATOR() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimpleUnitInfo createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            return new SimpleUnitInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimpleUnitInfo[] newArray(int i10) {
            return new SimpleUnitInfo[i10];
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SimpleUnitInfo(int i10, String name, int i11) {
        r.e(name, "name");
        this.id = i10;
        this.name = name;
        this.state = i11;
        this.type = -1;
        this.availableInner = i11 >= 1 && i11 <= 4;
        this.unsupportedBySelfInner = i11 == 0 || i11 == 12 || i11 == 13;
        this.type = defaultType();
    }

    public static /* synthetic */ SimpleUnitInfo copy$default(SimpleUnitInfo simpleUnitInfo, int i10, String str, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = simpleUnitInfo.id;
        }
        if ((i12 & 2) != 0) {
            str = simpleUnitInfo.name;
        }
        if ((i12 & 4) != 0) {
            i11 = simpleUnitInfo.state;
        }
        return simpleUnitInfo.copy(i10, str, i11);
    }

    private final int defaultType() {
        return (r.a(this.name, "cloud_aigc_article_summary") || r.a(this.name, "cloud_aigc_call_summary") || r.a(this.name, "cloud_aigc_sdinpainting") || r.a(this.name, "cloud_aigc_segmentation") || r.a(this.name, "cloud_audio_asr")) ? 1 : 0;
    }

    public final int component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final int component3() {
        return this.state;
    }

    public final SimpleUnitInfo copy(int i10, String name, int i11) {
        r.e(name, "name");
        return new SimpleUnitInfo(i10, name, i11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimpleUnitInfo)) {
            return false;
        }
        SimpleUnitInfo simpleUnitInfo = (SimpleUnitInfo) obj;
        return this.id == simpleUnitInfo.id && r.a(this.name, simpleUnitInfo.name) && this.state == simpleUnitInfo.state;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getRunType() {
        return this.type;
    }

    public final int getState() {
        return this.state;
    }

    public int hashCode() {
        return Integer.hashCode(this.state) + ((this.name.hashCode() + (Integer.hashCode(this.id) * 31)) * 31);
    }

    public final boolean isAvailable() {
        return this.availableInner;
    }

    public final boolean isUnsupportedBySelf() {
        return this.unsupportedBySelfInner;
    }

    public final void setAvailable(boolean z10) {
        this.availableInner = z10;
    }

    public final void setRunType(int i10) {
        this.type = i10;
    }

    public final void setUnsupportedBySelf(boolean z10) {
        this.unsupportedBySelfInner = z10;
    }

    public String toString() {
        return "SimpleUnitInfo[" + this.id + ", " + this.name + ", " + this.state + ", " + this.availableInner + ", " + this.unsupportedBySelfInner + AbstractJsonLexerKt.END_LIST;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        r.e(parcel, "parcel");
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeInt(this.state);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SimpleUnitInfo(Parcel parcel) {
        r.e(parcel, "parcel");
        int i10 = parcel.readInt();
        String string = parcel.readString();
        this(i10, string == null ? "" : string, parcel.readInt());
    }
}
