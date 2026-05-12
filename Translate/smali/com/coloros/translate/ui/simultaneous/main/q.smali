.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

.field public final synthetic b:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/q;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/q;->b:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/q;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/q;->b:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->o(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;Landroid/view/View;)V

    return-void
.end method
