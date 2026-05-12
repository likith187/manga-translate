.class public Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    }
.end annotation


# instance fields
.field protected m_name:Ljava/lang/String;

.field protected m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    .line 3
    invoke-static {p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->fromOrdinal(I)Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    .line 4
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_name:Ljava/lang/String;

    return-void
.end method

.method public static fromOrdinal(I)Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    .locals 2

    invoke-static {}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->values()[Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;->NONE:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->m_type:Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event$a;

    return-void
.end method
