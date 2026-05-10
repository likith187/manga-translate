package s6;

import com.oplus.epona.Call$Callback;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.epona.f;
import com.oplus.epona.provider.ProviderInfo;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class c implements f {
    public static /* synthetic */ void c(String str, String str2, String str3, Call$Callback call$Callback, Response response) {
        c8.a.c("Epona->CallProviderInterceptor", "Caller(%s) call component(%s) action(%s) response:(%s)", str, str2, str3, response);
        call$Callback.onReceive(response);
    }

    @Override // com.oplus.epona.f
    public void a(f.a aVar) {
        Response responseC;
        Request requestA = aVar.a();
        final String componentName = requestA.getComponentName();
        final String callerPackageName = requestA.getCallerPackageName();
        ProviderInfo providerInfoF = com.oplus.epona.d.f(componentName);
        if (providerInfoF == null) {
            aVar.b();
            return;
        }
        final Call$Callback call$CallbackCallback = aVar.callback();
        try {
            final String actionName = requestA.getActionName();
            if (aVar.c()) {
                providerInfoF.getMethod(actionName).invoke(null, requestA, new Call$Callback() { // from class: s6.b
                    @Override // com.oplus.epona.Call$Callback
                    public final void onReceive(Response response) {
                        c.c(callerPackageName, componentName, actionName, call$CallbackCallback, response);
                    }
                });
            } else {
                Response response = (Response) providerInfoF.getMethod(actionName).invoke(null, requestA);
                c8.a.c("Epona->CallProviderInterceptor", "Caller(%s) call component(%s) action(%s) response:(%s)", callerPackageName, componentName, actionName, response);
                call$CallbackCallback.onReceive(response);
            }
        } catch (Exception e10) {
            if (e10 instanceof InvocationTargetException) {
                InvocationTargetException invocationTargetException = (InvocationTargetException) e10;
                c8.a.d("Epona->CallProviderInterceptor", "InvocationTargetException happened with component(%s) Exception: %s", componentName, invocationTargetException.getTargetException());
                responseC = Response.c(String.format("InvocationTargetException happened with component(%s) Exception: %s", componentName, invocationTargetException.getTargetException()));
            } else {
                c8.a.d("Epona->CallProviderInterceptor", "fail to run static provider with componentName(%s) cause: %s ", componentName, e10.toString());
                responseC = Response.c(String.format("fail to run static provider with componentName(%s) cause: %s ", componentName, e10));
            }
            call$CallbackCallback.onReceive(responseC);
        }
    }
}
