package q5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static Bundle a(Context context, String str) {
        Bundle bundleC = c(context, Uri.parse("content://com.heytap.appplatform.dispatcher/find_transfer/" + str));
        return bundleC == null ? b(context, str) : bundleC;
    }

    private static Bundle b(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("com.heytap.epona.Dispatcher.TRANSFER_KEY", str);
        return context.getContentResolver().call("com.heytap.appplatform.dispatcher", "com.heytap.epona.Dispatcher.FIND_TRANSFER", (String) null, bundle);
    }

    private static Bundle c(Context context, Uri uri) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null);
            try {
                if (cursorQuery != null) {
                    Bundle bundleI = m5.a.i(cursorQuery);
                    cursorQuery.close();
                    return bundleI;
                }
                a.c("ProviderUtils", "Get cursor null.", new Object[0]);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            } finally {
            }
        } catch (Exception e10) {
            a.c("ProviderUtils", "Get cursor Exception : " + e10, new Object[0]);
            e10.printStackTrace();
            return null;
        }
    }
}
