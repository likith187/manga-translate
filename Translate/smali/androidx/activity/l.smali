.class public final synthetic Landroidx/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity$g;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/IntentSender$SendIntentException;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/l;->a:Landroidx/activity/ComponentActivity$g;

    iput p2, p0, Landroidx/activity/l;->b:I

    iput-object p3, p0, Landroidx/activity/l;->c:Landroid/content/IntentSender$SendIntentException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/l;->a:Landroidx/activity/ComponentActivity$g;

    iget v1, p0, Landroidx/activity/l;->b:I

    iget-object p0, p0, Landroidx/activity/l;->c:Landroid/content/IntentSender$SendIntentException;

    invoke-static {v0, v1, p0}, Landroidx/activity/ComponentActivity$g;->q(Landroidx/activity/ComponentActivity$g;ILandroid/content/IntentSender$SendIntentException;)V

    return-void
.end method
