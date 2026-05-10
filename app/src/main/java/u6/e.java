package u6;

import androidx.appcompat.app.t;
import com.oplus.epona.h;
import com.oplus.epona.provider.ProviderInfo;
import com.oplus.epona.provider.ProviderMethodInfo;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class e implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f15876a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f15877b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap f15878c = new ConcurrentHashMap();

    private Map d(ProviderInfo providerInfo) {
        if (providerInfo == null) {
            return null;
        }
        try {
            Field declaredField = providerInfo.getClass().getDeclaredField("mMethods");
            declaredField.setAccessible(true);
            return (Map) declaredField.get(providerInfo);
        } catch (Exception e10) {
            c8.a.d("Epona->ProviderRepo", e10.toString(), new Object[0]);
            return null;
        }
    }

    private void e(PrintWriter printWriter) {
        if (this.f15876a.isEmpty()) {
            printWriter.println("Dynamic register provider is empty\n");
            return;
        }
        printWriter.println("dynamic:");
        Iterator it = this.f15876a.entrySet().iterator();
        if (it.hasNext()) {
            t.a(((Map.Entry) it.next()).getValue());
            throw null;
        }
        printWriter.println("");
    }

    private void f(PrintWriter printWriter) {
        if (this.f15877b.isEmpty()) {
            printWriter.println("Auto register provider is empty\n");
            return;
        }
        printWriter.println("static:");
        Iterator it = this.f15877b.entrySet().iterator();
        while (it.hasNext()) {
            ProviderInfo providerInfo = (ProviderInfo) ((Map.Entry) it.next()).getValue();
            String name = providerInfo.getName();
            if (name != null) {
                printWriter.println(name + " : ");
            }
            Map mapD = d(providerInfo);
            if (mapD != null) {
                for (Map.Entry entry : mapD.entrySet()) {
                    if (entry != null) {
                        printWriter.println("    -> " + ((ProviderMethodInfo) entry.getValue()).getMethodName());
                    }
                }
            }
            printWriter.println("");
        }
    }

    @Override // com.oplus.epona.h
    public ProviderInfo a(String str) {
        return (ProviderInfo) this.f15877b.get(str);
    }

    @Override // com.oplus.epona.h
    public com.oplus.epona.c b(String str) {
        t.a(this.f15876a.get(str));
        return null;
    }

    @Override // com.oplus.epona.h
    public void c(PrintWriter printWriter) {
        printWriter.println("---------start dump epona register info---------");
        e(printWriter);
        f(printWriter);
        printWriter.println("-------------------- end -----------------------");
    }
}
