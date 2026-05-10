package q0;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class k {
    public static final ArrayList a(Collection collection) {
        r.e(collection, "<this>");
        return collection instanceof ArrayList ? (ArrayList) collection : new ArrayList(collection);
    }
}
