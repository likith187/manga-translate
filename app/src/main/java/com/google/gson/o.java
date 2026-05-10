package com.google.gson;

import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class o extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f10760a;

    public o(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f10760a = bool;
    }

    private static boolean o(o oVar) {
        Object obj = oVar.f10760a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.google.gson.i
    public boolean a() {
        return n() ? ((Boolean) this.f10760a).booleanValue() : Boolean.parseBoolean(h());
    }

    @Override // com.google.gson.i
    public double b() {
        return p() ? m().doubleValue() : Double.parseDouble(h());
    }

    @Override // com.google.gson.i
    public int c() {
        return p() ? m().intValue() : Integer.parseInt(h());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f10760a == null) {
            return oVar.f10760a == null;
        }
        if (o(this) && o(oVar)) {
            return m().longValue() == oVar.m().longValue();
        }
        Object obj2 = this.f10760a;
        if (!(obj2 instanceof Number) || !(oVar.f10760a instanceof Number)) {
            return obj2.equals(oVar.f10760a);
        }
        double dDoubleValue = m().doubleValue();
        double dDoubleValue2 = oVar.m().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    @Override // com.google.gson.i
    public long g() {
        return p() ? m().longValue() : Long.parseLong(h());
    }

    @Override // com.google.gson.i
    public String h() {
        Object obj = this.f10760a;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (p()) {
            return m().toString();
        }
        if (n()) {
            return ((Boolean) this.f10760a).toString();
        }
        throw new AssertionError("Unexpected value type: " + this.f10760a.getClass());
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f10760a == null) {
            return 31;
        }
        if (o(this)) {
            jDoubleToLongBits = m().longValue();
        } else {
            Object obj = this.f10760a;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(m().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public Number m() {
        Object obj = this.f10760a;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new com.google.gson.internal.g((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public boolean n() {
        return this.f10760a instanceof Boolean;
    }

    public boolean p() {
        return this.f10760a instanceof Number;
    }

    public boolean q() {
        return this.f10760a instanceof String;
    }

    public o(Number number) {
        Objects.requireNonNull(number);
        this.f10760a = number;
    }

    public o(String str) {
        Objects.requireNonNull(str);
        this.f10760a = str;
    }
}
