.class final Lcom/coloros/translate/base/BasePrivateActivity$e;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/base/BasePrivateActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/base/BasePrivateActivity$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/base/BasePrivateActivity$e;

    invoke-direct {v0}, Lcom/coloros/translate/base/BasePrivateActivity$e;-><init>()V

    sput-object v0, Lcom/coloros/translate/base/BasePrivateActivity$e;->INSTANCE:Lcom/coloros/translate/base/BasePrivateActivity$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;
    .locals 0

    .line 1
    new-instance p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/base/BasePrivateActivity$e;->invoke()Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;

    move-result-object p0

    return-object p0
.end method
