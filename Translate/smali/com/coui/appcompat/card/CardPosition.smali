.class public final Lcom/coui/appcompat/card/CardPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isFirstColumn:Z

.field private final isFirstRow:Z

.field private final isLastColumn:Z

.field private final isLastRow:Z


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/card/CardPositionPredicate;I)V
    .locals 2

    const-string v0, "cardPositionPredicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstRow()Lw8/l;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/card/CardPosition;->isFirstRow:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastRow()Lw8/l;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/card/CardPosition;->isLastRow:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstColumn()Lw8/l;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/card/CardPosition;->isFirstColumn:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastColumn()Lw8/l;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/card/CardPosition;->isLastColumn:Z

    return-void
.end method


# virtual methods
.method public final isFirstColumn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/CardPosition;->isFirstColumn:Z

    return p0
.end method

.method public final isFirstRow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/CardPosition;->isFirstRow:Z

    return p0
.end method

.method public final isLastColumn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/CardPosition;->isLastColumn:Z

    return p0
.end method

.method public final isLastRow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/card/CardPosition;->isLastRow:Z

    return p0
.end method
