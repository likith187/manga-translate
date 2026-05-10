package v5;

import java.lang.reflect.Field;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap f15946a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f15947b;

    b(String str) {
        this.f15947b = str;
        a();
    }

    private void a() {
        try {
            Class<?> cls = Class.forName(this.f15947b + "$Stub");
            for (Field field : cls.getDeclaredFields()) {
                if (field.getName().startsWith("TRANSACTION_")) {
                    field.setAccessible(true);
                    this.f15946a.put(Integer.valueOf(field.getInt(cls)), field.getName().replaceFirst("TRANSACTION_", ""));
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException e10) {
            e10.printStackTrace();
        }
    }
}
