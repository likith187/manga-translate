.class public abstract Landroidx/lifecycle/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/l$a;,
        Landroidx/lifecycle/l$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/c;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/lifecycle/r;)V
.end method

.method public abstract b()Landroidx/lifecycle/l$b;
.end method

.method public final c()Landroidx/lifecycle/c;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/l;->a:Landroidx/lifecycle/c;

    return-object p0
.end method

.method public abstract d(Landroidx/lifecycle/r;)V
.end method
