package s6;

import com.oplus.epona.Request;
import com.oplus.epona.f;

/* JADX INFO: loaded from: classes2.dex */
public class a implements f {
    @Override // com.oplus.epona.f
    public void a(f.a aVar) {
        Request requestA = aVar.a();
        String componentName = requestA.getComponentName();
        requestA.getActionName();
        com.oplus.epona.d.e(componentName);
        aVar.b();
    }
}
