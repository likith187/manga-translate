package com.oplus.aisubsystem.core.client;

import com.oplus.aiunit.core.ParamPackage;

/* JADX INFO: loaded from: classes.dex */
public interface b {

    public static final class a {
        public static /* synthetic */ void a(b bVar, ParamPackage paramPackage, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stop");
            }
            if ((i10 & 1) != 0) {
                paramPackage = null;
            }
            bVar.stop(paramPackage);
        }
    }

    void stop(ParamPackage paramPackage);
}
