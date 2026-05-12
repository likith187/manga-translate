.class final Lkotlin/text/b0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/b0;->v0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_splitToSequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/b0$c;->$this_splitToSequence:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb9/c;

    invoke-virtual {p0, p1}, Lkotlin/text/b0$c;->invoke(Lb9/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lb9/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lkotlin/text/b0$c;->$this_splitToSequence:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lkotlin/text/b0;->B0(Ljava/lang/CharSequence;Lb9/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
