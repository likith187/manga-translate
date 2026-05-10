package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import androidx.appcompat.app.t;
import com.google.android.gms.common.util.DynamiteApi;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public abstract class DynamiteModule {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Boolean f8061g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f8062h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f8063i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f8064j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Boolean f8065k;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static m f8070p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static n f8071q;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final ThreadLocal f8066l = new ThreadLocal();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final ThreadLocal f8067m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final b.a f8068n = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f8055a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f8056b = new f();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f8057c = new g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f8058d = new h();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f8059e = new i();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f8060f = new j();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final b f8069o = new k();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        /* synthetic */ a(String str, l lVar) {
            super(str);
        }

        /* synthetic */ a(String str, Throwable th, l lVar) {
            super(str, th);
        }
    }

    public interface b {

        public interface a {
        }
    }

    public static int a(Context context, String str) {
        return b(context, str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0097 A[Catch: all -> 0x0036, TryCatch #1 {, blocks: (B:9:0x0026, B:11:0x0032, B:49:0x00a0, B:16:0x003b, B:18:0x0041, B:20:0x0047, B:25:0x004d, B:27:0x0051, B:31:0x005b, B:33:0x0063, B:36:0x006a, B:40:0x007f, B:41:0x0087, B:39:0x0071, B:44:0x008a, B:47:0x008d, B:48:0x0097, B:17:0x003e), top: B:119:0x0026, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x014d A[Catch: all -> 0x00cf, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x00cf, blocks: (B:3:0x0002, B:57:0x00c4, B:59:0x00ca, B:66:0x00ee, B:87:0x013f, B:91:0x014d, B:109:0x01a0, B:110:0x01a3, B:106:0x019a, B:64:0x00d3, B:112:0x01a5, B:4:0x0003, B:7:0x0009, B:8:0x0025, B:55:0x00c1, B:21:0x0048, B:42:0x0088, B:45:0x008b, B:52:0x00a3, B:56:0x00c3, B:54:0x00a5), top: B:132:0x0002, inners: #4, #6 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0198 -> B:116:0x019d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x019a -> B:116:0x019d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int b(android.content.Context r10, java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.b(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e0  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int c(android.content.Context r8, java.lang.String r9, boolean r10, boolean r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.c(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static void d(ClassLoader classLoader) throws a {
        n nVar;
        l lVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder == null) {
                nVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                nVar = iInterfaceQueryLocalInterface instanceof n ? (n) iInterfaceQueryLocalInterface : new n(iBinder);
            }
            f8071q = nVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new a("Failed to instantiate dynamite loader", e10, lVar);
        }
    }

    private static boolean e(Cursor cursor) {
        t.a(f8066l.get());
        return false;
    }

    private static boolean f(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f8065k)) {
            return true;
        }
        boolean z10 = false;
        if (f8065k == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (com.google.android.gms.common.b.e().g(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z10 = true;
            }
            f8065k = Boolean.valueOf(z10);
            if (z10 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f8063i = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    private static m g(Context context) {
        m mVar;
        synchronized (DynamiteModule.class) {
            m mVar2 = f8070p;
            if (mVar2 != null) {
                return mVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    mVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    mVar = iInterfaceQueryLocalInterface instanceof m ? (m) iInterfaceQueryLocalInterface : new m(iBinder);
                }
                if (mVar != null) {
                    f8070p = mVar;
                    return mVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }
}
