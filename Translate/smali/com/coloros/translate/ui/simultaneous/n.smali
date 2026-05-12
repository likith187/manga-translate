.class public final synthetic Lcom/coloros/translate/ui/simultaneous/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/n;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    iput-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/n;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/n;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/n;->b:Z

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$c;->a(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Z)V

    return-void
.end method
