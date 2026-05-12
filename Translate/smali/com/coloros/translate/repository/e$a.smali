.class public final Lcom/coloros/translate/repository/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/toolkits/callback/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/e;->a(Lw8/l;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/l;


# direct methods
.method constructor <init>(Lw8/l;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/e$a;->a:Lw8/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConfigurationUpdate resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingUtils"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x190

    if-eq p1, v0, :cond_2

    const/16 v0, 0x191

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_0

    sget p0, Lcom/coloros/translate/R$string;->plugin_down_fail:I

    invoke-static {p0, v2, v3, v1}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/repository/e$a;->a:Lw8/l;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/coloros/translate/R$string;->plugin_down_fail:I

    invoke-static {p0, v2, v3, v1}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return-void

    :cond_1
    sget p0, Lcom/coloros/translate/R$string;->plugin_down_fail:I

    invoke-static {p0, v2, v3, v1}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/repository/e$a;->a:Lw8/l;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
