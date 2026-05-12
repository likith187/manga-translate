.class public final synthetic Lcom/coui/appcompat/button/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

.field public final synthetic b:Lcom/coui/appcompat/button/COUIButton;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;Lcom/coui/appcompat/button/COUIButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/button/b;->a:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    iput-object p2, p0, Lcom/coui/appcompat/button/b;->b:Lcom/coui/appcompat/button/COUIButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/button/b;->a:Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    iget-object p0, p0, Lcom/coui/appcompat/button/b;->b:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {v0, p0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->a(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;Lcom/coui/appcompat/button/COUIButton;)V

    return-void
.end method
