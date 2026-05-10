package kotlinx.serialization.internal;

import java.util.List;
import kotlin.collections.o;

/* JADX INFO: loaded from: classes2.dex */
public interface ParametrizedSerializerCache<T> {

    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: get-gIAlu-s$default, reason: not valid java name */
        public static /* synthetic */ Object m19getgIAlus$default(ParametrizedSerializerCache parametrizedSerializerCache, c9.c cVar, List list, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get-gIAlu-s");
            }
            if ((i10 & 2) != 0) {
                list = o.h();
            }
            return parametrizedSerializerCache.mo15getgIAlus(cVar, list);
        }
    }

    /* JADX INFO: renamed from: get-gIAlu-s */
    Object mo15getgIAlus(c9.c cVar, List<? extends c9.j> list);
}
