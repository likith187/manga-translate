package com.oplus.aiunit.translation.common;

import android.content.Context;
import android.os.Looper;
import com.oplus.aiunit.core.AIConnector;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.callback.IAIMessenger;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.translation.common.BaseDetector;
import com.oplus.aiunit.translation.common.BaseInputSlot;
import com.oplus.aiunit.translation.common.BaseOutputSlot;
import com.oplus.aiunit.translation.utils.AILogHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseClient<IP extends BaseInputSlot, OP extends BaseOutputSlot, D extends BaseDetector<IP, OP>> extends AIConnector<IP, OP> implements ITransmit {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "BaseClient";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public interface RunActionErrorListener {
        void onError(ErrorCode errorCode, String str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseClient(Context context, BaseDetector<IP, OP> detector, String logTag) {
        super(context, detector, logTag);
        r.e(context, "context");
        r.e(detector, "detector");
        r.e(logTag, "logTag");
    }

    public static /* synthetic */ void process$default(BaseClient baseClient, Object obj, Object obj2, String str, RunActionErrorListener runActionErrorListener, int i10, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: process");
        }
        if ((i10 & 8) != 0) {
            runActionErrorListener = null;
        }
        baseClient.process(obj, obj2, str, runActionErrorListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void process$lambda$0(BaseClient this$0, Object obj, Object obj2, String methods, RunActionErrorListener runActionErrorListener) {
        r.e(this$0, "this$0");
        r.e(methods, "$methods");
        this$0.processEvent(obj, obj2, methods, runActionErrorListener);
    }

    private final <T> void processEvent(final T t10, final T t11, final String str, final RunActionErrorListener runActionErrorListener) {
        runAction(new AIConnector.Action<String>(this) { // from class: com.oplus.aiunit.translation.common.BaseClient.processEvent.1
            final /* synthetic */ BaseClient<IP, OP, D> this$0;

            /* JADX WARN: Unknown type variable: T in type: T */
            {
                this.this$0 = this;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public String failure(ErrorCode code, String msg) {
                r.e(code, "code");
                r.e(msg, "msg");
                RunActionErrorListener runActionErrorListener2 = runActionErrorListener;
                if (runActionErrorListener2 == null) {
                    return null;
                }
                runActionErrorListener2.onError(code, msg);
                return null;
            }

            @Override // com.oplus.aiunit.core.AIConnector.Action
            public String run() {
                final BaseClient<IP, OP, D> baseClient = this.this$0;
                final T t12 = t11;
                final String str2 = str;
                return this.this$0.handleInput(t10, t11, str, new IAIMessenger.Stub() { // from class: com.oplus.aiunit.translation.common.BaseClient$processEvent$1$run$messenger$1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // com.oplus.aiunit.core.callback.IAIMessenger
                    public int send(FramePackage framePackage) {
                        h0 h0Var;
                        if (framePackage != null) {
                            baseClient.handleResult(framePackage, t12, str2);
                            h0Var = h0.INSTANCE;
                        } else {
                            h0Var = null;
                        }
                        if (h0Var != null) {
                            return ErrorCode.kErrorNone.value();
                        }
                        AILogHelper.Companion.e(baseClient.getTAG(), "IAIMessenger framePackage null");
                        throw new IllegalStateException("IAIMessenger framePackage null");
                    }
                });
            }
        });
    }

    static /* synthetic */ void processEvent$default(BaseClient baseClient, Object obj, Object obj2, String str, RunActionErrorListener runActionErrorListener, int i10, Object obj3) {
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: processEvent");
        }
        if ((i10 & 8) != 0) {
            runActionErrorListener = null;
        }
        baseClient.processEvent(obj, obj2, str, runActionErrorListener);
    }

    @Override // com.oplus.aiunit.translation.common.ITransmit
    public abstract <T> String handleInput(T t10, T t11, String str, IAIMessenger iAIMessenger);

    @Override // com.oplus.aiunit.translation.common.ITransmit
    public abstract <T> void handleResult(FramePackage framePackage, T t10, String str);

    protected final <T> void process(final T t10, final T t11, final String methods, final RunActionErrorListener runActionErrorListener) {
        r.e(methods, "methods");
        if (r.a(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            new Thread(new Runnable() { // from class: com.oplus.aiunit.translation.common.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseClient.process$lambda$0(this.f10941a, t10, t11, methods, runActionErrorListener);
                }
            }).start();
            AILogHelper.Companion.i(getTAG(), "process()....0");
        } else {
            processEvent(t10, t11, methods, runActionErrorListener);
            AILogHelper.Companion.i(getTAG(), "process()....1");
        }
    }
}
