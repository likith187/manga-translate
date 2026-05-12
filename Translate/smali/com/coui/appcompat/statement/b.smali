.class public final synthetic Lcom/coui/appcompat/statement/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/statement/b;->a:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/b;->a:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->j(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Lcom/coui/appcompat/checkbox/COUICheckBox;I)V

    return-void
.end method
