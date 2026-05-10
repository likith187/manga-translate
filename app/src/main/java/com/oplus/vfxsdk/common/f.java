package com.oplus.vfxsdk.common;

import e8.e;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends com.oplus.vfxsdk.common.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final a f11267t = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private f f11268p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HashMap f11269q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private e8.e f11270r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final e8.d f11271s;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements e8.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f11272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AnimLine f11273b;

        b(o oVar, AnimLine animLine) {
            this.f11272a = oVar;
            this.f11273b = animLine;
        }

        @Override // e8.e
        public void a(o oVar, String str, Object obj, int i10) {
            e.a.a(this, oVar, str, obj, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(value, "value");
            this.f11272a.a(value, this.f11273b.getIndex());
        }
    }

    public static final class c implements e8.d {
        c() {
        }

        @Override // e8.d
        public Object a(o oVar, String key, int i10) {
            Object objD;
            kotlin.jvm.internal.r.e(key, "key");
            return (oVar == null || (objD = oVar.d(i10)) == null) ? new Object() : objD;
        }
    }

    public static final class d implements e8.d {
        d() {
        }

        @Override // e8.d
        public Object a(o oVar, String key, int i10) {
            Object objD;
            kotlin.jvm.internal.r.e(key, "key");
            return (oVar == null || (objD = oVar.d(i10)) == null) ? new Object() : objD;
        }
    }

    public static final class e implements e8.e {
        e() {
        }

        @Override // e8.e
        public void a(o oVar, String key, Object value, int i10) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(value, "value");
            if (oVar == null) {
                return;
            }
            oVar.a(value, i10);
        }

        @Override // e8.e
        public void b(String key, Object value) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(value, "value");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(COEData coeData, int i10) {
        super(coeData, i10);
        kotlin.jvm.internal.r.e(coeData, "coeData");
        this.f11268p = this;
        this.f11269q = new HashMap();
        this.f11270r = new e();
        this.f11271s = new d();
    }

    @Override // com.oplus.vfxsdk.common.q
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public f getAnimator() {
        return this.f11268p;
    }

    public final HashMap Q() {
        return this.f11269q;
    }

    public final e8.d R() {
        return this.f11271s;
    }

    public final e8.e S() {
        return this.f11270r;
    }

    public final void T(Animator animator, AnimLine animeLine, e8.e builtinUpdate) {
        kotlin.jvm.internal.r.e(animator, "animator");
        kotlin.jvm.internal.r.e(animeLine, "animeLine");
        kotlin.jvm.internal.r.e(builtinUpdate, "builtinUpdate");
        String str = (String) COEParse.Companion.a().get(animeLine.getKey());
        if (str == null) {
            return;
        }
        o oVar = this.f11269q.containsKey(str) ? (o) this.f11269q.get(str) : new o();
        kotlin.jvm.internal.r.b(oVar);
        oVar.i(str);
        oVar.k(animeLine.getType());
        r rVar = (r) kotlin.collections.i.H(animeLine.getAnimKeys(), 0);
        oVar.a(Float.valueOf(rVar != null ? rVar.getValue() : 0.0f), animeLine.getIndex());
        animeLine.setChannelData(oVar);
        animator.setAnimLineUpdate(animeLine.hashCode(), new b(oVar, animeLine));
        animator.setAnimLinePop(animeLine.hashCode(), new c());
        this.f11269q.put(oVar.e(), oVar);
        oVar.l(builtinUpdate);
    }

    public final void U(HashMap animParams, e8.e update) {
        Animator animator;
        kotlin.jvm.internal.r.e(animParams, "animParams");
        kotlin.jvm.internal.r.e(update, "update");
        for (Map.Entry entry : animParams.entrySet()) {
            HashMap mapK = k();
            if (mapK == null || (animator = (Animator) mapK.get(entry.getKey())) == null) {
                return;
            }
            kotlin.jvm.internal.r.b(animator);
            for (AnimLine animLine : ((AnimatorValue) entry.getValue()).getAnimLines()) {
                T(animator, animLine, update);
            }
        }
    }

    @Override // com.oplus.vfxsdk.common.a
    public HashMap t(e8.e eVar, e8.d dVar) {
        return super.t(this.f11270r, this.f11271s);
    }
}
