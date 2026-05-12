.class public final synthetic Lcom/coloros/translate/ui/simultaneous/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/b0;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/j;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/j;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->f1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;J)V

    return-void
.end method
