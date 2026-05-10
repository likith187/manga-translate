package f5;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o4.c f11943b = o4.c.a(j.class).b(o4.o.g(g.class)).b(o4.o.g(Context.class)).d(new o4.g() { // from class: f5.x
        @Override // o4.g
        public final Object a(o4.d dVar) {
            return new j((Context) dVar.a(Context.class));
        }
    }).c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f11944a;

    public j(Context context) {
        this.f11944a = context;
    }

    public synchronized String a() {
        String string = b().getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        b().edit().putString("ml_sdk_instance_id", string2).apply();
        return string2;
    }

    protected final SharedPreferences b() {
        return this.f11944a.getSharedPreferences("com.google.mlkit.internal", 0);
    }
}
