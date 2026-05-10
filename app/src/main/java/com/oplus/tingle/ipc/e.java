package com.oplus.tingle.ipc;

import android.app.Application;
import android.content.Context;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a */
    private static List f11215a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b */
    private static Application f11216b;

    static void a(Context context) {
        if (context instanceof Application) {
            f11216b = (Application) context;
        } else {
            f11216b = (Application) context.getApplicationContext();
        }
        b();
    }

    private static void b() {
        f11215a.add(new w7.a());
        f11215a.add(new z7.a());
        f11215a.add(new w7.b());
        f11215a.add(new a8.a());
        f11215a.add(new y7.a());
        f11215a.add(new x7.a());
    }
}
