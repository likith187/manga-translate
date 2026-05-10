package v5;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List f15943a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map f15944b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static List f15945c = new ArrayList(Arrays.asList("android.app.IActivityManager", "android.content.pm.IPackageManager", "android.view.IWindowManager"));

    public static void a() {
        Iterator it = f15945c.iterator();
        while (it.hasNext()) {
            f15943a.add(new b((String) it.next()));
        }
        f15944b.put("android.view.IWindowSession", "IWindowSession");
        f15944b.put("android.view.IWindowManager", "IWindowSession");
        f15944b.put("android.content.pm.IPackageInstaller", "PackageInstaller.Session");
        f15944b.put("android.content.pm.IPackageInstallerSession", "PackageInstaller.Session");
    }
}
