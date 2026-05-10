package p6;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.oplus.backup.sdk.common.utils.Constants;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15200a;

        static {
            int[] iArr = new int[c.values().length];
            f15200a = iArr;
            try {
                iArr[c.STATIC_COMPONENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15200a[c.DYNAMIC_SIMSLOT_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15200a[c.DYNAMIC_SIMSLOT_2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: p6.b$b, reason: collision with other inner class name */
    public enum EnumC0201b {
        CACHE_ONLY,
        CACHE_AND_DB
    }

    public enum c {
        STATIC_COMPONENT,
        DYNAMIC_SIMSLOT_1,
        DYNAMIC_SIMSLOT_2
    }

    private static Cursor a(ContentResolver contentResolver, c cVar, String str) {
        Cursor cursorC = p6.a.e().c(cVar, str);
        return (cursorC != null || p6.a.b(cVar) == EnumC0201b.CACHE_ONLY) ? cursorC : contentResolver.query(g(cVar), null, "featurename=?", new String[]{str}, null);
    }

    public static boolean b(ContentResolver contentResolver, String str, boolean z10) {
        return c(contentResolver, c.STATIC_COMPONENT, str, z10);
    }

    public static boolean c(ContentResolver contentResolver, c cVar, String str, boolean z10) {
        String strF = f(contentResolver, cVar, str, "boolean");
        if (!TextUtils.isEmpty(strF)) {
            return Boolean.parseBoolean(strF);
        }
        Log.e("AppFeatureProviderUtils", "getBoolean: getStringForFeature return null");
        return z10;
    }

    public static int d(ContentResolver contentResolver, String str, int i10) {
        return e(contentResolver, c.STATIC_COMPONENT, str, i10);
    }

    public static int e(ContentResolver contentResolver, c cVar, String str, int i10) {
        String strF = f(contentResolver, cVar, str, "int");
        if (!TextUtils.isEmpty(strF)) {
            return Integer.parseInt(strF);
        }
        Log.e("AppFeatureProviderUtils", "getInt: getStringForFeature return null");
        return i10;
    }

    private static String f(ContentResolver contentResolver, c cVar, String str, String str2) {
        int iIndexOf;
        String strSubstring = null;
        if (contentResolver != null && !TextUtils.isEmpty(str) && str2 != null) {
            Cursor cursorA = a(contentResolver, cVar, str);
            if (cursorA != null && cursorA.moveToFirst()) {
                do {
                    String string = cursorA.getString(cursorA.getColumnIndexOrThrow("parameters"));
                    if (string != null && !string.isEmpty()) {
                        String[] strArrSplit = string.split(Constants.DataMigration.SPLIT_TAG);
                        if (strArrSplit.length > 0) {
                            int length = strArrSplit.length;
                            int i10 = 0;
                            while (true) {
                                if (i10 < length) {
                                    String str3 = strArrSplit[i10];
                                    if (str3 != null && !str3.isEmpty() && (iIndexOf = str3.indexOf(":")) > 0 && str3.substring(0, iIndexOf).equals(str2)) {
                                        strSubstring = str3.substring(iIndexOf + 1);
                                        break;
                                    }
                                    i10++;
                                } else {
                                    break;
                                }
                            }
                            if (strSubstring == null) {
                                break;
                                break;
                            }
                            break;
                        }
                    } else {
                        strSubstring = "";
                    }
                } while (cursorA.moveToNext());
            }
            if (cursorA != null) {
                cursorA.close();
            }
        }
        return strSubstring;
    }

    static Uri g(c cVar) {
        Uri uri = Uri.parse("content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider");
        int i10 = a.f15200a[cVar.ordinal()];
        if (i10 == 1) {
            return uri.buildUpon().appendPath("app_feature").build();
        }
        if (i10 == 2) {
            return uri.buildUpon().appendPath("app_feature_first").build();
        }
        if (i10 == 3) {
            return uri.buildUpon().appendPath("app_feature_second").build();
        }
        throw new IllegalArgumentException("getUriForFeatureID featureID is not support");
    }
}
