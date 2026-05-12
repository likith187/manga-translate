.class public abstract Lt9/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt9/y;


# instance fields
.field private final a:Lt9/y;


# direct methods
.method public constructor <init>(Lt9/y;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/h;->a:Lt9/y;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lt9/h;->a:Lt9/y;

    invoke-interface {p0}, Lt9/y;->close()V

    return-void
.end method

.method public f()Lt9/b0;
    .locals 0

    iget-object p0, p0, Lt9/h;->a:Lt9/y;

    invoke-interface {p0}, Lt9/y;->f()Lt9/b0;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lt9/h;->a:Lt9/y;

    invoke-interface {p0}, Lt9/y;->flush()V

    return-void
.end method

.method public p(Lt9/d;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt9/h;->a:Lt9/y;

    invoke-interface {p0, p1, p2, p3}, Lt9/y;->p(Lt9/d;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt9/h;->a:Lt9/y;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
