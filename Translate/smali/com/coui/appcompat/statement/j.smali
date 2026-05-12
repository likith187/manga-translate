.class public final synthetic Lcom/coui/appcompat/statement/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIUserStatementDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/j;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/j;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method
