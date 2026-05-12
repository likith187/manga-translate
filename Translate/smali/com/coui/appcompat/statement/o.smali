.class public final synthetic Lcom/coui/appcompat/statement/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

.field public final synthetic b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic f:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/o;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

    iput-object p2, p0, Lcom/coui/appcompat/statement/o;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iput-object p3, p0, Lcom/coui/appcompat/statement/o;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/coui/appcompat/statement/o;->f:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/statement/o;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

    iget-object v1, p0, Lcom/coui/appcompat/statement/o;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object v2, p0, Lcom/coui/appcompat/statement/o;->c:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/statement/o;->f:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->q(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
