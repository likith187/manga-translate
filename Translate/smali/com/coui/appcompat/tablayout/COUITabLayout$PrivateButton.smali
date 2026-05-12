.class Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateButton"
.end annotation


# instance fields
.field mButtonClicklistener:Landroid/view/View$OnClickListener;

.field mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUITabLayout$PrivateButton;->mButtonClicklistener:Landroid/view/View$OnClickListener;

    return-void
.end method
