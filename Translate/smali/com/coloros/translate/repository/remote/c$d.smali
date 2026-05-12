.class public final Lcom/coloros/translate/repository/remote/c$d;
.super Lcom/coloros/translate/engine/IRegisterListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/engine/IRegisterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback language is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslationManager"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p0, Lcom/coloros/translate/repository/local/a;->INSTANCE:Lcom/coloros/translate/repository/local/a;

    invoke-virtual {p0, p2}, Lcom/coloros/translate/repository/local/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
