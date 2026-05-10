package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
final class KTypeWrapper implements c9.j {
    private final c9.j origin;

    public KTypeWrapper(c9.j origin) {
        r.e(origin, "origin");
        this.origin = origin;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        c9.j jVar = this.origin;
        KTypeWrapper kTypeWrapper = obj instanceof KTypeWrapper ? (KTypeWrapper) obj : null;
        if (!r.a(jVar, kTypeWrapper != null ? kTypeWrapper.origin : null)) {
            return false;
        }
        c9.e classifier = getClassifier();
        if (classifier instanceof c9.c) {
            c9.j jVar2 = obj instanceof c9.j ? (c9.j) obj : null;
            c9.e classifier2 = jVar2 != null ? jVar2.getClassifier() : null;
            if (classifier2 != null && (classifier2 instanceof c9.c)) {
                return r.a(v8.a.a((c9.c) classifier), v8.a.a((c9.c) classifier2));
            }
        }
        return false;
    }

    @Override // c9.a
    public List<Annotation> getAnnotations() {
        return this.origin.getAnnotations();
    }

    @Override // c9.j
    public List<c9.k> getArguments() {
        return this.origin.getArguments();
    }

    @Override // c9.j
    public c9.e getClassifier() {
        return this.origin.getClassifier();
    }

    public int hashCode() {
        return this.origin.hashCode();
    }

    @Override // c9.j
    public boolean isMarkedNullable() {
        return this.origin.isMarkedNullable();
    }

    public String toString() {
        return "KTypeWrapper: " + this.origin;
    }
}
