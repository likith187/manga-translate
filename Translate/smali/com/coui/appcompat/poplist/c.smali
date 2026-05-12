.class public final synthetic Lcom/coui/appcompat/poplist/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/c;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/c;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-static {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/view/View;)V

    return-void
.end method
