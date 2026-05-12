.class public final Lcom/coui/appcompat/card/CardPositionPredicate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isFirstColumn:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private final isFirstRow:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private final isLastColumn:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field

.field private final isLastRow:Lw8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/l;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw8/l;Lw8/l;Lw8/l;Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            "Lw8/l;",
            "Lw8/l;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "isFirstRow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isLastRow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isFirstColumn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isLastColumn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstRow:Lw8/l;

    iput-object p2, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastRow:Lw8/l;

    iput-object p3, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstColumn:Lw8/l;

    iput-object p4, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastColumn:Lw8/l;

    return-void
.end method


# virtual methods
.method public final isFirstColumn()Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/l;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstColumn:Lw8/l;

    return-object p0
.end method

.method public final isFirstRow()Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/l;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isFirstRow:Lw8/l;

    return-object p0
.end method

.method public final isLastColumn()Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/l;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastColumn:Lw8/l;

    return-object p0
.end method

.method public final isLastRow()Lw8/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/l;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/card/CardPositionPredicate;->isLastRow:Lw8/l;

    return-object p0
.end method
