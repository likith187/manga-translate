package c9;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface b extends a {
    Object call(Object... objArr);

    Object callBy(Map map);

    List getParameters();

    j getReturnType();

    List getTypeParameters();

    l getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
