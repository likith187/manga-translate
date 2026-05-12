.class public final Lcom/coloros/translate/ui/texttranslation/p0$h;
.super Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0;->p0()V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationViewModel"

    const-string v1, "playText onStart"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatus(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playText onStatus code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/base/q;->h(Z)Z

    invoke-static {p1, p2}, Lcom/coloros/translate/repository/c;->c(ILjava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/utils/n;->k0(I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TextTranslationViewModel"

    const-string v2, "playText onStop"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$h;->a:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->U()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onTtsResult([B)V
    .locals 0

    return-void
.end method
