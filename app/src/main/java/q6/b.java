package q6;

import android.content.Context;
import com.oplus.epona.e;
import com.oplus.epona.g;
import com.oplus.epona.l;

/* JADX INFO: loaded from: classes2.dex */
public class b implements e {
    @Override // com.oplus.epona.e
    public boolean a(Context context) {
        if (context != null) {
            return l.a() ? new g().a(context) : context.checkCallingPermission("com.oppo.permission.safe.SECURITY") == 0;
        }
        return false;
    }
}
