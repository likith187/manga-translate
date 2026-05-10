package com.google.gson;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public boolean a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public f d() {
        if (i()) {
            return (f) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public l e() {
        if (k()) {
            return (l) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public o f() {
        if (l()) {
            return (o) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public long g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String h() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean i() {
        return this instanceof f;
    }

    public boolean j() {
        return this instanceof k;
    }

    public boolean k() {
        return this instanceof l;
    }

    public boolean l() {
        return this instanceof o;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            a5.c cVar = new a5.c(stringWriter);
            cVar.H0(true);
            com.google.gson.internal.m.b(this, cVar);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
