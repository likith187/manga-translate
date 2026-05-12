.class final Lkotlin/text/b0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/b0;->j0(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $delimitersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/text/b0$b;->$delimitersList:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/text/b0$b;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlin/text/b0$b;->invoke(Ljava/lang/CharSequence;I)Ln8/q;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Ln8/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ln8/q;"
        }
    .end annotation

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/text/b0$b;->$delimitersList:Ljava/util/List;

    iget-boolean p0, p0, Lkotlin/text/b0$b;->$ignoreCase:Z

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, p0, v1}, Lkotlin/text/b0;->G(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Ln8/q;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
