.class final Lcom/coloros/translate/screen/translate/download/a$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/download/a;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sceneName:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/translate/screen/translate/download/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/translate/download/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/download/a$d;->this$0:Lcom/coloros/translate/screen/translate/download/a;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/download/a$d;->$sceneName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/translate/download/a$d;->invoke(Landroid/content/Context;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/download/a$d;->this$0:Lcom/coloros/translate/screen/translate/download/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/download/a$d;->$sceneName:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/coloros/translate/screen/translate/download/a;->c(Lcom/coloros/translate/screen/translate/download/a;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
