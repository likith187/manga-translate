package k0;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.j0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.flow.f;
import n8.q;
import n8.w;
import q0.e;
import q0.i;
import z.c;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f12880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f12881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f12882c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f12883d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.b f12884e;

    public b(Map initialState) {
        r.e(initialState, "initialState");
        this.f12880a = j0.s(initialState);
        this.f12881b = new LinkedHashMap();
        this.f12882c = new LinkedHashMap();
        this.f12883d = new LinkedHashMap();
        this.f12884e = new e.b() { // from class: k0.a
            @Override // q0.e.b
            public final Bundle saveState() {
                return b.c(this.f12879a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle c(b bVar) {
        q[] qVarArr;
        for (Map.Entry entry : j0.q(bVar.f12883d).entrySet()) {
            bVar.d((String) entry.getKey(), ((f) entry.getValue()).getValue());
        }
        for (Map.Entry entry2 : j0.q(bVar.f12881b).entrySet()) {
            bVar.d((String) entry2.getKey(), ((e.b) entry2.getValue()).saveState());
        }
        Map map = bVar.f12880a;
        if (map.isEmpty()) {
            qVarArr = new q[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry entry3 : map.entrySet()) {
                arrayList.add(w.a((String) entry3.getKey(), entry3.getValue()));
            }
            qVarArr = (q[]) arrayList.toArray(new q[0]);
        }
        Bundle bundleA = c.a((q[]) Arrays.copyOf(qVarArr, qVarArr.length));
        i.a(bundleA);
        return bundleA;
    }

    public final e.b b() {
        return this.f12884e;
    }

    public final void d(String key, Object obj) {
        r.e(key, "key");
        this.f12880a.put(key, obj);
        f fVar = (f) this.f12882c.get(key);
        if (fVar != null) {
            fVar.setValue(obj);
        }
        f fVar2 = (f) this.f12883d.get(key);
        if (fVar2 != null) {
            fVar2.setValue(obj);
        }
    }

    public /* synthetic */ b(Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? j0.h() : map);
    }
}
