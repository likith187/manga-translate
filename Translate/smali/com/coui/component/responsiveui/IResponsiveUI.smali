.class public interface abstract Lcom/coui/component/responsiveui/IResponsiveUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/component/responsiveui/layoutgrid/ILayoutGrid;
.implements Lcom/coui/component/responsiveui/status/IWindowStatus;


# virtual methods
.method public abstract onConfigurationChanged(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
.end method

.method public abstract rebuild(Landroid/content/Context;Lcom/coui/component/responsiveui/window/LayoutGridWindowSize;)V
.end method

.method public abstract showLayoutGridInfo()Ljava/lang/String;
.end method

.method public abstract showWindowStatusInfo()Ljava/lang/String;
.end method
