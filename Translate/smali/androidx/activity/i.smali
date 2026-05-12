.class public final synthetic Landroidx/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Landroidx/activity/v;

.field public final synthetic b:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/v;Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/i;->a:Landroidx/activity/v;

    iput-object p2, p0, Landroidx/activity/i;->b:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/i;->a:Landroidx/activity/v;

    iget-object p0, p0, Landroidx/activity/i;->b:Landroidx/activity/ComponentActivity;

    invoke-static {v0, p0, p1, p2}, Landroidx/activity/ComponentActivity;->C(Landroidx/activity/v;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method
