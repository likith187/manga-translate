package com.coloros.translate;

/* JADX INFO: loaded from: classes.dex */
public interface d {

    public static final class a {
        public static /* synthetic */ void a(d dVar, Boolean bool, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLanguageChanged");
            }
            if ((i10 & 1) != 0) {
                bool = null;
            }
            dVar.i(bool);
        }
    }

    void i(Boolean bool);
}
