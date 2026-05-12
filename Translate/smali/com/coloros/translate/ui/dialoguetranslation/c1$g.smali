.class final Lcom/coloros/translate/ui/dialoguetranslation/c1$g;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/c1;->l0(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isBottomButtonClick:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;->$isBottomButtonClick:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iget-boolean v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/c1$g;->$isBottomButtonClick:Z

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->m0(Lcom/coloros/translate/ui/dialoguetranslation/c1;ZZZILjava/lang/Object;)V

    return-void
.end method
