.class public final Lq0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/e$a;,
        Lq0/e$b;
    }
.end annotation


# instance fields
.field private final a:Lr0/b;

.field private b:Lq0/a$b;


# direct methods
.method public constructor <init>(Lr0/b;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/e;->a:Lr0/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq0/e;->a:Lr0/b;

    invoke-virtual {p0, p1}, Lr0/b;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lq0/e$b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq0/e;->a:Lr0/b;

    invoke-virtual {p0, p1}, Lr0/b;->d(Ljava/lang/String;)Lq0/e$b;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lq0/e$b;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq0/e;->a:Lr0/b;

    invoke-virtual {p0, p1, p2}, Lr0/b;->j(Ljava/lang/String;Lq0/e$b;)V

    return-void
.end method

.method public final d(Ljava/lang/Class;)V
    .locals 3

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq0/e;->a:Lr0/b;

    invoke-virtual {v0}, Lr0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq0/e;->b:Lq0/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lq0/a$b;

    invoke-direct {v0, p0}, Lq0/a$b;-><init>(Lq0/e;)V

    :cond_0
    iput-object v0, p0, Lq0/e;->b:Lq0/a$b;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lq0/e;->b:Lq0/a$b;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lq0/a$b;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
