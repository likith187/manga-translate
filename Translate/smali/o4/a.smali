.class abstract Lo4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lo4/d;->c(Ljava/lang/Class;)Lu4/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lu4/b;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0, p1}, Lo4/d;->d(Ljava/lang/Class;)Lu4/b;

    move-result-object p0

    invoke-interface {p0}, Lu4/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
