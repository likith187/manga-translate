.class public interface abstract Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dismissWindow()V
.end method

.method public abstract getContentView()Landroid/widget/TextView;
.end method

.method public abstract getDefStyleParams()[I
.end method

.method public getDismissIv()Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract getMaxWidth()I
.end method

.method public abstract getRealWidth(ILandroid/view/ViewGroup;)I
.end method

.method public hideDismissView()V
    .locals 0

    return-void
.end method

.method public abstract initBubbleStyle(Landroid/view/ViewGroup;)V
.end method

.method public abstract refreshBubbleStyle(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setContentText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentTextColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setToolTipsAction(Lcom/coui/appcompat/tooltips/IToolTipsAction;Landroid/content/Context;I)V
.end method

.method public abstract sizeBubbleStyle(Landroid/view/ViewGroup;I)V
.end method
