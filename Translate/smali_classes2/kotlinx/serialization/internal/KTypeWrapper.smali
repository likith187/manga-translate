.class final Lkotlinx/serialization/internal/KTypeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9/j;


# instance fields
.field private final origin:Lc9/j;


# direct methods
.method public constructor <init>(Lc9/j;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    instance-of v2, p1, Lkotlinx/serialization/internal/KTypeWrapper;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/internal/KTypeWrapper;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v2, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/KTypeWrapper;->getClassifier()Lc9/e;

    move-result-object p0

    instance-of v1, p0, Lc9/c;

    if-eqz v1, :cond_7

    instance-of v1, p1, Lc9/j;

    if-eqz v1, :cond_4

    check-cast p1, Lc9/j;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lc9/j;->getClassifier()Lc9/e;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_7

    instance-of p1, v3, Lc9/c;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    check-cast p0, Lc9/c;

    invoke-static {p0}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p0

    check-cast v3, Lc9/c;

    invoke-static {v3}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_3
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-interface {p0}, Lc9/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getArguments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc9/k;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-interface {p0}, Lc9/j;->getArguments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClassifier()Lc9/e;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-interface {p0}, Lc9/j;->getClassifier()Lc9/e;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isMarkedNullable()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-interface {p0}, Lc9/j;->isMarkedNullable()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KTypeWrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/internal/KTypeWrapper;->origin:Lc9/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
