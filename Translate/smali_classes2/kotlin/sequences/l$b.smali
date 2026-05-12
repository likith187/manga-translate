.class final Lkotlin/sequences/l$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/l;->e(Lw8/a;)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $nextFunction:Lw8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/sequences/l$b;->$nextFunction:Lw8/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/sequences/l$b;->$nextFunction:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
