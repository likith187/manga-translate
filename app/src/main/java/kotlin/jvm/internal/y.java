package kotlin.jvm.internal;

import c9.h;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y extends e implements c9.h {
    private final boolean syntheticJavaProperty;

    public y() {
        this.syntheticJavaProperty = false;
    }

    @Override // kotlin.jvm.internal.e
    public c9.b compute() {
        return this.syntheticJavaProperty ? this : super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            return getOwner().equals(yVar.getOwner()) && getName().equals(yVar.getName()) && getSignature().equals(yVar.getSignature()) && r.a(getBoundReceiver(), yVar.getBoundReceiver());
        }
        if (obj instanceof c9.h) {
            return obj.equals(compute());
        }
        return false;
    }

    public abstract /* synthetic */ h.a getGetter();

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // c9.h
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // c9.h
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        c9.b bVarCompute = compute();
        if (bVarCompute != this) {
            return bVarCompute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.e
    public c9.h getReflected() {
        if (this.syntheticJavaProperty) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        return (c9.h) super.getReflected();
    }

    public y(Object obj) {
        super(obj);
        this.syntheticJavaProperty = false;
    }

    public y(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, (i10 & 1) == 1);
        this.syntheticJavaProperty = (i10 & 2) == 2;
    }
}
