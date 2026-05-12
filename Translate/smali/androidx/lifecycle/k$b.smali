.class public final Landroidx/lifecycle/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/k;->c(Lq0/e;Landroidx/lifecycle/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/l;

.field final synthetic b:Lq0/e;


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Lq0/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/k$b;->a:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/k$b;->b:Lq0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/k$b;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    iget-object p0, p0, Landroidx/lifecycle/k$b;->b:Lq0/e;

    const-class p1, Landroidx/lifecycle/k$a;

    invoke-virtual {p0, p1}, Lq0/e;->d(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
