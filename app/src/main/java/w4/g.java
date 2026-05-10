package w4;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class g extends a5.c {

    /* JADX INFO: renamed from: s */
    private static final Writer f16039s = new a();

    /* JADX INFO: renamed from: t */
    private static final com.google.gson.o f16040t = new com.google.gson.o("closed");

    /* JADX INFO: renamed from: p */
    private final List f16041p;

    /* JADX INFO: renamed from: q */
    private String f16042q;

    /* JADX INFO: renamed from: r */
    private com.google.gson.i f16043r;

    class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public g() {
        super(f16039s);
        this.f16041p = new ArrayList();
        this.f16043r = com.google.gson.k.INSTANCE;
    }

    private com.google.gson.i S0() {
        return (com.google.gson.i) this.f16041p.get(r1.size() - 1);
    }

    private void T0(com.google.gson.i iVar) {
        if (this.f16042q != null) {
            if (!iVar.j() || G()) {
                ((com.google.gson.l) S0()).m(this.f16042q, iVar);
            }
            this.f16042q = null;
            return;
        }
        if (this.f16041p.isEmpty()) {
            this.f16043r = iVar;
            return;
        }
        com.google.gson.i iVarS0 = S0();
        if (!(iVarS0 instanceof com.google.gson.f)) {
            throw new IllegalStateException();
        }
        ((com.google.gson.f) iVarS0).m(iVar);
    }

    @Override // a5.c
    public a5.c B() {
        if (this.f16041p.isEmpty() || this.f16042q != null) {
            throw new IllegalStateException();
        }
        if (!(S0() instanceof com.google.gson.f)) {
            throw new IllegalStateException();
        }
        this.f16041p.remove(r0.size() - 1);
        return this;
    }

    @Override // a5.c
    public a5.c D() {
        if (this.f16041p.isEmpty() || this.f16042q != null) {
            throw new IllegalStateException();
        }
        if (!(S0() instanceof com.google.gson.l)) {
            throw new IllegalStateException();
        }
        this.f16041p.remove(r0.size() - 1);
        return this;
    }

    @Override // a5.c
    public a5.c K0(double d10) {
        if (N() || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
            T0(new com.google.gson.o(Double.valueOf(d10)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d10);
    }

    @Override // a5.c
    public a5.c L0(long j10) {
        T0(new com.google.gson.o(Long.valueOf(j10)));
        return this;
    }

    @Override // a5.c
    public a5.c M0(Boolean bool) {
        if (bool == null) {
            return q0();
        }
        T0(new com.google.gson.o(bool));
        return this;
    }

    @Override // a5.c
    public a5.c N0(Number number) {
        if (number == null) {
            return q0();
        }
        if (!N()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        T0(new com.google.gson.o(number));
        return this;
    }

    @Override // a5.c
    public a5.c O0(String str) {
        if (str == null) {
            return q0();
        }
        T0(new com.google.gson.o(str));
        return this;
    }

    @Override // a5.c
    public a5.c P0(boolean z10) {
        T0(new com.google.gson.o(Boolean.valueOf(z10)));
        return this;
    }

    public com.google.gson.i R0() {
        if (this.f16041p.isEmpty()) {
            return this.f16043r;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f16041p);
    }

    @Override // a5.c
    public a5.c a0(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f16041p.isEmpty() || this.f16042q != null) {
            throw new IllegalStateException();
        }
        if (!(S0() instanceof com.google.gson.l)) {
            throw new IllegalStateException();
        }
        this.f16042q = str;
        return this;
    }

    @Override // a5.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f16041p.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f16041p.add(f16040t);
    }

    @Override // a5.c, java.io.Flushable
    public void flush() {
    }

    @Override // a5.c
    public a5.c k() {
        com.google.gson.f fVar = new com.google.gson.f();
        T0(fVar);
        this.f16041p.add(fVar);
        return this;
    }

    @Override // a5.c
    public a5.c q0() {
        T0(com.google.gson.k.INSTANCE);
        return this;
    }

    @Override // a5.c
    public a5.c v() {
        com.google.gson.l lVar = new com.google.gson.l();
        T0(lVar);
        this.f16041p.add(lVar);
        return this;
    }
}
