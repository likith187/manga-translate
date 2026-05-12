.class La0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/f;->d(Landroid/content/Context;Ljava/util/List;ILjava/util/concurrent/Executor;La0/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La0/a;


# direct methods
.method constructor <init>(La0/a;)V
    .locals 0

    iput-object p1, p0, La0/f$b;->a:La0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/f$e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, La0/f$e;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, La0/f$e;-><init>(I)V

    :cond_0
    iget-object p0, p0, La0/f$b;->a:La0/a;

    invoke-virtual {p0, p1}, La0/a;->b(La0/f$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La0/f$e;

    invoke-virtual {p0, p1}, La0/f$b;->a(La0/f$e;)V

    return-void
.end method
