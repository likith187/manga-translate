package q7;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import s7.f;
import s7.g;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map f15354a = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String d(String str, String str2, NumberFormatException numberFormatException) {
        return "getLong key=" + str + ", value=" + str2 + ", exception=" + numberFormatException.toString();
    }

    public long b(final String str, long j10) {
        final String str2 = (String) this.f15354a.get(str);
        if (TextUtils.isEmpty(str2)) {
            return j10;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e10) {
            f.f("MemoryPreference", new g() { // from class: q7.a
                @Override // s7.g
                public final Object get() {
                    return b.d(str, str2, e10);
                }
            });
            return j10;
        }
    }

    public String c(String str, String str2) {
        String str3 = (String) this.f15354a.get(str);
        return TextUtils.isEmpty(str3) ? str2 : str3;
    }

    public void e(String str, long j10) {
        this.f15354a.put(str, String.valueOf(j10));
    }

    public void f(String str, String str2) {
        this.f15354a.put(str, str2);
    }
}
