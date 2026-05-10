package com.coloros.translate.screen.translate.business;

/* JADX INFO: loaded from: classes.dex */
public interface e {

    public static final class a {
        public static /* synthetic */ void a(e eVar, m mVar, int i10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: translate");
            }
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            eVar.c(mVar, i10);
        }
    }

    void c(m mVar, int i10);
}
