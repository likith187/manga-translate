.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIEditText;

.field public final synthetic b:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/f;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/f;->b:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/f;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/f;->b:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->F0(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V

    return-void
.end method
