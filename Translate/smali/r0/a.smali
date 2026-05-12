.class public final synthetic Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Lr0/b;


# direct methods
.method public synthetic constructor <init>(Lr0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a;->a:Lr0/b;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    iget-object p0, p0, Lr0/a;->a:Lr0/b;

    invoke-static {p0, p1, p2}, Lr0/b;->a(Lr0/b;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method
