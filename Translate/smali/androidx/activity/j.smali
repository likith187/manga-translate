.class public final synthetic Landroidx/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity$f;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/j;->a:Landroidx/activity/ComponentActivity$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/j;->a:Landroidx/activity/ComponentActivity$f;

    invoke-static {p0}, Landroidx/activity/ComponentActivity$f;->a(Landroidx/activity/ComponentActivity$f;)V

    return-void
.end method
