.class public final Lcom/coloros/translate/screen/translate/business/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/business/h;->b(Lcom/coloros/translate/screen/translate/business/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/business/g;

.field final synthetic b:Lcom/coloros/translate/screen/translate/business/h;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/business/g;Lcom/coloros/translate/screen/translate/business/h;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/h$b;->b:Lcom/coloros/translate/screen/translate/business/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageResult onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",errorCode:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenTranslationModel"

    invoke-virtual {p2, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->g()V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->b:Lcom/coloros/translate/screen/translate/business/h;

    invoke-static {p1}, Lcom/coloros/translate/screen/translate/business/h;->f(Lcom/coloros/translate/screen/translate/business/h;)Lcom/coloros/translate/screen/translate/business/d$a;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-interface {p1, p0, p3}, Lcom/coloros/translate/screen/translate/business/d$a;->a(Lcom/coloros/translate/screen/translate/business/g;I)V

    return-void
.end method

.method public onImageResult(Ljava/lang/String;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 4

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getAlgorithmModel()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenTranslationModel"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getAlgorithmModel()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->b:Lcom/coloros/translate/screen/translate/business/h;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-static {p1, p0, p2}, Lcom/coloros/translate/screen/translate/business/h;->d(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->b:Lcom/coloros/translate/screen/translate/business/h;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-static {p1, p0, p2}, Lcom/coloros/translate/screen/translate/business/h;->e(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/h$b;->b:Lcom/coloros/translate/screen/translate/business/h;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h$b;->a:Lcom/coloros/translate/screen/translate/business/g;

    invoke-static {p1, p0, p2}, Lcom/coloros/translate/screen/translate/business/h;->c(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    :goto_1
    const-string p0, "onImageResult deal finish"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextResult(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    const-string p0, "requestId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
