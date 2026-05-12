.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lw8/l;

.field public final synthetic b:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public synthetic constructor <init>(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/d;->a:Lw8/l;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/d;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/d;->a:Lw8/l;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/d;->b:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->H0(Lw8/l;Lcom/coui/appcompat/edittext/COUIEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
