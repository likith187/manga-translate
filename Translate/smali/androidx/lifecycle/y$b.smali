.class Landroidx/lifecycle/y$b;
.super Landroidx/lifecycle/y$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic h:Landroidx/lifecycle/y;


# direct methods
.method constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/y$b;->h:Landroidx/lifecycle/y;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/y$d;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/b0;)V

    return-void
.end method


# virtual methods
.method d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
