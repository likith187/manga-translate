.class public final Lkotlin/text/n$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/n;->getOptions()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/text/n$e;->$value:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Enum;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/text/p;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    iget p0, p0, Lkotlin/text/n$e;->$value:I

    check-cast p1, Lkotlin/text/f;

    invoke-interface {p1}, Lkotlin/text/f;->getMask()I

    move-result v0

    and-int/2addr p0, v0

    invoke-interface {p1}, Lkotlin/text/f;->getValue()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/text/n$e;->invoke(Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
