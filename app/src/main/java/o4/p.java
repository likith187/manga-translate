package o4;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class p extends q {
    private final List<c> componentsInCycle;

    public p(List<c> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<c> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
