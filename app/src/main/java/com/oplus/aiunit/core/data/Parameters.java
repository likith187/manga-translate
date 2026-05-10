package com.oplus.aiunit.core.data;

import com.oplus.aiunit.core.ParamPackage;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class Parameters {
    public static final Companion Companion = new Companion(null);
    public static final int PERFORMANCE_CPU = 0;
    public static final int PERFORMANCE_GPU = 1;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public abstract ParamPackage applyParam();

    public Parameters clone() {
        return this;
    }
}
