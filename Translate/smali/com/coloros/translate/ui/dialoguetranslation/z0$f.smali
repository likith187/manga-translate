.class final Lcom/coloros/translate/ui/dialoguetranslation/z0$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/z0;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln8/q;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;->invoke(Ln8/q;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ln8/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/q;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentTtsItemIndexStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceToFaceTranslateFragment"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z(Lcom/coloros/translate/ui/dialoguetranslation/z0;Z)V

    .line 5
    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->y(Lcom/coloros/translate/ui/dialoguetranslation/z0;)Lcom/coloros/translate/ui/dialoguetranslation/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/c1;->M()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$f;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/z0;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/z0;->z(Lcom/coloros/translate/ui/dialoguetranslation/z0;Z)V

    :cond_1
    return-void
.end method
