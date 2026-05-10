package r8;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Serializable {
    private static final a Companion = new a(null);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class<Enum<Object>> f15470c;

    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public d(Enum<Object>[] entries) {
        r.e(entries, "entries");
        Class componentType = entries.getClass().getComponentType();
        r.b(componentType);
        this.f15470c = componentType;
    }

    private final Object readResolve() {
        Enum<Object>[] enumConstants = this.f15470c.getEnumConstants();
        r.d(enumConstants, "getEnumConstants(...)");
        return b.a(enumConstants);
    }
}
