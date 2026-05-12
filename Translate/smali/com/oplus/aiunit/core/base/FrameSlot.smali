.class public Lcom/oplus/aiunit/core/base/FrameSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/base/Slot;


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameSlot"


# instance fields
.field private final mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

.field private final mFrameUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/base/AIContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    iput-object p1, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    return-void
.end method


# virtual methods
.method public addFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)I
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public cleanAutoFrameUnit()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    if-nez v0, :cond_0

    const-string p0, "FrameSlot"

    const-string v0, "ai context is null when clean existing frame unit"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/FrameUnit;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->isAutoClean()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    invoke-virtual {v2, v1}, Lcom/oplus/aiunit/core/base/AIContext;->freeFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cleanExistFrameUnit()V
    .locals 3

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    if-nez v0, :cond_0

    const-string p0, "FrameSlot"

    const-string v0, "ai context is null when clean existing frame unit"

    invoke-static {p0, v0}, Lcom/oplus/aiunit/core/utils/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/FrameUnit;

    iget-object v2, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    invoke-virtual {v2, v1}, Lcom/oplus/aiunit/core/base/AIContext;->freeFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public findFragmentChildList(Lcom/oplus/aiunit/core/FrameUnit;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/aiunit/core/FrameUnit;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "FrameSlot"

    const-string p1, "find fragment parent unit failed. unit is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->isFragment()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public findFragmentParent(Lcom/oplus/aiunit/core/FrameUnit;)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "FrameSlot"

    const-string p1, "find fragment parent unit failed. unit is null."

    invoke-static {p0, p1}, Lcom/oplus/aiunit/core/utils/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->isFragmentParent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/aiunit/core/FrameUnit;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public findFrameUnitByTag(Ljava/lang/String;)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 2

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAIContext()Lcom/oplus/aiunit/core/base/AIContext;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    return-object p0
.end method

.method public getFrameListSize()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getFrameUnit(I)Lcom/oplus/aiunit/core/FrameUnit;
    .locals 1

    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/FrameUnit;

    return-object p0
.end method

.method public removeFrameUnit(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/core/FrameUnit;

    invoke-virtual {v2}, Lcom/oplus/aiunit/core/FrameUnit;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mAIContext:Lcom/oplus/aiunit/core/base/AIContext;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/oplus/aiunit/core/base/AIContext;->freeFrameUnit(Lcom/oplus/aiunit/core/FrameUnit;)V

    :cond_3
    iget-object p0, p0, Lcom/oplus/aiunit/core/base/FrameSlot;->mFrameUnitList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
