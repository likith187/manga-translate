package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class r implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f1982a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1983b;

    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private r(Context context) {
        this.f1983b = context;
    }

    public static r d(Context context) {
        return new r(context);
    }

    public r a(Intent intent) {
        this.f1982a.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r b(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = f.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f1983b.getPackageManager());
            }
            c(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public r c(ComponentName componentName) {
        int size = this.f1982a.size();
        try {
            Intent intentB = f.b(this.f1983b, componentName);
            while (intentB != null) {
                this.f1982a.add(size, intentB);
                intentB = f.b(this.f1983b, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e10);
        }
    }

    public void e() {
        f(null);
    }

    public void f(Bundle bundle) {
        if (this.f1982a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.f1982a.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (r.a.i(this.f1983b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f1983b.startActivity(intent);
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f1982a.iterator();
    }
}
