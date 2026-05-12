.class public final Lcom/coloros/translate/screen/aiunit/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/aiunit/c$b;->invoke()Lcom/coloros/translate/screen/aiunit/c$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/aiunit/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/aiunit/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/aiunit/c$b$a;->a:Lcom/coloros/translate/screen/aiunit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnect()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitConnectionState"

    const-string v2, "onServiceConnect"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/aiunit/c$b$a;->a:Lcom/coloros/translate/screen/aiunit/c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceConnectFailed(I)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnectFailed, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiUnitConnectionState"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnect()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "AiUnitConnectionState"

    const-string v2, "onServiceDisconnect"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/aiunit/c$b$a;->a:Lcom/coloros/translate/screen/aiunit/c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
