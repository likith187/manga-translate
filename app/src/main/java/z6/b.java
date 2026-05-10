package z6;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static Bundle a(Context context, String str) {
        Bundle bundleC = c(context, Uri.parse("content://com.oplus.appplatform.dispatcher/find_transfer/" + str));
        return bundleC == null ? b(context, str) : bundleC;
    }

    private static Bundle b(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("com.oplus.epona.Dispatcher.TRANSFER_KEY", str);
        try {
            return context.getContentResolver().call("com.oplus.appplatform.dispatcher", "com.oplus.epona.Dispatcher.FIND_TRANSFER", (String) null, bundle);
        } catch (Exception unused) {
            c8.a.d("Epona->ProviderUtils", "failed to call provider: com.oplus.appplatform.dispatcher", new Object[0]);
            return null;
        }
    }

    private static Bundle c(Context context, Uri uri) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null);
            try {
                if (cursorQuery != null) {
                    Bundle bundleI = v6.a.i(cursorQuery);
                    cursorQuery.close();
                    return bundleI;
                }
                c8.a.d("Epona->ProviderUtils", "Get cursor null.", new Object[0]);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            } finally {
            }
        } catch (Exception e10) {
            c8.a.d("Epona->ProviderUtils", "Get cursor Exception : " + e10, new Object[0]);
            e10.printStackTrace();
            return null;
        }
    }
}
