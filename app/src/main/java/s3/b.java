package s3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f15534a;

    public b(Context context) {
        this.f15534a = context;
    }

    public ApplicationInfo a(String str, int i10) {
        return this.f15534a.getPackageManager().getApplicationInfo(str, i10);
    }

    public CharSequence b(String str) {
        Context context = this.f15534a;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    public PackageInfo c(String str, int i10) {
        return this.f15534a.getPackageManager().getPackageInfo(str, i10);
    }
}
