package l5;

import androidx.appcompat.app.t;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.heytap.epona.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f13590a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f13591b = new ConcurrentHashMap();

    @Override // com.heytap.epona.f
    public p5.a a(String str) {
        t.a(this.f13591b.get(str));
        return null;
    }

    @Override // com.heytap.epona.f
    public com.heytap.epona.b b(String str) {
        t.a(this.f13590a.get(str));
        return null;
    }
}
