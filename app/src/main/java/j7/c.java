package j7;

import java.lang.reflect.Field;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f12775a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f12776b;

    c(String str) {
        this.f12776b = str;
        c();
    }

    private void c() {
        try {
            Class<?> cls = Class.forName(this.f12776b + "$Stub");
            for (Field field : cls.getDeclaredFields()) {
                if (field.getName().startsWith("TRANSACTION_")) {
                    field.setAccessible(true);
                    this.f12775a.put(Integer.valueOf(field.getInt(cls)), field.getName().replaceFirst("TRANSACTION_", ""));
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException e10) {
            e10.printStackTrace();
        }
    }

    @Override // j7.a
    public String a() {
        return this.f12776b;
    }

    @Override // j7.a
    public String b(int i10) {
        if (this.f12775a.containsKey(Integer.valueOf(i10))) {
            return (String) this.f12775a.get(Integer.valueOf(i10));
        }
        return null;
    }
}
