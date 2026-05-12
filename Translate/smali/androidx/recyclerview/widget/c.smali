.class public final Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/recyclerview/widget/k$f;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/k$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/recyclerview/widget/c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/recyclerview/widget/c;->c:Landroidx/recyclerview/widget/k$f;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public b()Landroidx/recyclerview/widget/k$f;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->c:Landroidx/recyclerview/widget/k$f;

    return-object p0
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;

    return-object p0
.end method
