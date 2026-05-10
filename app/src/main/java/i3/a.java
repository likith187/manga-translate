package i3;

import android.util.SparseArray;
import java.util.HashMap;
import w2.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SparseArray f12565a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap f12566b;

    static {
        HashMap map = new HashMap();
        f12566b = map;
        map.put(d.DEFAULT, 0);
        f12566b.put(d.VERY_LOW, 1);
        f12566b.put(d.HIGHEST, 2);
        for (d dVar : f12566b.keySet()) {
            f12565a.append(((Integer) f12566b.get(dVar)).intValue(), dVar);
        }
    }

    public static int a(d dVar) {
        Integer num = (Integer) f12566b.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    public static d b(int i10) {
        d dVar = (d) f12565a.get(i10);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
