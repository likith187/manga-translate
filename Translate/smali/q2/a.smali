.class public final synthetic Lq2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

.field public final synthetic c:Lcom/coui/appcompat/poplist/COUIPopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lq2/a;->b:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

    iput-object p3, p0, Lq2/a;->c:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lq2/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lq2/a;->b:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

    iget-object p0, p0, Lq2/a;->c:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    invoke-static {v0, v1, p0, p1}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->h(Landroid/widget/TextView;Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Lcom/coui/appcompat/poplist/COUIPopupWindow;Landroid/view/View;)V

    return-void
.end method
