.class public final synthetic Landroidx/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/f;->a:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/f;->a:Landroidx/activity/ComponentActivity;

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity;->G(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method
