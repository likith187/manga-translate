package d;

import android.content.Context;
import android.content.Intent;
import d.a;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {
    @Override // d.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String input) {
        r.e(context, "context");
        r.e(input, "input");
        return b.f11453a.a(new String[]{input});
    }

    @Override // d.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a.C0131a b(Context context, String input) {
        r.e(context, "context");
        r.e(input, "input");
        if (r.a.a(context, input) == 0) {
            return new a.C0131a(Boolean.TRUE);
        }
        return null;
    }

    @Override // d.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Boolean c(int i10, Intent intent) {
        if (intent == null || i10 != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        boolean z10 = false;
        if (intArrayExtra != null) {
            int length = intArrayExtra.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                }
                if (intArrayExtra[i11] == 0) {
                    z10 = true;
                    break;
                }
                i11++;
            }
        }
        return Boolean.valueOf(z10);
    }
}
