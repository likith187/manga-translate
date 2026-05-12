.class Landroidx/recyclerview/widget/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/l;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/l$a;->a:Landroidx/recyclerview/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/l$a;->a:Landroidx/recyclerview/widget/l;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/l;->k(I)V

    return-void
.end method
