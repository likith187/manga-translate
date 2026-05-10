package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ParcelFileDescriptor f7738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f7739c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f7740f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f7741h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private File f7742i;

    BitmapTeleporter(int i10, ParcelFileDescriptor parcelFileDescriptor, int i11) {
        this.f7737a = i10;
        this.f7738b = parcelFileDescriptor;
        this.f7739c = i11;
    }

    private static final void D0(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e10) {
            Log.w("BitmapTeleporter", "Could not close stream", e10);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        if (this.f7738b == null) {
            Bitmap bitmap = (Bitmap) k.g(this.f7740f);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byte[] bArrArray = byteBufferAllocate.array();
            File file = this.f7742i;
            if (file == null) {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
            try {
                File fileCreateTempFile = File.createTempFile("teleporter", ".tmp", file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    this.f7738b = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                    fileCreateTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(bArrArray.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(bArrArray);
                        } catch (IOException e10) {
                            throw new IllegalStateException("Could not write into unlinked file", e10);
                        }
                    } finally {
                        D0(dataOutputStream);
                    }
                } catch (FileNotFoundException unused) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e11) {
                throw new IllegalStateException("Could not create temporary file", e11);
            }
        }
        int iA = n3.b.a(parcel);
        n3.b.g(parcel, 1, this.f7737a);
        n3.b.l(parcel, 2, this.f7738b, i10 | 1, false);
        n3.b.g(parcel, 3, this.f7739c);
        n3.b.b(parcel, iA);
        this.f7738b = null;
    }
}
