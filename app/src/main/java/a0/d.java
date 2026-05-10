package a0;

import a0.g;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class d {

    /* JADX INFO: renamed from: a */
    private static final androidx.collection.h f21a = new androidx.collection.h(2);

    /* JADX INFO: renamed from: b */
    private static final Comparator f22b = new Comparator() { // from class: a0.c
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return d.g((byte[]) obj, (byte[]) obj2);
        }
    };

    private interface a {
        static a a(Context context, Uri uri) {
            return new b(context, uri);
        }

        Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    private static class b implements a {

        /* JADX INFO: renamed from: a */
        private final ContentProviderClient f23a;

        b(Context context, Uri uri) {
            this.f23a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // a0.d.a
        public Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f23a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e10) {
                Log.w("FontsProvider", "Unable to query the content provider", e10);
                return null;
            }
        }

        @Override // a0.d.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f23a;
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a */
        String f24a;

        /* JADX INFO: renamed from: b */
        String f25b;

        /* JADX INFO: renamed from: c */
        List f26c;

        c(String str, String str2, List list) {
            this.f24a = str;
            this.f25b = str2;
            this.f26c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Objects.equals(this.f24a, cVar.f24a) && Objects.equals(this.f25b, cVar.f25b) && Objects.equals(this.f26c, cVar.f26c);
        }

        public int hashCode() {
            return Objects.hash(this.f24a, this.f25b, this.f26c);
        }
    }

    private static List b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean c(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals((byte[]) list.get(i10), (byte[]) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static List d(e eVar, Resources resources) {
        return eVar.b() != null ? eVar.b() : t.e.c(resources, eVar.c());
    }

    static g.a e(Context context, List list, CancellationSignal cancellationSignal) {
        v0.a.a("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < list.size(); i10++) {
                e eVar = (e) list.get(i10);
                ProviderInfo providerInfoF = f(context.getPackageManager(), eVar, context.getResources());
                if (providerInfoF == null) {
                    return g.a.b(1, null);
                }
                arrayList.add(h(context, eVar, providerInfoF.authority, cancellationSignal));
            }
            return g.a.a(0, arrayList);
        } finally {
            v0.a.b();
        }
    }

    static ProviderInfo f(PackageManager packageManager, e eVar, Resources resources) {
        v0.a.a("FontProvider.getProvider");
        try {
            List listD = d(eVar, resources);
            c cVar = new c(eVar.e(), eVar.f(), listD);
            ProviderInfo providerInfo = (ProviderInfo) f21a.get(cVar);
            if (providerInfo != null) {
                return providerInfo;
            }
            String strE = eVar.e();
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + strE);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(eVar.f())) {
                throw new PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + eVar.f());
            }
            List listB = b(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
            Collections.sort(listB, f22b);
            for (int i10 = 0; i10 < listD.size(); i10++) {
                ArrayList arrayList = new ArrayList((Collection) listD.get(i10));
                Collections.sort(arrayList, f22b);
                if (c(listB, arrayList)) {
                    f21a.put(cVar, providerInfoResolveContentProvider);
                    return providerInfoResolveContentProvider;
                }
            }
            v0.a.b();
            return null;
        } finally {
            v0.a.b();
        }
    }

    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            byte b11 = bArr2[i10];
            if (b10 != b11) {
                return b10 - b11;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static a0.g.b[] h(android.content.Context r16, a0.e r17, java.lang.String r18, android.os.CancellationSignal r19) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: a0.d.h(android.content.Context, a0.e, java.lang.String, android.os.CancellationSignal):a0.g$b[]");
    }
}
