.class final Lcom/coloros/translate/ui/dialoguetranslation/i0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $deleteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/translate/repository/local/Conversation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$c;->$deleteList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$c;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/i0$c;->$deleteList:Ljava/util/List;

    invoke-virtual {v0, p0}, Li2/a;->c(Ljava/util/List;)V

    return-void
.end method
