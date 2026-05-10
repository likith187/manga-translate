package com.ai.slp.library.impl.component;

import java.util.Map;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends b implements b1.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b1.b f4495k;

    private c(z0.b bVar, b1.b bVar2) {
        super(bVar);
        this.f4495k = bVar2;
    }

    @Override // com.ai.slp.library.impl.component.b
    protected void B() {
        J();
    }

    @Override // com.ai.slp.library.impl.component.b
    protected y0.a F() {
        return K();
    }

    @Override // com.ai.slp.library.impl.component.b
    protected y0.a G() {
        return L();
    }

    public final c I(c attachCtx, z0.b ctx) {
        r.e(attachCtx, "$this$attachCtx");
        r.e(ctx, "ctx");
        attachCtx.f4492h = ctx;
        return attachCtx;
    }

    protected abstract void J();

    protected abstract y0.a K();

    protected abstract y0.a L();

    @Override // b1.b
    public b1.b a(b1.b bVar) {
        b1.b bVarA = this.f4495k.a(bVar);
        r.d(bVarA, "config.setConfigtor(configtor)");
        return bVarA;
    }

    @Override // b1.b
    public b1.e b(b1.d params) {
        r.e(params, "params");
        b1.e eVarB = this.f4495k.b(params);
        r.d(eVarB, "config.getParams(params)");
        return eVarB;
    }

    @Override // b1.b
    public b1.b d(b1.d params, Object obj) {
        r.e(params, "params");
        b1.b bVarD = this.f4495k.d(params, obj);
        r.d(bVarD, "config.setParamsValue(params, value)");
        return bVarD;
    }

    @Override // b1.b
    public Object e(b1.d params) {
        r.e(params, "params");
        return this.f4495k.e(params);
    }

    @Override // b1.b
    public Map h() {
        Map mapH = this.f4495k.h();
        r.d(mapH, "config.paramsMap");
        return mapH;
    }

    protected c(z0.b bVar) {
        this(bVar, new b1.a());
    }
}
