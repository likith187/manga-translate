.class public final synthetic Landroidx/activity/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;

.field public final synthetic b:Landroidx/activity/v;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/n;->a:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Landroidx/activity/n;->b:Landroidx/activity/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/n;->a:Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Landroidx/activity/n;->b:Landroidx/activity/v;

    invoke-static {v0, p0}, Landroidx/activity/ComponentActivity$j;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/v;)V

    return-void
.end method
