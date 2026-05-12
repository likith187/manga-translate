.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/toolbar/COUIActionMenuView$OverflowMenuListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/d0;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    return-void
.end method


# virtual methods
.method public final onOverflowMenuPreShow(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/d0;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->e(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    return-void
.end method
