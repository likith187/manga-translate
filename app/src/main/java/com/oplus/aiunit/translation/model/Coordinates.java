package com.oplus.aiunit.translation.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class Coordinates {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f10957x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f10958y;

    /* JADX WARN: Illegal instructions before constructor call */
    public Coordinates() {
        float f10 = 0.0f;
        this(f10, f10, 3, null);
    }

    public static /* synthetic */ Coordinates copy$default(Coordinates coordinates, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = coordinates.f10957x;
        }
        if ((i10 & 2) != 0) {
            f11 = coordinates.f10958y;
        }
        return coordinates.copy(f10, f11);
    }

    public final float component1() {
        return this.f10957x;
    }

    public final float component2() {
        return this.f10958y;
    }

    public final Coordinates copy(float f10, float f11) {
        return new Coordinates(f10, f11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Coordinates)) {
            return false;
        }
        Coordinates coordinates = (Coordinates) obj;
        return Float.compare(this.f10957x, coordinates.f10957x) == 0 && Float.compare(this.f10958y, coordinates.f10958y) == 0;
    }

    public final float getX() {
        return this.f10957x;
    }

    public final float getY() {
        return this.f10958y;
    }

    public int hashCode() {
        return (Float.hashCode(this.f10957x) * 31) + Float.hashCode(this.f10958y);
    }

    public final void setX(float f10) {
        this.f10957x = f10;
    }

    public final void setY(float f10) {
        this.f10958y = f10;
    }

    public String toString() {
        return "Coordinates(x=" + this.f10957x + ", y=" + this.f10958y + ')';
    }

    public Coordinates(float f10, float f11) {
        this.f10957x = f10;
        this.f10958y = f11;
    }

    public /* synthetic */ Coordinates(float f10, float f11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? 0.0f : f11);
    }
}
