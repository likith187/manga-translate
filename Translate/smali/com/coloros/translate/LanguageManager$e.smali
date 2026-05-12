.class final Lcom/coloros/translate/LanguageManager$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/LanguageManager;->x(Landroid/util/ArrayMap;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isContains:Lkotlin/jvm/internal/z;

.field final synthetic $list1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/translate/LanguageManager;


# direct methods
.method constructor <init>(Lcom/coloros/translate/LanguageManager;Ljava/util/List;Lkotlin/jvm/internal/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/LanguageManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/z;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/LanguageManager$e;->this$0:Lcom/coloros/translate/LanguageManager;

    iput-object p2, p0, Lcom/coloros/translate/LanguageManager$e;->$list1:Ljava/util/List;

    iput-object p3, p0, Lcom/coloros/translate/LanguageManager$e;->$isContains:Lkotlin/jvm/internal/z;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/LanguageManager$e;->invoke(Ljava/util/List;Ljava/util/List;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/LanguageManager$e;->this$0:Lcom/coloros/translate/LanguageManager;

    iget-object v0, p0, Lcom/coloros/translate/LanguageManager$e;->$list1:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0, p2}, Lcom/coloros/translate/LanguageManager;->h(Lcom/coloros/translate/LanguageManager;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/coloros/translate/LanguageManager$e;->$isContains:Lkotlin/jvm/internal/z;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/z;->element:Z

    :cond_0
    return-void
.end method
