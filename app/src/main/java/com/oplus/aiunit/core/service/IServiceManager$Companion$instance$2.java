package com.oplus.aiunit.core.service;

import kotlin.jvm.internal.s;

/* JADX INFO: loaded from: classes.dex */
public final class IServiceManager$Companion$instance$2 extends s implements w8.a {
    public static final IServiceManager$Companion$instance$2 INSTANCE = new IServiceManager$Companion$instance$2();

    public IServiceManager$Companion$instance$2() {
        super(0);
    }

    @Override // w8.a
    /* JADX INFO: renamed from: invoke */
    public final ServiceManager mo8invoke() {
        return new ServiceManager();
    }
}
