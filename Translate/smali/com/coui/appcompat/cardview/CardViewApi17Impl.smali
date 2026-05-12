.class Lcom/coui/appcompat/cardview/CardViewApi17Impl;
.super Lcom/coui/appcompat/cardview/CardViewBaseImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/cardview/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/cardview/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardview/CardViewApi17Impl$1;-><init>(Lcom/coui/appcompat/cardview/CardViewApi17Impl;)V

    invoke-static {v0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->setRoundRectHelper(Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;)V

    return-void
.end method
