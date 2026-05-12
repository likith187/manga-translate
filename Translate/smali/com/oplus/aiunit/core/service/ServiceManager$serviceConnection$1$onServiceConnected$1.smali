.class public final Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/auth/AuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/aiunit/core/service/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/service/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->kErrorAuthorizeFail:Lcom/oplus/aiunit/core/protocol/common/ErrorCode;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ErrorCode;->value()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyConnectFailed(Lcom/oplus/aiunit/core/service/ServiceManager;I)V

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-virtual {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->destroy()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$serviceConnection$1$onServiceConnected$1;->this$0:Lcom/oplus/aiunit/core/service/ServiceManager;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->access$notifyConnectSuccess(Lcom/oplus/aiunit/core/service/ServiceManager;)V

    return-void
.end method
