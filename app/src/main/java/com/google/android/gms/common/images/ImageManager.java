package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import t3.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f7761a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashSet f7762b = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    @KeepName
    final class ImageReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f7763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList f7764b;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i10, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            ImageManager.h(null).execute(new a(null, this.f7763a, parcelFileDescriptor));
        }
    }

    static /* bridge */ /* synthetic */ Context a(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ Handler b(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ e c(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ Map f(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ Map g(ImageManager imageManager) {
        throw null;
    }

    static /* bridge */ /* synthetic */ ExecutorService h(ImageManager imageManager) {
        throw null;
    }
}
