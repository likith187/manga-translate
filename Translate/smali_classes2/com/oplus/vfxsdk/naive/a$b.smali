.class public final Lcom/oplus/vfxsdk/naive/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/a;-><init>(Landroid/content/Context;Li8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/a;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->a()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->b()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {v0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/a;

    invoke-interface {v1}, Lh8/a;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {v0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->e(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->d()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRenderQuit()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->onRenderQuit()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->onRenderQuit()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRenderStart()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->onRenderStart()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->onRenderStart()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->j()Lh8/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lh8/a;->onStart()V

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$b;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-static {p0}, Lcom/oplus/vfxsdk/naive/a;->d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    invoke-interface {v0}, Lh8/a;->onStart()V

    goto :goto_0

    :cond_1
    return-void
.end method
