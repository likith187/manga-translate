.class public final Lcom/coloros/translate/screen/translate/engine/panel/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/panel/e;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/panel/e;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/panel/e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/translate/engine/panel/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->c(Lcom/coloros/translate/screen/translate/engine/panel/e;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->d(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method private static final c(Lcom/coloros/translate/screen/translate/engine/panel/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v0}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->v()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->l(Lcom/coloros/translate/screen/translate/engine/panel/e;)Lcom/coloros/translate/panel/TextTranslationPanel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v0}, Lf2/a$a;->b(Lf2/a;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    const p0, 0x186be

    if-ne p1, p0, :cond_1

    const-string v0, "SDK_SENSITIVE"

    goto :goto_1

    :cond_1
    const-string v0, "SDK_ERROR"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SDK]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    if-ne p1, p0, :cond_2

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    const-string v6, "screen"

    move v4, p1

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/coloros/translate/utils/n;->g0(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private static final d(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/panel/e;->j(Lcom/coloros/translate/screen/translate/engine/panel/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/screen/translate/engine/panel/e;->H(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x186be

    if-eq p2, p0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sget-object p1, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    const-string p2, "screen"

    invoke-virtual {p1, p4, p2, p0}, Lcom/coloros/translate/utils/n;->V(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/panel/g;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/coloros/translate/screen/translate/engine/panel/g;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImageResult(Ljava/lang/String;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 0

    const-string p0, "requestId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "result"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextResult(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTranslate: onTextResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationPanel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/coloros/translate/screen/translate/engine/panel/e$b;->a:Lcom/coloros/translate/screen/translate/engine/panel/e;

    new-instance p0, Lcom/coloros/translate/screen/translate/engine/panel/f;

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/screen/translate/engine/panel/f;-><init>(Lcom/coloros/translate/screen/translate/engine/panel/e;Ljava/lang/String;IZLjava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/t;->g(Ljava/lang/Runnable;)V

    return-void
.end method
