package d;

import android.content.Context;
import android.content.Intent;
import d.a;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.i;
import kotlin.collections.j0;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.q;
import n8.w;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11453a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent a(String[] input) {
            r.e(input, "input");
            Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", input);
            r.d(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
            return intentPutExtra;
        }

        private a() {
        }
    }

    @Override // d.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String[] input) {
        r.e(context, "context");
        r.e(input, "input");
        return f11453a.a(input);
    }

    @Override // d.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a.C0131a b(Context context, String[] input) {
        r.e(context, "context");
        r.e(input, "input");
        if (input.length == 0) {
            return new a.C0131a(j0.h());
        }
        for (String str : input) {
            if (r.a.a(context, str) != 0) {
                return null;
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(b9.d.c(j0.e(input.length), 16));
        for (String str2 : input) {
            q qVarA = w.a(str2, Boolean.TRUE);
            linkedHashMap.put(qVarA.getFirst(), qVarA.getSecond());
        }
        return new a.C0131a(linkedHashMap);
    }

    @Override // d.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Map c(int i10, Intent intent) {
        if (i10 == -1 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                return j0.h();
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i11 : intArrayExtra) {
                arrayList.add(Boolean.valueOf(i11 == 0));
            }
            return j0.o(o.w0(i.B(stringArrayExtra), arrayList));
        }
        return j0.h();
    }
}
