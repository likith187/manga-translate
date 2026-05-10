package com.oplus.vfxsdk.rsview;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f11443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f11444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f11445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f11446d;

    public p(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f11443a = z10;
        this.f11444b = z11;
        this.f11445c = z12;
        this.f11446d = z13;
    }

    public final boolean a() {
        return this.f11443a;
    }

    public final boolean b() {
        return this.f11446d;
    }

    public final boolean c() {
        return this.f11444b;
    }

    public final boolean d() {
        return this.f11445c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f11443a == pVar.f11443a && this.f11444b == pVar.f11444b && this.f11445c == pVar.f11445c && this.f11446d == pVar.f11446d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    public int hashCode() {
        boolean z10 = this.f11443a;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i10 = r02 * 31;
        boolean z11 = this.f11444b;
        ?? r22 = z11;
        if (z11) {
            r22 = 1;
        }
        int i11 = (i10 + r22) * 31;
        boolean z12 = this.f11445c;
        ?? r23 = z12;
        if (z12) {
            r23 = 1;
        }
        int i12 = (i11 + r23) * 31;
        boolean z13 = this.f11446d;
        return i12 + (z13 ? 1 : z13);
    }

    public String toString() {
        return "RuntimeShaderOptions(alphaPreMultiplied=" + this.f11443a + ", enableFlipBitmap=" + this.f11444b + ", useHardwareBitmap=" + this.f11445c + ", enableBlend=" + this.f11446d + ")";
    }

    public /* synthetic */ p(boolean z10, boolean z11, boolean z12, boolean z13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13);
    }
}
