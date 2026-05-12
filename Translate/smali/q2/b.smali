.class public final synthetic Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/b;->a:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

    iput-object p2, p0, Lq2/b;->b:Landroid/graphics/Rect;

    iput-object p3, p0, Lq2/b;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lq2/b;->a:Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;

    iget-object v1, p0, Lq2/b;->b:Landroid/graphics/Rect;

    iget-object p0, p0, Lq2/b;->c:Landroid/widget/TextView;

    invoke-static {v0, v1, p0, p1}, Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;->i(Lcom/coui/appcompat/aboutpage/COUIAppInfoPreference;Landroid/graphics/Rect;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
