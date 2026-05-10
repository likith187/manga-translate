package com.oplus.compat.app;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.graphics.ColorSpace;
import android.graphics.GraphicBuffer;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class TaskSnapshotNative implements Parcelable {
    public static final Parcelable.Creator<TaskSnapshotNative> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f11153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ComponentName f11154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final GraphicBuffer f11155c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f11156f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f11157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Point f11158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f11159j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f11160k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f11161l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f11162m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f11163n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f11164o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ColorSpace f11165p;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TaskSnapshotNative createFromParcel(Parcel parcel) {
            return new TaskSnapshotNative(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TaskSnapshotNative[] newArray(int i10) {
            return new TaskSnapshotNative[i10];
        }
    }

    /* synthetic */ TaskSnapshotNative(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        GraphicBuffer graphicBuffer = this.f11155c;
        int width = graphicBuffer != null ? graphicBuffer.getWidth() : 0;
        GraphicBuffer graphicBuffer2 = this.f11155c;
        return "TaskSnapshot{ mId=" + this.f11153a + " mTopActivityComponent=" + this.f11154b.flattenToShortString() + " mSnapshot=" + this.f11155c + " (" + width + "x" + (graphicBuffer2 != null ? graphicBuffer2.getHeight() : 0) + ") mColorSpace=" + this.f11165p.toString() + " mOrientation=" + this.f11156f + " mRotation=" + this.f11157h + " mTaskSize=" + this.f11158i.toString() + " mContentInsets=" + this.f11159j.toShortString() + " mIsLowResolution=" + this.f11160k + " mIsRealSnapshot=" + this.f11161l + " mWindowingMode=" + this.f11162m + " mSystemUiVisibility=" + this.f11163n + " mIsTranslucent=" + this.f11164o;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f11153a);
        ComponentName.writeToParcel(this.f11154b, parcel);
        GraphicBuffer graphicBuffer = this.f11155c;
        parcel.writeParcelable((graphicBuffer == null || graphicBuffer.isDestroyed()) ? null : this.f11155c, 0);
        parcel.writeInt(this.f11165p.getId());
        parcel.writeInt(this.f11156f);
        parcel.writeInt(this.f11157h);
        parcel.writeParcelable(this.f11158i, 0);
        parcel.writeParcelable(this.f11159j, 0);
        parcel.writeBoolean(this.f11160k);
        parcel.writeBoolean(this.f11161l);
        parcel.writeInt(this.f11162m);
        parcel.writeInt(this.f11163n);
        parcel.writeBoolean(this.f11164o);
    }

    private TaskSnapshotNative(Parcel parcel) {
        this.f11153a = parcel.readLong();
        this.f11154b = ComponentName.readFromParcel(parcel);
        this.f11155c = parcel.readParcelable(null);
        int i10 = parcel.readInt();
        this.f11165p = (i10 < 0 || i10 >= ColorSpace.Named.values().length) ? ColorSpace.get(ColorSpace.Named.SRGB) : ColorSpace.get(ColorSpace.Named.values()[i10]);
        this.f11156f = parcel.readInt();
        this.f11157h = parcel.readInt();
        this.f11158i = (Point) parcel.readParcelable(null);
        this.f11159j = (Rect) parcel.readParcelable(null);
        this.f11160k = parcel.readBoolean();
        this.f11161l = parcel.readBoolean();
        this.f11162m = parcel.readInt();
        this.f11163n = parcel.readInt();
        this.f11164o = parcel.readBoolean();
    }
}
