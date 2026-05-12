.class public final Landroidx/activity/result/d$f;
.super Landroidx/activity/result/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/d;->m(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/activity/result/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ld/a;


# direct methods
.method constructor <init>(Landroidx/activity/result/d;Ljava/lang/String;Ld/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    iput-object p2, p0, Landroidx/activity/result/d$f;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/d$f;->c:Ld/a;

    invoke-direct {p0}, Landroidx/activity/result/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Landroidx/core/app/b;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    invoke-static {v0}, Landroidx/activity/result/d;->b(Landroidx/activity/result/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/result/d$f;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/result/d$f;->c:Ld/a;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    invoke-static {v1}, Landroidx/activity/result/d;->c(Landroidx/activity/result/d;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/activity/result/d$f;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v1, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    iget-object v2, p0, Landroidx/activity/result/d$f;->c:Ld/a;

    invoke-virtual {v1, v0, v2, p1, p2}, Landroidx/activity/result/d;->i(ILd/a;Ljava/lang/Object;Landroidx/core/app/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    invoke-static {p2}, Landroidx/activity/result/d;->c(Landroidx/activity/result/d;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Landroidx/activity/result/d$f;->b:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and input "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/d$f;->a:Landroidx/activity/result/d;

    iget-object p0, p0, Landroidx/activity/result/d$f;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/activity/result/d;->p(Ljava/lang/String;)V

    return-void
.end method
