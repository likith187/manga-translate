package com.ai.slp.library.mt;

import com.oppo.yyyy.mt.LibMt;
import com.slp.library.common.Utils;
import com.slp.library.common.log.SlpLogs;
import com.slp.library.track.TrackWrap;
import java.io.File;
import java.util.HashMap;
import java.util.Set;
import kotlin.collections.j0;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import n8.h0;
import n8.j;
import n8.k;
import n8.w;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class d extends d1.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j f4504o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final HashMap f4505p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f4506q;

    static final class a extends s implements w8.a {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final LibMt mo8invoke() {
            return new LibMt();
        }
    }

    static final class b extends s implements l {
        final /* synthetic */ TrackWrap $obtainTrack;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(TrackWrap trackWrap) {
            super(1);
            this.$obtainTrack = trackWrap;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).longValue());
            return h0.INSTANCE;
        }

        public final void invoke(long j10) {
            this.$obtainTrack.add("load_mode_time", Long.valueOf(j10));
        }
    }

    static final class c extends s implements w8.a {
        final /* synthetic */ String $tempPath;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(0);
            this.$tempPath = str;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public /* bridge */ /* synthetic */ Object mo8invoke() {
            return Long.valueOf(invoke());
        }

        public final long invoke() {
            LibMt libMtU = d.this.U();
            String tempPath = this.$tempPath;
            r.d(tempPath, "tempPath");
            return libMtU.loadModel(tempPath);
        }
    }

    /* JADX INFO: renamed from: com.ai.slp.library.mt.d$d, reason: collision with other inner class name */
    static final class C0059d extends s implements l {
        final /* synthetic */ TrackWrap $obtainTrack;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0059d(TrackWrap trackWrap) {
            super(1);
            this.$obtainTrack = trackWrap;
        }

        @Override // w8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).longValue());
            return h0.INSTANCE;
        }

        public final void invoke(long j10) {
            this.$obtainTrack.add("translate_time", Long.valueOf(j10));
        }
    }

    static final class e extends s implements w8.a {
        final /* synthetic */ c0 $id;
        final /* synthetic */ f $inData;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(c0 c0Var, f fVar) {
            super(0);
            this.$id = c0Var;
            this.$inData = fVar;
        }

        @Override // w8.a
        /* JADX INFO: renamed from: invoke */
        public final String mo8invoke() {
            return d.this.U().translate(((Long) this.$id.element).longValue(), this.$inData.b());
        }
    }

    public d(z0.b bVar) {
        super(bVar);
        this.f4504o = k.b(a.INSTANCE);
        this.f4505p = new HashMap();
        this.f4506q = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LibMt U() {
        return (LibMt) this.f4504o.getValue();
    }

    private final Object V(l lVar, w8.a aVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Object objMo8invoke = aVar.mo8invoke();
        lVar.invoke(Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
        return objMo8invoke;
    }

    private final boolean X() {
        Set<String> setKeySet = this.f4505p.keySet();
        r.d(setKeySet, "cacheMaps.keys");
        for (String str : setKeySet) {
            SlpLogs.LogImpl logImpl = this.f4493i.INFOS;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" unload -> ");
            LibMt libMtU = U();
            Long l10 = (Long) this.f4505p.remove(str);
            if (l10 != null) {
                r.d(l10, "cacheMaps.remove(it) ?: return@forEach");
                sb.append(libMtU.destory(l10.longValue()));
                logImpl.log(sb.toString());
            }
        }
        return this.f4505p.size() == 0;
    }

    @Override // com.ai.slp.library.impl.component.c
    protected void J() {
    }

    @Override // com.ai.slp.library.impl.component.i, com.ai.slp.library.impl.component.c
    protected y0.a K() {
        b1.d dVar = com.ai.slp.library.mt.b.f4500a;
        r.d(dVar, "IOfflineTranslateComponentParams.MT_MODEL_PATH");
        String modelPath = (String) e(dVar);
        if (Utils.isEmpty(modelPath) || !new File(modelPath, "model").exists()) {
            throw new com.ai.slp.library.base.exception.f(e1.a.f11680j, "Model Path Not Found ！");
        }
        r.d(modelPath, "modelPath");
        this.f4506q = modelPath;
        y0.a aVarK = super.K();
        r.d(aVarK, "super.startComponent()");
        return aVarK;
    }

    @Override // com.ai.slp.library.impl.component.i, com.ai.slp.library.impl.component.c
    protected y0.a L() {
        X();
        y0.a aVarL = super.L();
        r.d(aVarL, "super.stopComponent()");
        return aVarL;
    }

    @Override // d1.a
    protected String R() {
        return "OfflineTranslate";
    }

    public final g W(f inData) {
        r.e(inData, "inData");
        if (!U().a()) {
            throw new com.ai.slp.library.base.exception.f(com.ai.slp.library.base.exception.a.f4477b, "MT Init Error");
        }
        String tempPath = new File(this.f4506q, "/model/" + inData.a().getCode() + inData.c().getCode() + "/model.conf").getAbsolutePath();
        if (!new File(tempPath).exists()) {
            throw new com.ai.slp.library.base.exception.f(com.ai.slp.library.base.exception.a.f4477b, "Model File Not Found !");
        }
        c0 c0Var = new c0();
        c0Var.element = (Long) this.f4505p.remove(tempPath);
        TrackWrap trackWrapS = S();
        X();
        Set<String> setKeySet = this.f4505p.keySet();
        r.d(setKeySet, "cacheMaps.keys");
        for (String str : setKeySet) {
            SlpLogs.LogImpl logImpl = this.f4493i.INFOS;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" unload -> ");
            LibMt libMtU = U();
            Long l10 = (Long) this.f4505p.get(str);
            if (l10 != null) {
                r.d(l10, "cacheMaps[it] ?: return@forEach");
                sb.append(libMtU.destory(l10.longValue()));
                logImpl.log(sb.toString());
            }
        }
        if (((Long) c0Var.element) == null) {
            c0Var.element = (Long) V(new b(trackWrapS), new c(tempPath));
        }
        HashMap map = this.f4505p;
        r.d(tempPath, "tempPath");
        map.put(tempPath, (Long) c0Var.element);
        g gVar = new g(inData, (String) V(new C0059d(trackWrapS), new e(c0Var, inData)));
        trackWrapS.add("result", j0.k(w.a("from", inData.a().getName()), w.a("to", inData.c().getName()), w.a("queryLength", Integer.valueOf(inData.b().length())), w.a("resultLength", Integer.valueOf(gVar.a().length()))));
        trackWrapS.commit().clean();
        return gVar;
    }
}
