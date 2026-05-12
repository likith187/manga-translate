.class public final Le8/i;
.super Le8/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le8/f;Le8/e;)V
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Le8/a;-><init>(Le8/f;Le8/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le8/i;->g()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
