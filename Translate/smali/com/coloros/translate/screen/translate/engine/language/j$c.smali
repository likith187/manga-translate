.class public final Lcom/coloros/translate/screen/translate/engine/language/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/engine/language/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/language/j;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/translate/engine/language/j;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/engine/language/j;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/language/j$c;->a:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslation.LanguageManager"

    const-string v1, "load config onError"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslation.LanguageManager"

    const-string v2, "load config onSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/language/k;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/k;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/screen/translate/engine/language/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/j$c;->a:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->g(Lcom/coloros/translate/screen/translate/engine/language/j;Ljava/util/List;)V

    return-void
.end method
