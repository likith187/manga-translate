package com.oplus.aiunit.core.service;

import com.oplus.aiunit.core.IUnit;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.s;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class ServiceManager$UnitStatusProxy$onDestroy$2 extends s implements l {
    final /* synthetic */ String $detectName;
    final /* synthetic */ String $unitName;
    final /* synthetic */ ServiceManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServiceManager$UnitStatusProxy$onDestroy$2(ServiceManager serviceManager, String str, String str2) {
        super(1);
        this.this$0 = serviceManager;
        this.$detectName = str;
        this.$unitName = str2;
    }

    @Override // w8.l
    public final Boolean invoke(IUnit it) {
        r.e(it, "it");
        return Boolean.valueOf(r.a(this.this$0.getUnitNameCompat(it, this.$detectName), this.$unitName) || !this.this$0.getUnitActiveCompat(it));
    }
}
