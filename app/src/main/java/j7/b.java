package j7;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f12771a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f12772b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f12773c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f12774d = Arrays.asList("android.view.IWindowManager");

    public static String a(String str, int i10) {
        Map map = f12772b;
        if (map.containsKey(str)) {
            return (String) map.get(str);
        }
        for (a aVar : f12771a) {
            if (TextUtils.equals(aVar.a(), str)) {
                return aVar.b(i10);
            }
        }
        c cVar = new c(str);
        f12771a.add(cVar);
        return cVar.b(i10);
    }

    public static void b() {
        Iterator it = f12774d.iterator();
        while (it.hasNext()) {
            f12771a.add(new c((String) it.next()));
        }
        Map map = f12772b;
        map.put("android.view.IWindowSession", "IWindowSession");
        map.put("android.view.IWindowManager", "IWindowSession");
        f12773c.add("android.view.IWindowSession");
        map.put("android.content.pm.IPackageInstaller", "PackageInstaller.Session");
        map.put("android.content.pm.IPackageInstallerSession", "PackageInstaller.Session");
    }

    public static boolean c(String str) {
        return f12773c.contains(str);
    }
}
