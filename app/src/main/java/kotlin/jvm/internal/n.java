package kotlin.jvm.internal;

/* JADX INFO: loaded from: classes2.dex */
public class n extends e implements m, c9.g {
    private final int arity;
    private final int flags;

    public n(int i10) {
        this(i10, e.NO_RECEIVER, null, null, null, 0);
    }

    @Override // kotlin.jvm.internal.e
    protected c9.b computeReflected() {
        return d0.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return getName().equals(nVar.getName()) && getSignature().equals(nVar.getSignature()) && this.flags == nVar.flags && this.arity == nVar.arity && r.a(getBoundReceiver(), nVar.getBoundReceiver()) && r.a(getOwner(), nVar.getOwner());
        }
        if (obj instanceof c9.g) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.m
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // c9.g
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // c9.g
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // c9.g
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // c9.g
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.e, c9.b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        c9.b bVarCompute = compute();
        if (bVarCompute != this) {
            return bVarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    public n(int i10, Object obj) {
        this(i10, obj, null, null, null, 0);
    }

    @Override // kotlin.jvm.internal.e
    public c9.g getReflected() {
        return (c9.g) super.getReflected();
    }

    public n(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.arity = i10;
        this.flags = i11 >> 1;
    }
}
