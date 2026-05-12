.class public final Lcom/oplus/vfxsdk/common/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/a;->y(Ljava/lang/String;ZLw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/oplus/vfxsdk/common/a;

.field final synthetic c:Lw8/a;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/oplus/vfxsdk/common/a;Lw8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a$f;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/a$f;->b:Lcom/oplus/vfxsdk/common/a;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/a$f;->c:Lw8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 11

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a$f;->a:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/oplus/vfxsdk/common/a$f;->b:Lcom/oplus/vfxsdk/common/a;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :cond_0
    move v10, v9

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/oplus/vfxsdk/common/a$b;

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->getDuration()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/oplus/vfxsdk/common/a$b;->d()Lcom/oplus/vfxsdk/common/UniformValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->getDelay()I

    move-result v1

    int-to-float v6, v1

    move-object v1, v8

    move-wide v2, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/vfxsdk/common/a;->a(Lcom/oplus/vfxsdk/common/a;JJFLcom/oplus/vfxsdk/common/a$b;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v10, :cond_0

    :cond_1
    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_2
    if-nez v10, :cond_3

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/a$f;->b:Lcom/oplus/vfxsdk/common/a;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/a;->i()Lcom/oplus/vfxsdk/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/d;->g()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$f;->c:Lw8/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln8/h0;

    :cond_3
    return-void
.end method
