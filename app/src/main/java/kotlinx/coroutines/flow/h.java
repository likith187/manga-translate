package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.internal.g0;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
final class h extends kotlinx.coroutines.flow.internal.a implements f, b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f13232h = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13233f;

    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return h.this.collect(null, this);
        }
    }

    public h(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean i(Object obj, Object obj2) {
        int i10;
        kotlinx.coroutines.flow.internal.c[] cVarArrE;
        synchronized (this) {
            Object obj3 = f13232h.get(this);
            if (obj != null && !r.a(obj3, obj)) {
                return false;
            }
            if (r.a(obj3, obj2)) {
                return true;
            }
            f13232h.set(this, obj2);
            int i11 = this.f13233f;
            if ((i11 & 1) != 0) {
                this.f13233f = i11 + 2;
                return true;
            }
            int i12 = i11 + 1;
            this.f13233f = i12;
            kotlinx.coroutines.flow.internal.c[] cVarArrE2 = e();
            h0 h0Var = h0.INSTANCE;
            while (true) {
                j[] jVarArr = (j[]) cVarArrE2;
                if (jVarArr != null) {
                    for (j jVar : jVarArr) {
                        if (jVar != null) {
                            jVar.g();
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.f13233f;
                    if (i10 == i12) {
                        this.f13233f = i12 + 1;
                        return true;
                    }
                    cVarArrE = e();
                    h0 h0Var2 = h0.INSTANCE;
                }
                cVarArrE2 = cVarArrE;
                i12 = i10;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Path cross not found for [B:36:0x00a3, B:38:0x00a9], limit reached: 53 */
    /* JADX WARN: Path cross not found for [B:38:0x00a9, B:36:0x00a3], limit reached: 53 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ca A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, kotlinx.coroutines.flow.j] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [kotlinx.coroutines.flow.j] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.flow.internal.a] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00c8 -> B:32:0x0094). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00da -> B:32:0x0094). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.c r10, kotlin.coroutines.d r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.collect(kotlinx.coroutines.flow.c, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.c
    public Object emit(Object obj, kotlin.coroutines.d dVar) {
        setValue(obj);
        return h0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public j b() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public j[] c(int i10) {
        return new j[i10];
    }

    @Override // kotlinx.coroutines.flow.f
    public Object getValue() {
        g0 g0Var = kotlinx.coroutines.flow.internal.f.f13243a;
        Object obj = f13232h.get(this);
        if (obj == g0Var) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.f
    public void setValue(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.f.f13243a;
        }
        i(null, obj);
    }
}
