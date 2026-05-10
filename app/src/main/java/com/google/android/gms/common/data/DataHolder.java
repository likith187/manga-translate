package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final a f7743n = new b(new String[0], null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f7744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String[] f7745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Bundle f7746c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CursorWindow[] f7747f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f7748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Bundle f7749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int[] f7750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f7751k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f7752l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f7753m = true;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f7754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList f7755b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HashMap f7756c = new HashMap();
    }

    DataHolder(int i10, String[] strArr, CursorWindow[] cursorWindowArr, int i11, Bundle bundle) {
        this.f7744a = i10;
        this.f7745b = strArr;
        this.f7747f = cursorWindowArr;
        this.f7748h = i11;
        this.f7749i = bundle;
    }

    public Bundle D0() {
        return this.f7749i;
    }

    public int E0() {
        return this.f7748h;
    }

    public final void F0() {
        this.f7746c = new Bundle();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = this.f7745b;
            if (i11 >= strArr.length) {
                break;
            }
            this.f7746c.putInt(strArr[i11], i11);
            i11++;
        }
        this.f7750j = new int[this.f7747f.length];
        int numRows = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f7747f;
            if (i10 >= cursorWindowArr.length) {
                this.f7751k = numRows;
                return;
            }
            this.f7750j[i10] = numRows;
            numRows += this.f7747f[i10].getNumRows() - (numRows - cursorWindowArr[i10].getStartPosition());
            i10++;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            try {
                if (!this.f7752l) {
                    this.f7752l = true;
                    int i10 = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.f7747f;
                        if (i10 >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i10].close();
                        i10++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.f7753m && this.f7747f.length > 0 && !isClosed()) {
                close();
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + toString() + ")");
            }
        } finally {
            super.finalize();
        }
    }

    public boolean isClosed() {
        boolean z10;
        synchronized (this) {
            z10 = this.f7752l;
        }
        return z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        String[] strArr = this.f7745b;
        int iA = n3.b.a(parcel);
        n3.b.n(parcel, 1, strArr, false);
        n3.b.p(parcel, 2, this.f7747f, i10, false);
        n3.b.g(parcel, 3, E0());
        n3.b.d(parcel, 4, D0(), false);
        n3.b.g(parcel, 1000, this.f7744a);
        n3.b.b(parcel, iA);
        if ((i10 & 1) != 0) {
            close();
        }
    }
}
