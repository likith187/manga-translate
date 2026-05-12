.class public final Lcom/coui/appcompat/opensource/DiffCallback;
.super Landroidx/recyclerview/widget/k$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k$f;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/k$f;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/coui/appcompat/opensource/StatementSegment;Lcom/coui/appcompat/opensource/StatementSegment;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/opensource/StatementSegment;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/coui/appcompat/opensource/StatementSegment;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/opensource/StatementSegment;

    check-cast p2, Lcom/coui/appcompat/opensource/StatementSegment;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/opensource/DiffCallback;->areContentsTheSame(Lcom/coui/appcompat/opensource/StatementSegment;Lcom/coui/appcompat/opensource/StatementSegment;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/coui/appcompat/opensource/StatementSegment;Lcom/coui/appcompat/opensource/StatementSegment;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/opensource/StatementSegment;

    check-cast p2, Lcom/coui/appcompat/opensource/StatementSegment;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/opensource/DiffCallback;->areItemsTheSame(Lcom/coui/appcompat/opensource/StatementSegment;Lcom/coui/appcompat/opensource/StatementSegment;)Z

    move-result p0

    return p0
.end method
