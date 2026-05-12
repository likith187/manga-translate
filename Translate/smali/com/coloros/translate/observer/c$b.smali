.class final Lcom/coloros/translate/observer/c$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/observer/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/observer/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/observer/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/observer/c$b;->this$0:Lcom/coloros/translate/observer/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/observer/c$b$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/coloros/translate/observer/c$b$a;

    iget-object p0, p0, Lcom/coloros/translate/observer/c$b;->this$0:Lcom/coloros/translate/observer/c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/observer/c$b$a;-><init>(Lcom/coloros/translate/observer/c;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/observer/c$b;->invoke()Lcom/coloros/translate/observer/c$b$a;

    move-result-object p0

    return-object p0
.end method
