package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class IntentSenderRequest implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IntentSender f187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Intent f188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f189c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f190f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f186h = new c(null);
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new b();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final IntentSender f191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Intent f192b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f193c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f194d;

        public a(IntentSender intentSender) {
            r.e(intentSender, "intentSender");
            this.f191a = intentSender;
        }

        public final IntentSenderRequest a() {
            return new IntentSenderRequest(this.f191a, this.f192b, this.f193c, this.f194d);
        }

        public final a b(Intent intent) {
            this.f192b = intent;
            return this;
        }

        public final a c(int i10, int i11) {
            this.f194d = i10;
            this.f193c = i11;
            return this;
        }
    }

    public static final class b implements Parcelable.Creator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest createFromParcel(Parcel inParcel) {
            r.e(inParcel, "inParcel");
            return new IntentSenderRequest(inParcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest[] newArray(int i10) {
            return new IntentSenderRequest[i10];
        }
    }

    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i10, int i11) {
        r.e(intentSender, "intentSender");
        this.f187a = intentSender;
        this.f188b = intent;
        this.f189c = i10;
        this.f190f = i11;
    }

    public final Intent a() {
        return this.f188b;
    }

    public final int b() {
        return this.f189c;
    }

    public final int c() {
        return this.f190f;
    }

    public final IntentSender d() {
        return this.f187a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i10) {
        r.e(dest, "dest");
        dest.writeParcelable(this.f187a, i10);
        dest.writeParcelable(this.f188b, i10);
        dest.writeInt(this.f189c);
        dest.writeInt(this.f190f);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public IntentSenderRequest(Parcel parcel) {
        r.e(parcel, "parcel");
        Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
        r.b(parcelable);
        this((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
    }
}
