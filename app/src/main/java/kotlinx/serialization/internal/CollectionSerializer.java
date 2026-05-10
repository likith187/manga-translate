package kotlinx.serialization.internal;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.r;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CollectionSerializer<E, C extends Collection<? extends E>, B> extends CollectionLikeSerializer<E, C, B> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionSerializer(KSerializer<E> element) {
        super(element, null);
        r.e(element, "element");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator<E> collectionIterator(C c10) {
        r.e(c10, "<this>");
        return c10.iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(C c10) {
        r.e(c10, "<this>");
        return c10.size();
    }
}
