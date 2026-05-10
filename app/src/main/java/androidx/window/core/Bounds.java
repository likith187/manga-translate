package androidx.window.core;

import android.graphics.Rect;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes.dex */
public final class Bounds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4005d;

    public Bounds(int i10, int i11, int i12, int i13) {
        this.f4002a = i10;
        this.f4003b = i11;
        this.f4004c = i12;
        this.f4005d = i13;
    }

    public final int a() {
        return this.f4005d - this.f4003b;
    }

    public final int b() {
        return this.f4002a;
    }

    public final int c() {
        return this.f4003b;
    }

    public final int d() {
        return this.f4004c - this.f4002a;
    }

    public final boolean e() {
        return a() == 0 && d() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!r.a(Bounds.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.core.Bounds");
        }
        Bounds bounds = (Bounds) obj;
        return this.f4002a == bounds.f4002a && this.f4003b == bounds.f4003b && this.f4004c == bounds.f4004c && this.f4005d == bounds.f4005d;
    }

    public final Rect f() {
        return new Rect(this.f4002a, this.f4003b, this.f4004c, this.f4005d);
    }

    public int hashCode() {
        return (((((this.f4002a * 31) + this.f4003b) * 31) + this.f4004c) * 31) + this.f4005d;
    }

    public String toString() {
        return Bounds.class.getSimpleName() + " { [" + this.f4002a + AbstractJsonLexerKt.COMMA + this.f4003b + AbstractJsonLexerKt.COMMA + this.f4004c + AbstractJsonLexerKt.COMMA + this.f4005d + "] }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Bounds(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        r.e(rect, "rect");
    }
}
