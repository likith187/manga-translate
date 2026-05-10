package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class ActivityResult implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Intent f185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f183c = new b(null);
    public static final Parcelable.Creator<ActivityResult> CREATOR = new a();

    public static final class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActivityResult createFromParcel(Parcel parcel) {
            r.e(parcel, "parcel");
            return new ActivityResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ActivityResult[] newArray(int i10) {
            return new ActivityResult[i10];
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i10) {
            return i10 != -1 ? i10 != 0 ? String.valueOf(i10) : "RESULT_CANCELED" : "RESULT_OK";
        }

        private b() {
        }
    }

    public ActivityResult(int i10, Intent intent) {
        this.f184a = i10;
        this.f185b = intent;
    }

    public final Intent a() {
        return this.f185b;
    }

    public final int b() {
        return this.f184a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + f183c.a(this.f184a) + ", data=" + this.f185b + AbstractJsonLexerKt.END_OBJ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeInt(this.f184a);
        dest.writeInt(this.f185b == null ? 0 : 1);
        Intent intent = this.f185b;
        if (intent != null) {
            intent.writeToParcel(dest, i10);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActivityResult(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel));
        r.e(parcel, "parcel");
    }
}
