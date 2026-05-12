.class public final synthetic Lcom/coui/appcompat/statement/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

.field public final synthetic b:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/s;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

    iput-object p2, p0, Lcom/coui/appcompat/statement/s;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/s;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

    iget-object p0, p0, Lcom/coui/appcompat/statement/s;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;

    invoke-static {v0, p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->a(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;Landroid/view/View;)V

    return-void
.end method
