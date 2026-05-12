.class public final synthetic Landroidx/activity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity$g;

.field public final synthetic b:I

.field public final synthetic c:Ld/a$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/k;->a:Landroidx/activity/ComponentActivity$g;

    iput p2, p0, Landroidx/activity/k;->b:I

    iput-object p3, p0, Landroidx/activity/k;->c:Ld/a$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/k;->a:Landroidx/activity/ComponentActivity$g;

    iget v1, p0, Landroidx/activity/k;->b:I

    iget-object p0, p0, Landroidx/activity/k;->c:Ld/a$a;

    invoke-static {v0, v1, p0}, Landroidx/activity/ComponentActivity$g;->r(Landroidx/activity/ComponentActivity$g;ILd/a$a;)V

    return-void
.end method
