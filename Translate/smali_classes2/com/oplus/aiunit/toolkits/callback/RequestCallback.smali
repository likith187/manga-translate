.class public interface abstract Lcom/oplus/aiunit/toolkits/callback/RequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

.field public static final REQUEST_IPC_FAIL:I = 0x0

.field public static final REQUEST_NO_INTERNET:I = 0x191

.field public static final REQUEST_PRIVACY_NOT_PERMIT:I = 0x190

.field public static final REQUEST_SET_UP_NOT_COMPLETE:I = 0x1f4

.field public static final REQUEST_SUCCESS:I = 0x1

.field public static final REQUEST_SUCCESS_IN_HOUR:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;->$$INSTANCE:Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

    sput-object v0, Lcom/oplus/aiunit/toolkits/callback/RequestCallback;->Companion:Lcom/oplus/aiunit/toolkits/callback/RequestCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onResult(I)V
.end method
