.class public final synthetic Lcom/coui/appcompat/statement/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

.field public final synthetic b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic f:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/p;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

    iput-object p2, p0, Lcom/coui/appcompat/statement/p;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iput-object p3, p0, Lcom/coui/appcompat/statement/p;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/coui/appcompat/statement/p;->f:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/statement/p;->a:Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;

    iget-object v2, v0, Lcom/coui/appcompat/statement/p;->b:Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    iget-object v3, v0, Lcom/coui/appcompat/statement/p;->c:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/coui/appcompat/statement/p;->f:Ljava/lang/CharSequence;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v0 .. v12}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->s(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;IIIIIIII)V

    return-void
.end method
