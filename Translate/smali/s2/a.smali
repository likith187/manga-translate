.class public final synthetic Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/component/responsiveui/ResponsiveUIFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/a;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls2/a;->a:Lcom/coui/component/responsiveui/ResponsiveUIFeature;

    check-cast p1, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-static {p0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIFeature;->a(Lcom/coui/component/responsiveui/ResponsiveUIFeature;Lcom/coui/component/responsiveui/status/WindowFeature;)V

    return-void
.end method
