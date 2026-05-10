package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e implements c9.b, Serializable {
    public static final Object NO_RECEIVER = a.INSTANCE;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient c9.b reflected;
    private final String signature;

    private static class a implements Serializable {
        private static final a INSTANCE = new a();

        private a() {
        }

        private Object readResolve() throws ObjectStreamException {
            return INSTANCE;
        }
    }

    public e() {
        this(NO_RECEIVER);
    }

    @Override // c9.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // c9.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public c9.b compute() {
        c9.b bVar = this.reflected;
        if (bVar != null) {
            return bVar;
        }
        c9.b bVarComputeReflected = computeReflected();
        this.reflected = bVarComputeReflected;
        return bVarComputeReflected;
    }

    protected abstract c9.b computeReflected();

    @Override // c9.a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public c9.f getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? d0.c(cls) : d0.b(cls);
    }

    @Override // c9.b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    protected c9.b getReflected() {
        c9.b bVarCompute = compute();
        if (bVarCompute != this) {
            return bVarCompute;
        }
        throw new v8.b();
    }

    @Override // c9.b
    public c9.j getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // c9.b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // c9.b
    public c9.l getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // c9.b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // c9.b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // c9.b
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // c9.b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    protected e(Object obj) {
        this(obj, null, null, null, false);
    }

    protected e(Object obj, Class cls, String str, String str2, boolean z10) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z10;
    }
}
