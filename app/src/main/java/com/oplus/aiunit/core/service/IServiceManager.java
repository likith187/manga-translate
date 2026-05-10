package com.oplus.aiunit.core.service;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.ConfigPackage;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.ParamPackage;
import com.oplus.aiunit.core.base.AIDetector;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import com.oplus.aiunit.core.callback.DetectStateCallback;
import com.oplus.aiunit.core.data.ServiceType;
import n8.n;

/* JADX INFO: loaded from: classes.dex */
public interface IServiceManager {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final String TAG = "ServiceManager";

    public static final class Companion {
        public static final String TAG = "ServiceManager";
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final n8.j instance$delegate = n8.k.a(n.SYNCHRONIZED, IServiceManager$Companion$instance$2.INSTANCE);

        private Companion() {
        }

        public static /* synthetic */ void getInstance$annotations() {
        }

        public final IServiceManager getInstance() {
            return (IServiceManager) instance$delegate.getValue();
        }
    }

    static IServiceManager getInstance() {
        return Companion.getInstance();
    }

    <I extends FrameInputSlot, O extends FrameOutputSlot> int access(AIDetector<I, O> aIDetector);

    int acquire(ParamPackage paramPackage);

    void addConnectionCallback(ConnectionCallback connectionCallback);

    int attach(ConfigPackage configPackage);

    int authorize(ParamPackage paramPackage);

    void destroy();

    int detach(String str);

    int detach(String str, String str2);

    int driveAndAttach(ConfigPackage configPackage, String str, DetectStateCallback detectStateCallback);

    Bundle getRunningUnitInfo(String str);

    void infer(FramePackage framePackage);

    void init(Context context, ConnectionCallback connectionCallback, ServiceType serviceType);

    boolean isActive(ParamPackage paramPackage);

    boolean isConnected();

    boolean isStarted(String str);

    void prepare(ParamPackage paramPackage);

    int process(FramePackage framePackage);

    int process(FramePackage framePackage, String str);

    void release(ParamPackage paramPackage);

    void removeConnectionCallback(ConnectionCallback connectionCallback);

    boolean removeStateCallback(String str, DetectStateCallback detectStateCallback);

    boolean removeUnit(String str);
}
