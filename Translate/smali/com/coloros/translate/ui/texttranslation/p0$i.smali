.class public final Lcom/coloros/translate/ui/texttranslation/p0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/repository/remote/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/p0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$i;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$i;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->v(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    move-result-object p0

    sget-object v0, Lcom/coloros/translate/repository/b;->TRANSLATION_SERVICE_DIED:Lcom/coloros/translate/repository/b;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;->onStatus(ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
