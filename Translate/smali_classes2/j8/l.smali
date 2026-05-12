.class public final synthetic Lj8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lj8/u;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lj8/n0$a;


# direct methods
.method public synthetic constructor <init>(Lj8/u;Landroid/content/Context;Lj8/n0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/l;->a:Lj8/u;

    iput-object p2, p0, Lj8/l;->b:Landroid/content/Context;

    iput-object p3, p0, Lj8/l;->c:Lj8/n0$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj8/l;->a:Lj8/u;

    iget-object v1, p0, Lj8/l;->b:Landroid/content/Context;

    iget-object p0, p0, Lj8/l;->c:Lj8/n0$a;

    check-cast p1, Lj8/m0;

    invoke-static {v0, v1, p0, p1}, Lj8/u;->l(Lj8/u;Landroid/content/Context;Lj8/n0$a;Lj8/m0;)V

    return-void
.end method
