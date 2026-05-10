package com.google.gson;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    class a extends v {
        a() {
        }

        @Override // com.google.gson.v
        public Object b(a5.a aVar) throws IOException {
            if (aVar.L0() != a5.b.NULL) {
                return v.this.b(aVar);
            }
            aVar.H0();
            return null;
        }

        @Override // com.google.gson.v
        public void d(a5.c cVar, Object obj) throws IOException {
            if (obj == null) {
                cVar.q0();
            } else {
                v.this.d(cVar, obj);
            }
        }
    }

    public final v a() {
        return new a();
    }

    public abstract Object b(a5.a aVar);

    public final i c(Object obj) {
        try {
            w4.g gVar = new w4.g();
            d(gVar, obj);
            return gVar.R0();
        } catch (IOException e10) {
            throw new j(e10);
        }
    }

    public abstract void d(a5.c cVar, Object obj);
}
