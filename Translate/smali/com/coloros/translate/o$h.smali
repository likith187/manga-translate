.class final Lcom/coloros/translate/o$h;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/o;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/o;


# direct methods
.method constructor <init>(Lcom/coloros/translate/o;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o$h;->this$0:Lcom/coloros/translate/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/o$b;
    .locals 3

    .line 2
    new-instance v0, Lcom/coloros/translate/o$b;

    iget-object v1, p0, Lcom/coloros/translate/o$h;->this$0:Lcom/coloros/translate/o;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/translate/o$b;-><init>(Lcom/coloros/translate/o;Z)V

    iget-object p0, p0, Lcom/coloros/translate/o$h;->this$0:Lcom/coloros/translate/o;

    .line 3
    invoke-static {p0}, Lcom/coloros/translate/o;->i(Lcom/coloros/translate/o;)Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->l(Ljava/util/List;)V

    .line 4
    new-instance v1, Lcom/coloros/translate/o$h$a;

    invoke-direct {v1, p0, v0}, Lcom/coloros/translate/o$h$a;-><init>(Lcom/coloros/translate/o;Lcom/coloros/translate/o$b;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->m(Lw8/q;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/o$h;->invoke()Lcom/coloros/translate/o$b;

    move-result-object p0

    return-object p0
.end method
